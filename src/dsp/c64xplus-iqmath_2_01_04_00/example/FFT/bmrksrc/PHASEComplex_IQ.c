//===========================================================================
// Function:   FFT_IQ_CalcPhase
//
// Description: This function calculates FFT phase in 32 bit fixed precision
//
//===========================================================================

#include "MAGComplex_PHASEComplex_IQ.h"
#include "math.h"

void FFT_IQ_CalcPhase(FFT_MAG_PHASE_IQ *fft)
{
	_iq		Real, Imag, Pha;
	_iq		scale;
	unsigned short	Rptr, Iptr, Mptr;
	unsigned short	i;

	_iq * restrict output = fft->OutBuf;
	_iq * restrict phase = fft->PhaseBuf;

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
	phase[Mptr++] = _IQatan2(0,Real);
	
	// Calculate Phase:
	for(i=0; i < (fft->FFTSize - 1); i++)
		{
		Real = _IQmpy(output[Rptr++], scale);
		Imag = _IQmpy(output[Iptr--], scale);
		Pha = _IQatan2(Imag, Real);
		phase[Mptr++] = Pha;
		}

	// Note: We ignore fs/2 component:
}
