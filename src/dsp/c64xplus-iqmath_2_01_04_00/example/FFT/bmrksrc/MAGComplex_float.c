/* ============================================================================ */                                               
/*                                                                              */
/* Function: FFT_float_CalcMagnitude                                            */
/*                                                              			    */                                                            
/* Description:This function calculates FFT magnitude in 32 bit float precision */                                                                       
/*==============================================================================*/

#include "MAGComplex_PHASEComplex_float.h"
#include "float.h"
#include "math.h"

void FFT_float_CalcMagnitude(FFT_MAG_PHASE_float *fft)
{
	float		Real, Imag, Mag;
	float		scale;
	unsigned short	Rptr, Iptr, Mptr;
	unsigned short	i;

	Rptr = 0;
	Iptr = fft->FFTSize - 1;
	Mptr = 0;

	// Get scaling factor to normalize data:
	//     scale = 2^(FFTStages-1)
	scale =1.0;
	for(i=0; i < (fft->FFTStages - 1); i++)
		scale = scale * 0.5f;

	// Get DC component:
	Real = fft->OutBuf[Rptr++] * scale;
	fft->MagBuf[Mptr++] = fabs(Real);
	
	// Calculate Magnitude:
	for(i=0; i < (fft->FFTSize - 1); i++)
		{
		Real = fft->OutBuf[Rptr++] * scale;
		Imag = fft->OutBuf[Iptr--] * scale;
		Mag = sqrtf((Real * Real) + (Imag * Imag));
		fft->MagBuf[Mptr++] = Mag;
		}
}
