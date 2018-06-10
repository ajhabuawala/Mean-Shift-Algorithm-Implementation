/* FFT COMPLEX INTIALIZATION  */

#ifdef _INLINE_IQMATH
# include "IQmath_inline.h"
#else 
# include "IQmath.h"
#endif

#ifndef _TMS320C6X
#define restrict
#endif

#include "math.h"
#include "FFTComplex_IQ_global.h"
#include "MAGComplex_PHASEComplex_IQ.h"

FFT_comp q1;

_iq in1[2 * FFTsize];
_iq tw[2 * FFTsize];


extern FFT_MAG_PHASE_IQ fft1_IQ;	

_iq FFT1_IQ_Magnitude[FFTsize];
_iq FFT1_IQ_Phase[FFTsize];

//===========================================================================
// Function: void TestIFFTcomplex(void)
//===========================================================================
void FFTComplex_IQ_Initialize(void)  
{  
  q1.input=&in1[0];
  q1.twiddle=&tw[0];
  q1.n=FFTsize;

  
	FFTComplex_IQ_Coefficient(&q1);
	FFTComplex_IQ_Bitreversal(&q1);


}
//===========================================================================
// Function: void MAG_PHASE_IQ_Initialize(void)
//===========================================================================

void MAG_PHASE_IQ_Initialize(void)
{
	// Initialize FFT parameters:
	fft1_IQ.MagBuf = &FFT1_IQ_Magnitude[0];
	fft1_IQ.PhaseBuf = &FFT1_IQ_Phase[0];
	fft1_IQ.FFTSize=FFTsize;
	fft1_IQ.FFTStages=FFT_STAGES;
	fft1_IQ.OutBuf= q1.input;          
	
	
}
//===========================================================================
// Function: void FFTComplex_IQ_Coefficient(FFT_comp * f)
//===========================================================================

void FFTComplex_IQ_Coefficient(FFT_comp * f)
{
	int i;
	int n=f->n;
	_iq pi; 
	_iq e;
	_iq temp;
	pi = _IQmpy(_IQ(4.0),_IQatan(_IQ(1.0)));
	e = _IQmpy(pi,_IQ(2))/n;	
	for(i=0; i < ( n>>1 ); i++)
	{
		temp=_IQmpy(_IQ(i),e);
		f->twiddle[2*i] = _IQcos(temp);
		f->twiddle[2*i+1] = _IQsin(temp);
	}
}

//===========================================================================
// Function: void FFTComplex_IQ_Bitreversal(FFT_comp * f)
//===========================================================================

void FFTComplex_IQ_Bitreversal(FFT_comp * f)
{
	int i, j, k,N;
	_iq rtemp, itemp;
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


