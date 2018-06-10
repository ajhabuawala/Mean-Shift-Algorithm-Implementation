/* ======================================================================== */
/*                                                                          */
/*  TEXAS INSTRUMENTS, INC.                                                 */
/*                                                                          */
/*  NAME                                                                    */
/*      dotprod_IQ_c -- IQmath dotprod kernel, Little Endian                */
/*                                                                          */
/*  USAGE : The function prototype is                                       */
/*      I32_IQ dotprod_IQ(                                                  */
/*          I32_IQ *restrict src1,      // pointer to array 1               */
/*          I32_IQ *restrict src2,      // pointer to array 2               */
/*          int num_samp                // number of samples.               */
/*          );                                                              */
/*                                                                          */
/*  ASSUMPTIONS:                                                            */
/*      - All pointers are double word alligned                             */
/*      - Pointers do not alias                                             */
/*      - "num_samp" is a multiple of 8                                     */
/*                                                                          */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2006 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */

# define GLOBAL_Q (8)

#ifdef _INLINE_IQMATH
# include "IQmath_inline.h"
#else /* _INLINE_IQMATH */
# include "IQmath.h"
#endif /* _INLINE_IQMATH */

#ifndef _TMS320C6X
#define restrict
#endif

I32_IQ dotprod_IQ(I32_IQ *restrict src1, I32_IQ *restrict src2, int num_samp)
{
    long long x10_l, x10_h,  y10_l, y10_h;
    int i;
    I32_IQ result1 = 0, result2 = 0, result;

#pragma MUST_ITERATE(4, ,4)
    for(i = 0; i < (num_samp >> 1); i++ )
    {
        x10_l = *src1++;
        x10_h = *src1++;
        y10_l = *src2++;
        y10_h = *src2++;

        result1 += _IQmpy(x10_l, y10_l);
        result2 += _IQmpy(x10_h, y10_h);
    }

    result = result1 + result2;
    return(result);
}


/* ======================================================================== */
/*  End of file:  dotprod_iq_c.c                                            */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2006 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */
