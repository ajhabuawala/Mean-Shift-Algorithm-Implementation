/* ======================================================================== */                                               
/*                                                                          */
/* Function: FFT_IQ_CalcMagnitude                                          */
/*                                                              			*/                                                            
/* Description:This function calculates FFT magnitude in 32 bit fixed precision  */                                                                       
/*===========================================================================*/

#include "MAGComplex_PHASEComplex_IQ.h"
#include "math.h"

void FFT_IQ_CalcMagnitude(FFT_MAG_PHASE_IQ *fft)
{
	_iq		Real, Imag, Mag;
	_iq		scale;
	unsigned short	Rptr, Iptr, Mptr;
	unsigned short	i;

	_iq * restrict output = fft->OutBuf;
	_iq * restrict magnitude = fft->MagBuf; 

	Rptr = 0;
	Iptr = fft->FFTSize - 1;
	Mptr = 0;

	// Get scaling factor to normalize data:
	//     scale = 2^(FFTStages-1)
	scale = _IQ(1.0f);
	for(i=0; i < (fft->FFTStages - 1); i++)
		scale = _IQmpy(scale, _IQ(0.5f));

	// Get DC component:
	Real = _IQmpy(output[Rptr++], scale);
	fft->MagBuf[Mptr++] = _IQabs(Real);
	
	// Calculate Magnitude:
	for(i=0; i < (fft->FFTSize - 1); i++)
		{
		Real = _IQmpy(output[Rptr++], scale);
		Imag = _IQmpy(output[Iptr--], scale);
		Mag = _IQsqrt(_IQmpy(Real,Real) + _IQmpy(Imag,Imag));
		magnitude[Mptr++] = Mag;
		}
}
