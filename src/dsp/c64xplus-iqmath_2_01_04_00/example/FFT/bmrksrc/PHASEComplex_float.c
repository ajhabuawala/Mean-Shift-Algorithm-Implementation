//===========================================================================
// Function:   FFT_IQ_CalcPhase
//
// Description: This function calculates FFT phase in 32 bit fixed precision
//
//===========================================================================

#include "MAGComplex_PHASEComplex_float.h"
#include "float.h"
#include "math.h"

void FFT_float_CalcPhase(FFT_MAG_PHASE_float *fft)
{
	float		Real, Imag, Mag;
	float		scale;
	unsigned short	Rptr, Iptr, Mptr;
	unsigned short	i;

	float * restrict output = fft->OutBuf;
    float * restrict phase = fft->PhaseBuf;

	Rptr = 0;
	Iptr = fft->FFTSize - 1;
	Mptr = 0;

	// Get scaling factor to normalize data:
	//     scale = 2^(FFTStages-1)
	scale = 1.0;
	for(i=0; i < (fft->FFTStages - 1); i++)
		scale = scale * 0.5;

	// Get DC component:
	Real = output[Rptr++] * scale;
	phase[Mptr++] = atan2f(0,Real);
	
	// Calculate Magnitude:
	for(i=0; i < (fft->FFTSize - 1); i++)
		{
		Real = output[Rptr++] * scale;
		Imag = output[Iptr--] * scale;
		Mag = atan2f(Imag, Real);
		phase[Mptr++] = Mag;
		}

	// Note: We ignore fs/2 component:
}
