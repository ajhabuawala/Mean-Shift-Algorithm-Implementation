//==============================================================================
//
// FILENAME:   FFTComplex_IQ.c
// 
// TITLE:	   FFT Complex
//
// DESCRIPTION:	Computation of complex fft using IQMath library
//
//==============================================================================

#ifdef _INLINE_IQMATH
# include "IQmath_inline.h"
#else
# include "IQmath.h"
#endif 

#ifndef _TMS320C6X
#define restrict
#endif

#include "math.h"

void FIRComplex_IQ(const _iq * x, const _iq * h, _iq * restrict r, int nh, int nr)
{

   int i,j;
   _iq imag, real;

   for (i = 0; i < 2*nr; i += 2)
   {
      imag = 0;
      real = 0;
      
      for (j = 0; j < 2*nh; j += 2)
      {
         real += _IQmpy(h[j],x[i-j]) - _IQmpy(h[j+1],x[i+1-j]);
         imag += _IQmpy(h[j],x[i+1-j]) + _IQmpy(h[j+1],x[i-j]);
      }
      r[i] = real;
      r[i+1] = imag;
   }
}
