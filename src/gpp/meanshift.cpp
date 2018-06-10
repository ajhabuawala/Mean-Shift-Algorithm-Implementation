/**
@file   meanshift.cpp
@brief  This file contains the implementation for the MeanShift class
*/


/*
 * Based on paper "Kernel-Based Object Tracking"
 * you can find all the formula in the paper
*/


/********************************** INCLUDES ***********************************/
#include"meanshift.h"
#include"arm_neon.h"
#include <pool_notify.h>
#include "stdio.h"


/********************************** CONSTANTS ***********************************/
#define SCALING_FACTOR 1000


/********************************** IMPLEMENTATION ***********************************/

MeanShift::MeanShift(int *DataBuf)
{
	cfg.MaxIter = 8;
    	cfg.num_bins = 16;
    	cfg.piexl_range = 256;
   	bin_width = cfg.piexl_range / cfg.num_bins;

    	//Early calculation of the inverse of bin width - changing division to multiplication
    	bin_width_inv = static_cast<float>(1/bin_width);
    	normalized_C = 1.0;
    	centre = 0;
    	mean_DataBuf = DataBuf;
}

void  MeanShift::Init_target_frame(const cv::Mat &frame,const cv::Rect &rect)
{
	target_Region = rect;
    	cv::Mat kernel(rect.height,rect.width,CV_32F,cv::Scalar(0));
    	m_kernel = kernel;

    	//calculate once during initialization - to be used repeatedly in pdf_representation function
    	normalized_C = 1.0 / Epanechnikov_kernel();
    	target_model = pdf_representation(frame,target_Region);

	// Conversion to fixed point arithmetic - using a scaling factor of 10
	centre = (target_Region.height-1)*5;	
}

float  MeanShift::Epanechnikov_kernel()
{
	int h = m_kernel.rows;
    	int w = m_kernel.cols;
	float epanechnikov_cd = 0.1*PI*h*w;
    	float kernel_sum = 0.0;
    	for(int i=0;i<h;i++)
    	{
        	for(int j=0;j<w;j++)
        	{
	    		float x = static_cast<float>(i - (h>>1));	// (h/2) through shift operation
	    		float  y = static_cast<float> (j - (w>>1));	// (w/2) through shift operation

       	    		//Attempting to optimize
	    		float norm_x1 = x*x/((h*h)>>2);
	    		float norm_x2 = y*y/((w*w)>>2);
	    		float norm_x = norm_x1 + norm_x2;

			float result = norm_x<1?(epanechnikov_cd*(1.0-norm_x)):0;
            		m_kernel.at<float>(i,j) = result;
            		kernel_sum += result;
        	}
    	}
    return kernel_sum;
}

cv::Mat MeanShift::pdf_representation(const cv::Mat &frame, const cv::Rect &rect)
{

	cv::Mat pdf_model(8,16,CV_32F,cv::Scalar(1e-10));
    	cv::Vec3f curr_pixel_value;
    	cv::Vec3f bin_value;

    	int row_index = rect.y;
    	int clo_index = rect.x;

    	for(int i=0;i<rect.height;i++)
    	{
        	clo_index = rect.x;
        	for(int j=0;j<rect.width;j++)
        	{

	     		float bin_val[2];
	    		const float32_t bin_value[4] = {(frame.at<cv::Vec3b>(row_index,clo_index))[0],
            				        	(frame.at<cv::Vec3b>(row_index,clo_index))[1],
            				         	(frame.at<cv::Vec3b>(row_index,clo_index++))[2],
            				        	(frame.at<cv::Vec3b>(row_index,clo_index))[0]
					       	       };
	    		float32x4_t data = vld1q_f32(bin_value);
            		float32x4_t Result = vmulq_n_f32(data , bin_width_inv);
	    		bin_val[0] = (frame.at<cv::Vec3b>(row_index,clo_index)[1]*bin_width_inv);
            		bin_val[1] = (frame.at<cv::Vec3b>(row_index,clo_index)[2]*bin_width_inv);
	    		const float32_t pdf_model_vec[4] = {m_kernel.at<float>(i,j), 
					            	    m_kernel.at<float>(i,j), 
			                            	    m_kernel.at<float>(i,j++),
			                            	    m_kernel.at<float>(i,j)
						   	   };
				
	    		float temp = m_kernel.at<float>(i,j++) * normalized_C;
	    		float temp2 = m_kernel.at<float>(i,j) * normalized_C;
            		float32x4_t data1 = vld1q_f32(pdf_model_vec);			
	    		float32x4_t Result2 = vmulq_n_f32(data1,normalized_C);
	    		pdf_model.at<float>(0,vgetq_lane_f32(Result,0)) += vgetq_lane_f32(Result2,0);
            		pdf_model.at<float>(1,vgetq_lane_f32(Result,1)) += vgetq_lane_f32(Result2,1);
            		pdf_model.at<float>(2,vgetq_lane_f32(Result,2)) += vgetq_lane_f32(Result2,2);
            		pdf_model.at<float>(0,vgetq_lane_f32(Result,3)) += vgetq_lane_f32(Result2,3);
            		pdf_model.at<float>(1,bin_val[0]) += temp;
            		pdf_model.at<float>(2,bin_val[1]) += temp2;
            		clo_index++;
        	}
        	row_index++;
    }

    return pdf_model;

}

