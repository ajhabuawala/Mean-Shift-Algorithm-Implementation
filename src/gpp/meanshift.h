/**
@file   meanshift.h
@brief  This file contains the declarations for the MeanShift class
*/

#ifndef MEANSHIFT_H
#define MEANSHIFT_H

/********************************** INCLUDES ***********************************/
#include <iostream>
#include <math.h>
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

/********************************** CONSTANTS ***********************************/
#define PI 3.1415926

//Factor for dividing the portion of the frame covered by the tracking rectangle, to be processed separately on the DSP and ARM
#define F 9

//Global factor for for conversion of floating-point representation to Q-point format
#define GQ 12   

//Indices in the data buffer corresponding to the appropriate elements of the image data, to be sent to the DSP
#define I_rect 0
#define I_weight 3*58*86/F
#define I_model 4*58*86/F
#define I_candi 4*58*86/F+48


/** 
@brief   Meanshift class is responsible for implementing the mean shift algorithm.
	 It internally calls the NEON functions and also sends data to be processed
	 to the DSP through the pool_notify module.
*/  
class MeanShift
{
 

/********************************** DATA MEMBERS ***********************************/
private:

/**
* @brief Floating-point variable to store the extent of each portion the pixel representation tange is divided into
*/ 
    float bin_width;


/**
* @brief Matrix to store the probability distribution for each pixel in the portion
	 of the frame covered by the tracking rectangle, to be used to calculate the 
	 weight distribution for deciding the position of the tracking rectangle
	 in the next frame of the video.
*/
    cv::Mat target_model;


/**
* @brief Rectangle whose position is constantly updated based on the movement of object
	 of interest.
*/
    cv::Rect target_Region;


/**
* @brief Floating-point variable for normalizing members of the pdf model
*/
    float normalized_C;


/**
* @brief Matrix to store the Epanechnikov kernel
*/
    cv::Mat m_kernel;


/**
* @brief Buffer to store data communicated with the DSP
*/
    int *mean_DataBuf;


/**
* @brief Variable to store the centre of the portion of the frame covered by
	 the tracking rectangle
*/
    int centre;


/**
* @brief Variable to store the centre of the portion of the frame covered by
	 the tracking rectangle - to be used in the tracking algorithm
*/
    float bin_width_inv;


/** 
* @brief Member structure to store the configuration data for the algorithm
*/
    struct config{
        int num_bins;
        int piexl_range;
        int MaxIter;
    }cfg;


/********************************** MEMBER FUNCTIONS ***********************************/
public:


/**
* @brief        Parameterized constructor for the MeanShift class
* @param[in]    Pointer to the data buffer to be communicated with the DSP
* @return       
*/
    MeanShift(int *DataBuf);



/**
* @brief        Function for extracting data to be used by the algorithm from the first frame of the video
* @param[in]    frame - the frame as a matrix
* @param[in]    rect - Open CV rectangle object
* @return         
*/
    void Init_target_frame(const cv::Mat &frame,const cv::Rect &rect);

/**
* @brief        Function to return sum of elements of the Epanechnikov to be used for normalized for PDF representation
* @return       
*/
    float Epanechnikov_kernel();


/** 
* @brief        Function for PDF representation for the pixels of the portion of the frame covered by the rectangle
* @param[in]    frame - the frame as a matrix
* @param[in]    rect - Open CV rectangle object to be used to select object of interest in the next frame
* @return       Matrix with probablility distributions for weight calculation 
*/
    cv::Mat pdf_representation(const cv::Mat &frame,const cv::Rect &rect);


/** 
* @brief        Function for weight calculation for the kernel using probability distribution
* @param[in]    frame - the frame as a matrix
* @param[in]    target_model - matrix to help construct tracking rectangle in the next frame
* @return       target_candidate - matrix returned by the pdf-representation function
*/
    cv::Mat CalWeight(const cv::Mat &frame, cv::Mat &target_model, cv::Mat &target_candidate, cv::Rect &rec);


/** 
* @brief        Function for caculating the position of the tracking rectangle to be written on the corresponding output 
*		frame
* @param[in]    next_frame - the next input video frame
* @return       Rectangle object to be printed on the corresponding output frame
*/
    cv::Rect track(const cv::Mat &next_frame);
};

#endif // MEANSHIFT_H
