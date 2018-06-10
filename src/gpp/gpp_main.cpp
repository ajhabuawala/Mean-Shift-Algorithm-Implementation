/**
@file   gpp_main.cpp
@brief  This file contains the main function which serves as the entry point of the mean shift tracking application.
	It is here that the memory pool for sending data to the DSP is allocated and deleted while exiting.
	The main function calls the functions of the MeanShift class as well.
*/




/*  ----------------------------------- OS Specific Headers           */
#include <stdio.h>
#include <stdlib.h>
#include "meanshift.h"
#include "Timer.h"
#include <iostream>

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>

/*  ----------------------------------- Application Header            */
#include <pool_notify.h>
/** ============================================================================
 *  @func   main
 *
 *  @desc   Entry point for the application
 *
 *  @modif  None
 *  ============================================================================
 */
int * DataBuf = NULL ;

int main (int argc, char ** argv)
{
    	Char8 * dspExecutable    = NULL ;
    	Char8 * strBufferSize = "20096";
    	DSP_STATUS status        = DSP_SOK ;

    	if (argc != 3) 
	{
        	std::cout <<"Usage:  ./pool_notify <dsp executable> <video file>" << std::endl;
		return -1;
    	}
    	else
	{
        	dspExecutable    = argv [1] ;

        	pool_notify_Main (dspExecutable,
                          	  strBufferSize) ;

        	status = pool_notify_Create (dspExecutable,
                                     	     strBufferSize,
                                     	     0, & DataBuf) ;
        //=================================================================================
        
        	Timer totalTimer("Total Time"); 
        	Timer timerTrack("Total Time");

        	cv::VideoCapture frame_capture;
		
		//Store captured input video locally
        	frame_capture = cv::VideoCapture( argv [2] );
      
        	// hardcoding object selection rectangle properties instead of selection of object of interest using mouse
        	cv::Rect rect(228,367,86,58);
        	cv::Mat frame;
        	frame_capture.read(frame);
        
        	MeanShift ms(DataBuf); // creat meanshift obj
        	ms.Init_target_frame(frame,rect); // init the meanshift
    
        	int codec = CV_FOURCC('F', 'L', 'V', '1');
        	cv::VideoWriter writer("tracking_result.avi", codec, 20, cv::Size(frame.cols,frame.rows));
    
        	totalTimer.Start();
        	// #ifndef ARMCC
        	// MCPROF_START();
        	// #endif
       	 	int TotalFrames = 32;
        	int fcount;
        	float trackTimes[32] = {0.0};
        	int trackTimeIndex = 0;


        	for(fcount=0; fcount<TotalFrames; ++fcount)
        	{
            		// Read a frame
            		int status = frame_capture.read(frame);
            		if( 0 == status ) break;
    
            		// track object

            		#ifndef ARMCC
            		// MCPROF_START();
            		#endif
            
            		timerTrack.Restart();
            		cv::Rect ms_rect =  ms.track(frame);
            		timerTrack.Pause();
            		trackTimes[trackTimeIndex++] = timerTrack.GetTime();
            		timerTrack.Stop();

            		#ifndef ARMCC
            		// MCPROF_STOP();
            		#endif
            
            		// Mark the tracked object in frame
            		cv::rectangle(frame,ms_rect,cv::Scalar(0,0,255),3);
    
            		// Write the frame
            		writer << frame;
        	}
    		// #ifndef ARMCC
    		// MCPROF_STOP();
    		// #endif
       		totalTimer.Pause();

       		std::cout << "Processed " << fcount << " frames" << std::endl;
       		std::cout << "Time: " << totalTimer.GetTime()*1000 <<" ms\nFPS : " << fcount/totalTimer.GetTime() << std::endl;
       		std::cout<<"\n Track function took:";

       		//Printing time taken by the track function
       		float sum = 0.0;
       		for (int i= 0; i < trackTimeIndex; i++)
       		{
           		sum  += trackTimes[i];
       		}
       		std::cout<<(sum*1000)/fcount<<" ms on an average per frame\n\n";

        	if (DSP_SUCCEEDED (status)) 
        	{
            		printf("++++++++++++++++++++++++\n");
            		status = pool_notify_Execute (0, 0, 8) ;
        	}

        	//Deleting resources allocated for communication with DSP
         	pool_notify_Delete (0) ;
    	}
    	return 0 ;
}