cv::Mat MeanShift::CalWeight(const cv::Mat &frame, cv::Mat &target_model, 
                    cv::Mat &target_candidate, cv::Rect &rec)
{
	int rows = rec.height;
    	int cols = rec.width;
    	int row_index = rec.y;
    	int col_index = rec.x;
    	int new_row_index=row_index+rows-rows/F;

    	cv::Mat weight(rows,cols,CV_32F,cv::Scalar(1.0000));

        for(int i=0;i<rows/F;i++)
        {  
            for(int j=0;j<cols;j++)
            {

                mean_DataBuf[i*cols+j] = (int)frame.at<cv::Vec3b>(i+ new_row_index ,j+ col_index)[0];
                mean_DataBuf[rows/F*cols+i*cols+j] = (int)frame.at<cv::Vec3b>(i+ new_row_index ,j+ col_index)[1];
                mean_DataBuf[2*rows/F*cols+i*cols+j] = (int)frame.at<cv::Vec3b>(i+ new_row_index ,j+ col_index)[2];
            }
        }


        for(int i=0; i<3; i++){
            for(int j=0; j<16; j++){

                mean_DataBuf[I_model+i*16+j] = (int)(target_model.at<float>(i,j)*(1<<GQ));
                mean_DataBuf[I_candi+i*16+j] = (int)(target_candidate.at<float>(i,j)*(1<<GQ));

            }
        }

        pool_notify_Execute (0, 0, 5);

        // from i = 0 to rows-rows/F

        for(int i=0;i<rows-rows/F;i++)
        {
        	col_index = rec.x;
            	for(int j=0;j<cols;j+=4) //note - iteration in steps of 4 now required
            	{

              		int curr_pixel_0_0 = frame.at<cv::Vec3b>(row_index,col_index)[0];		/*Calculation of current pixel for jth iteration   */
			int curr_pixel_0_1 = frame.at<cv::Vec3b>(row_index,col_index)[1];
			int curr_pixel_0_2 = frame.at<cv::Vec3b>(row_index,col_index)[2];
		
		
			int curr_pixel_1_0 = frame.at<cv::Vec3b>(row_index,col_index+1)[0];		/*Calculation of current pixel for (j+1)th iteration   */
			int curr_pixel_1_1 = frame.at<cv::Vec3b>(row_index,col_index+1)[1];
			int curr_pixel_1_2 = frame.at<cv::Vec3b>(row_index,col_index+1)[2];
		
		
			int curr_pixel_2_0 = frame.at<cv::Vec3b>(row_index,col_index+2)[0];		/*Calculation of current pixel for (j+2)th iteration   */	
			int curr_pixel_2_1 = frame.at<cv::Vec3b>(row_index,col_index+2)[1];
			int curr_pixel_2_2 = frame.at<cv::Vec3b>(row_index,col_index+2)[2];
		
		
			int curr_pixel_3_0 = frame.at<cv::Vec3b>(row_index,col_index+3)[0];     /*Calculation of current pixel for (j+3)th iteration   */
			int curr_pixel_3_1 = frame.at<cv::Vec3b>(row_index,col_index+3)[1];
			int curr_pixel_3_2 = frame.at<cv::Vec3b>(row_index,col_index+3)[2];
		
			int bin_value_0_0 = curr_pixel_0_0>>4;									/*Calculation of bin_value for jth iteration   */
			int bin_value_0_1 = curr_pixel_0_1>>4;
			int bin_value_0_2 = curr_pixel_0_2>>4;
				
			int bin_value_1_0 = curr_pixel_1_0>>4;       							/*Calculation of bin_value for (j+1)th iteration   */
			int bin_value_1_1 = curr_pixel_1_1>>4;
			int bin_value_1_2 = curr_pixel_1_2>>4;
		
			int bin_value_2_0 = curr_pixel_2_0>>4;									/*Calculation of bin_value for (j+2)th iteration   */
			int bin_value_2_1 = curr_pixel_2_1>>4;
			int bin_value_2_2 = curr_pixel_2_2>>4;
		
			int bin_value_3_0 = curr_pixel_3_0>>4;									/*Calculation of bin_value for (j+3)th iteration   */
			int bin_value_3_1 = curr_pixel_3_1>>4;
			int bin_value_3_2 = curr_pixel_3_2>>4;
			
			float32x4_t target_model_vec_0 = {target_model.at<float>(0, bin_value_0_0),target_model.at<float>(0, bin_value_1_0),target_model.at<float>(0, bin_value_2_0),target_model.at<float>(0, bin_value_3_0)};     /* Loading the target_model.at() values for all 'B' values of 4 pixels (i.e. 4 iterations)  */ 
			float32x4_t target_model_vec_1= {target_model.at<float>(1, bin_value_0_1),target_model.at<float>(1, bin_value_1_1),target_model.at<float>(1, bin_value_2_1),target_model.at<float>(1, bin_value_3_1)};		/* Loading the target_model.at() values for all 'G' values of 4 pixels (i.e. 4 iterations)  */
			float32x4_t target_model_vec_2 = {target_model.at<float>(2, bin_value_0_2),target_model.at<float>(2, bin_value_1_2),target_model.at<float>(2, bin_value_2_2),target_model.at<float>(2, bin_value_3_2)};		/* Loading the target_model.at() values for all 'R' values of 4 pixels (i.e. 4 iterations)  */
				
		
			float32x4_t target_candidate_vec_0 = {target_candidate.at<float>(0, bin_value_0_0),target_candidate.at<float>(0,bin_value_1_0),target_candidate.at<float>(0,bin_value_2_0),target_candidate.at<float>(0,bin_value_3_0)};   /* Loading the target_candidate.at() values for all 'B' values of 4 pixels (i.e. 4 iterations)   */
			float32x4_t target_candidate_vec_1 = {target_candidate.at<float>(1, bin_value_0_1),target_candidate.at<float>(1,bin_value_1_1),target_candidate.at<float>(1,bin_value_2_1),target_candidate.at<float>(1,bin_value_3_1)};    /* Loading the target_candidate.at() values for all 'G' values of 4 pixels (i.e. 4 iterations)    */
			float32x4_t target_candidate_vec_2 = {target_candidate.at<float>(2, bin_value_0_2),target_candidate.at<float>(2,bin_value_1_2),target_candidate.at<float>(2,bin_value_2_2),target_candidate.at<float>(2,bin_value_3_2)};    /* Loading the target_candidate.at() values for all 'R' values of 4 pixels (i.e. 4 iterations)    */
		
			float32x4_t target_model_multiply = vmulq_f32(target_model_vec_0, vmulq_f32(target_model_vec_1,target_model_vec_2));			/* Vector multiplication of target_model.at  values for 'B,'G, and 'R' for 4 pixels at a time  */
		
			float32x4_t target_candidate_multiply = vmulq_f32(target_candidate_vec_0, vmulq_f32(target_candidate_vec_1,target_candidate_vec_2));   /* Vector multiplication of target_model.at and target_candidate.at values for 'B,'G, and 'R' for 4 pixels at a time  */
		
			float32x4_t reciprocal = vrecpeq_f32(target_model_multiply);			/*Obtaining the reciprocal estimate  */
			reciprocal = vmulq_f32(vrecpsq_f32(target_model_multiply, reciprocal), reciprocal);			/* Refining the reciprocal value  */
			float32x4_t multiplication = vmulq_f32(target_candidate_multiply,reciprocal);			/* Vector multiplcation of target_candidate.at values and the reciprocal of target_model.at values*/
			float32x4_t res = vrsqrteq_f32(multiplication);      /* Obtaining the reciprocal square root estimate values of the multiplication   */
			weight.at<float>(i,j) = (float) vgetq_lane_f32(res,0);		/* Assinging the weight values to each appropriate place    */
			weight.at<float>(i,j+1) = (float) vgetq_lane_f32(res,1);
			weight.at<float>(i,j+2) = (float) vgetq_lane_f32(res,2);
			weight.at<float>(i,j+3) = (float) vgetq_lane_f32(res,3);
		 	col_index+=4;
		}
            	row_index++;
        }		
        
	//Wait on DSP - DSP would have executed lower rows/F number of rows parallely        
	pool_notify_Wait(0,0);
        
  	//Retreive data from DSP
      	for(int i=0;i<rows/F;i++)
        {  
        	for(int j=0;j<cols;j++)
            	{
              		weight.at<float>(i+rows-rows/F,j)=(float)(mean_DataBuf[I_weight+i*cols+j])/(1<<GQ);   
            	}
        }
        
    return weight;
}

