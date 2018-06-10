#ifdef _INLINE_IQMATH
# include "IQmath_inline.h"
#else /* _INLINE_IQMATH */
# include "IQmath.h"
#endif /* _INLINE_IQMATH */

#ifndef _TMS320C6X
#define restrict
#endif

typedef	struct {

_iq		*OutBuf;
_iq		*MagBuf;
_iq		*PhaseBuf;
unsigned short	FFTSize;
unsigned short	FFTStages;
	
} FFT_MAG_PHASE_IQ;
extern  FFT_MAG_PHASE_IQ fft1_IQ;
extern  FFT_MAG_PHASE_IQ fft2_IQ;

extern void FFT_IQ_CalcMagnitude(FFT_MAG_PHASE_IQ *fft);
extern void FFT_IQ_CalcPhase(FFT_MAG_PHASE_IQ *fft);

