//==============================================================================
//
// FILENAME:   FFTComplex_IQ.c
// 
// TITLE:	   FFT Complex
//
// DESCRIPTION:	Computation of complex fft
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
#include "FFTComplex_IQ_global.h"


void FFTComplex_IQ(FFT_comp * f)
{
	short n2, ie, ia, i, j, k, m,size;
	_iq * restrict input;
	_iq * restrict output;
	_iq * restrict twiddle;
	_iq rtemp, itemp, c, s;

	input = f->input;
	output = f->input;
	twiddle = f->twiddle;


	size = f->n;
	size = ((size*2)-1);
	n2 = f->n;
	ie = 1;
	for(k=f->n; k > 1; k >>= 1)
	{
		n2 >>= 1;
		ia = 0;
		for(j=0; j < ie; j++)
		{
			c = twiddle[2*j];
			s = twiddle[2*j+1];
			for(i=0; i < n2; i++)
			{
				m = ia + n2;
				rtemp = _IQmpy(c,input[m]) + _IQmpy(s, input[size-m]);
				itemp = _IQmpy(c, input[size-m]) - _IQmpy(s,input[m]);
				output[m] = input[ia] - rtemp;
				output[size-m] = input[size-ia] - itemp;
				output[ia] = input[ia] + rtemp;
				output[size-ia] = input[size-ia] + itemp;
				ia++;
			}
			ia += n2;
		}
		ie <<= 1;
	}
}

