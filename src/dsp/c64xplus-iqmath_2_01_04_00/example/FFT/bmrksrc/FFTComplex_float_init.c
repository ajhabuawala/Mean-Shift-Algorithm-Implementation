/* FFT COMPLEX INTIALIZATION  */

#include "math.h"
#include "float.h"
#include "FFTComplex_float_global.h"
#include "MAGComplex_PHASEComplex_float.h"

FFT_comp_float f1;

float in1float[2 * FFTsize];
float twFloat[2 * FFTsize];

extern FFT_MAG_PHASE_float fft1_float;	


float FFT1_float_Magnitude[FFTsize];
float FFT1_float_Phase[FFTsize];



//===========================================================================
// Function: void FFTComplex_float_Initialize(void)
//===========================================================================
void FFTComplex_float_Initialize(void)  
{  
  f1.input=&in1float[0];
  f1.twiddle=&twFloat[0];
  f1.n=FFTsize;

	FFTComplex_float_Coefficient(&f1);
	FFTComplex_float_Bitreversal(&f1);



}
//===========================================================================
// Function: void MAG_PHASE_float_Initialize(void)
//===========================================================================

void MAG_PHASE_float_Initialize(void)
{
	// Initialize FFT parameters:
	fft1_float.MagBuf = &FFT1_float_Magnitude[0];
	fft1_float.PhaseBuf = &FFT1_float_Phase[0];
	fft1_float.FFTSize=FFTsize;
	fft1_float.FFTStages=FFT_STAGES;
	fft1_float.OutBuf= f1.input;          
	
}
//===========================================================================
// Function: void FFTComplex_float_Coefficient(FFT_comp * f)
//===========================================================================

void FFTComplex_float_Coefficient(FFT_comp_float * f)
{
	int i;
	int n=f->n;
	float pi; 
	float e;
	float temp;
	pi = (4.0 * atanf(1.0));
	e = (pi * 2)/n;	
	for(i=0; i < ( n>>1 ); i++)
	{
		temp= (float)i * e;
		f->twiddle[2*i] = cosf(temp);
		f->twiddle[2*i+1] = sinf(temp); 
	}
}

//===========================================================================
// Function: void FFTComplex_float_Bitreversal(FFT_comp * f)
//===========================================================================

void FFTComplex_float_Bitreversal(FFT_comp_float * f)
{
	int i, j, k,N;
	float rtemp, itemp;
	j = 0;
	N=f->n;
	N=N>>1;
	for(i=1; i < (N-1); i++)
	{
		k = N >> 1;
		while(k <= j)
		{
			j -= k;
			k >>= 1;
		}
		j += k;
		if(i < j)
		{
			rtemp = f->twiddle[j*2];
			f->twiddle[j*2] = f->twiddle[i*2];
			f->twiddle[i*2] = rtemp;
			itemp = f->twiddle[j*2+1];
			f->twiddle[j*2+1] = f->twiddle[i*2+1];
			f->twiddle[i*2+1] = itemp;
		}
	}
}