cv::Rect MeanShift::track(const cv::Mat &next_frame)
{
	cv::Rect next_rect;
    	next_rect.x = target_Region.x;
    	next_rect.y = target_Region.y;
    	next_rect.width = target_Region.width;
    	next_rect.height = target_Region.height;

    	for(int iter=0;iter<cfg.MaxIter;iter++)
    	{
        	cv::Mat target_candidate = pdf_representation(next_frame,target_Region);
        	cv::Mat weight = CalWeight(next_frame,target_model,target_candidate,target_Region);

		//Fixed-point arithmetic
        	int delta_x = 0;
        	float sum_wij = 0.0;

		//Fixed-point arithmetic
        	int delta_y = 0;

        	//Fixed-point arithmetic
		int mult = 0;

        	for(int i=0;i<weight.rows;i++)
        	{
            		for(int j=0;j<weight.cols;j++)
            		{
				//Fixed-point arithmetic
        			int norm_i = (SCALING_FACTOR*(i*10-centre))/centre;
        			int norm_j = (SCALING_FACTOR*(j*10-centre))/centre;

        			mult = (norm_i*norm_i + norm_j*norm_j)>(SCALING_FACTOR*SCALING_FACTOR)?0:1;

				//Conditional expression to branch
        			if(mult)
        			{
            				delta_x += (norm_j*weight.at<float>(i,j));
            				delta_y += (norm_i*weight.at<float>(i,j));
            				sum_wij += static_cast<float>(weight.at<float>(i,j));
        			}
            		}
        	}
        	next_rect.x += static_cast<int>((delta_x*centre)/(10*SCALING_FACTOR*sum_wij));// Division by 10 because centre was scaled up
										      	      // 10 times initially
        	next_rect.y += static_cast<int>((delta_y*centre)/(10*SCALING_FACTOR*sum_wij));

        	if(abs(next_rect.x-target_Region.x)<1 && abs(next_rect.y-target_Region.y)<1)
        	{
            		break;
        	}
        	else
        	{
            		target_Region.x = next_rect.x;
            		target_Region.y = next_rect.y;
        	}

   	}
    	return next_rect;
}
