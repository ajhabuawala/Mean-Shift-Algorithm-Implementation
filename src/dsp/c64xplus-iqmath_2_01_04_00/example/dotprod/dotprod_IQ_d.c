/* ======================================================================== */
/*                                                                          */
/*  TEXAS INSTRUMENTS, INC.                                                 */
/*                                                                          */
/*  NAME                                                                    */
/*      dotprod_IQ_d -- Driver for IQ_dotprod functions, Little Endian      */
/*                                                                          */
/*  USAGE                                                                   */
/*      This code contains a driver program for testing the benchmark       */
/*      kernel.  The driver itself is invoked as a standard C program,      */
/*      and results are reported on stdout.                                 */
/*                                                                          */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2006 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */


#include <stdio.h>
#include "tsc.h"

#define GLOBAL_Q (8)

#ifdef _INLINE_IQMATH
# include "IQmath_inline.h"
#else /* _INLINE_IQMATH */
# include "IQmath.h"
#endif /* _INLINE_IQMATH */


/* ======================================================================== */
/*  Kernel-specific array alignment requirements.                           */
/* ======================================================================== */
#pragma DATA_ALIGN(i_dat1, 8);  /* Double-Word aligned. */
#pragma DATA_ALIGN(i_dat2, 8);  /* Double-Word aligned. */
#pragma DATA_ALIGN(f_dat1, 8);  /* Double-Word aligned. */
#pragma DATA_ALIGN(f_dat2, 8);  /* Double-Word aligned. */

/* ======================================================================== */
/*  Global variables for test vectors.  If both COMM_FLOW and RAND_DATA     */
/*  are defined, use random test vectors, otherwise use fixed test vectors. */
/* ======================================================================== */
#define N   (256)                  /* Number of blocks                     */

/* ======================================================================== */
/*  Uninitialized arrays for input data.                                    */
/* ======================================================================== */
unsigned int i_dat1[N], *i_dat1_ptr = &i_dat1[0];
unsigned int i_dat2[N], *i_dat2_ptr = &i_dat2[0];
float f_dat1[N], *f_dat1_ptr = &f_dat1[0];
float f_dat2[N], *f_dat2_ptr = &f_dat2[0];

/* ======================================================================== */
/*  Prototypes for timing functions.                                        */
/* ======================================================================== */
typedef unsigned int clock_t;
clock_t time_IQ  ();
clock_t time_f   ();

static inline void clock_enable()
{
    TSC_enable();
}
static inline clock_t clock()
{
    return(TSC_read());
}


/* ======================================================================== */
/*  Prototypes for compute functions.                                       */
/* ======================================================================== */
float float_dotprod(float *src1, float *src2, const int num_samples);

/* ======================================================================== */
/*  MAIN -- Top level driver for the test.                                  */
/* ======================================================================== */
int main()
{
    clock_t t_overhead, t_start, t_stop;
    int t_f = 0, t_iq = 0;
    float x;
    int i;

    /* -------------------------------------------------------------------- */
    /*  Generate the input vectors.                                         */
    /* -------------------------------------------------------------------- */
    x = 0.5;
    for(i = 0; i < N; i++)
    {
        f_dat1[i] = f_dat2[N - 1 - i] = x;
        i_dat1[i] = i_dat2[N - 1 - i] = _IQ(x);

        x += 1;
    }
    /* -------------------------------------------------------------------- */
    /*  Compute the overhead of calling clock() twice to get timing info.   */
    /* -------------------------------------------------------------------- */
    clock_enable();
    t_start    = clock();
    t_stop     = clock();
    t_overhead = t_stop - t_start;

    /* -------------------------------------------------------------------- */
    /*  Call the individual timing routines, and subtract off overhead.     */
    /* -------------------------------------------------------------------- */
    t_iq   = time_IQ()   - t_overhead;
    t_f    = time_f ()   - t_overhead;

    /* -------------------------------------------------------------------- */
    /*  Print timing results.                                               */
    /* -------------------------------------------------------------------- */
    printf("\ndotprod_IQ (%d samples), time per sample: float = %0.1f, iq = %0.1f\n",
            N, (float)t_f/N, (float)t_iq/N );

    return (0);
}

/* ======================================================================== */
/*  float_result - Floating point code to verify fixed point accuracy.      */
/* ======================================================================== */
float float_dotprod(float *src1, float *src2, const int num_samples)
{
    int i;
    float fi1, fi2;
    float result = 0;

    for(i = 0; i < num_samples; i++)
    {
        fi1 = src1[i];
        fi2 = src2[i];

        result += fi1 * fi2;
    }

    return( result );
}

/* ======================================================================== */
/*  TIME_F   -- Measure elapsed time for floating point dot-product         */
/* ======================================================================== */
clock_t time_f()
{
    clock_t t_start, t_stop;
    float res;

    t_start = clock();
    res = float_dotprod(f_dat1_ptr, f_dat2_ptr, N);
    t_stop  = clock();

    printf("\nFloat result = %0.2f\n", res);

    return  t_stop - t_start;
}

/* ======================================================================== */
/*  TIME_IQ  -- Measure elapsed time for natural IQ version.                */
/* ======================================================================== */
clock_t time_IQ()
{
    clock_t t_start, t_stop;
    _iq res;

    t_start = clock();
    res = dotprod_IQ((I32_IQ *)i_dat1_ptr, (I32_IQ *)i_dat2_ptr, N);
    t_stop  = clock();

    printf("\nIQ result = %0.2f\n", _IQtoF(res) );

    return  t_stop - t_start;
}

/* ======================================================================== */
/*  End of file:  dotprod_IQ_d.c                                            */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2006 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */
