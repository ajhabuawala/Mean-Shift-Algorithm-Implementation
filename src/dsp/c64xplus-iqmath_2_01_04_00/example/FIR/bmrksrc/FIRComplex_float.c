//==============================================================================
//
// FILENAME:   FFTComplex_float.c
// 
// TITLE:	   FFT Complex
//
// DESCRIPTION:	Computation of complex fft in float precision
//
//==============================================================================

#include "math.h"
#include "float.h"

#ifdef DEBUG
extern float min,max;
#endif

void FIRComplex_float(const float * x, const float * h, float * restrict r, int nh, int nr)
{

   int i,j;
   float imag, real;
   for (i = 0; i < 2*nr; i += 2)
   {
      imag = 0;
      real = 0;
      
      for (j = 0; j < 2*nh; j += 2)
      {
         real += h[j] * x[i-j] - h[j+1] * x[i+1-j];
         imag += h[j] * x[i+1-j] + h[j+1] * x[i-j];

#ifdef DEBUG
	   if(real > max) {
          max = real;
       }
	   if(real < min) {
          min = real;
       }
	   if(imag > max) {
          max = imag;
       }
       if(imag < min) {
          min = imag;
       }
	   if(h[j] * x[i-j] > max) {
          max = h[j] * x[i-j];
       }
	   if(h[j] * x[i-j] < min) {
          min = h[j] * x[i-j];
       }
	   if(h[j+1] * x[i+1-j] > max) {
          max = h[j+1] * x[i+1-j];
       }
	   if(h[j+1] * x[i+1-j] < min) {
          min = h[j+1] * x[i+1-j];
       }
	   if(h[j] * x[i+1-j] > max) {
          max = h[j] * x[i+1-j];
       }
	   if(h[j] * x[i+1-j] < min) {
          min = h[j] * x[i+1-j];
       }
	   if(h[j+1] * x[i-j] > max) {
          max = h[j+1] * x[i-j];
       }
	   if(h[j+1] * x[i-j] < min) {
          min = h[j+1] * x[i-j];
       }
#endif   

      }
      r[i] = real;
      r[i+1] = imag;
   }
}
