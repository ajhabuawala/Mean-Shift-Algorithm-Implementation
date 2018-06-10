/* ======================================================================== */
/*                                                                          */
/*  TEXAS INSTRUMENTS, INC.                                                 */
/*                                                                          */
/*  NAME                                                                    */
/*      fir_IQ_d -- Benchmark for IQ_fir function, Little Endian            */
/*                                                                          */
/*  USAGE                                                                   */
/*      This code contains a driver program for testing the benchmark       */
/*      kernel.  The driver itself is invoked as a standard C program,      */
/*      and results are reported on stdout.                                 */
/*                                                                          */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2008 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>
#include "tsc.h"

#ifdef _INLINE_IQMATH
# include "IQmath_inline.h"
#else 
# include "IQmath.h"
#endif

#ifndef NCOEFFS /* number of complex coefficients */
#define NCOEFFS 10
#endif

#ifndef OUTSIZE /* number of complex output samples */
#define OUTSIZE 100
#endif

/* ======================================================================== */
/*  Kernel-specific array alignment requirements.                           */
/* ======================================================================== */

#pragma DATA_ALIGN(IQ_FIRin, 8);  /* Double-Word aligned. */ 
#pragma DATA_ALIGN(float_FIRin, 8);  /* Double-Word aligned. */ 
#pragma DATA_ALIGN(IQ_FIRcoeffs, 8);
#pragma DATA_ALIGN(float_FIRcoeffs, 8);
#pragma DATA_ALIGN(IQ_FIRout, 8);
#pragma DATA_ALIGN(float_FIRout, 8);

/* ======================================================================== */
/*  Uninitialized arrays for input data.                                    */
/* ======================================================================== */

_iq *IQ_FIRin = NULL;
_iq *IQ_FIRcoeffs = NULL;
_iq *IQ_FIRout= NULL;
float *float_FIRin = NULL;
float *float_FIRcoeffs = NULL;
float *float_FIRout = NULL;

#ifdef DEBUG
extern float min = FLT_MAX;
extern float max = FLT_MIN;
#endif

/* ======================================================================== */
/*  Prototypes for timing functions.                                        */
/* ======================================================================== */

typedef long long clock_t;
clock_t time_f ();
clock_t time_IQ ();

static inline void clock_enable()
{
    TSC_enable();
}
static inline clock_t clock()
{
    return(TSC_read());
}


/* ======================================================================== */
/*  MAIN -- Top level driver for the test.                                  */
/* ======================================================================== */

int main()
{
    clock_t t_overhead, t_start, t_stop;
    int t_f = 0, t_iq = 0;
    int i;

    /* -------------------------------------------------------------------- */
    /* Allocate buffers                                                     */
    /* -------------------------------------------------------------------- */

	IQ_FIRin =  (_iq *) malloc((2 * (OUTSIZE+NCOEFFS-1)) * sizeof(_iq));
	memset(IQ_FIRin,0,(2*(OUTSIZE+NCOEFFS-1)) * sizeof(_iq));
	if(IQ_FIRin == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

    IQ_FIRcoeffs =  (_iq *) malloc(2 * NCOEFFS * sizeof(_iq));
	memset(IQ_FIRcoeffs,0,2 * NCOEFFS * sizeof(_iq));
	if(IQ_FIRcoeffs == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

	IQ_FIRout = (_iq *) malloc(2 * OUTSIZE * sizeof(_iq));
	memset(IQ_FIRout,0,2 * OUTSIZE * sizeof(_iq));
	if(IQ_FIRout == NULL) 
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

	float_FIRin =  (float *) malloc((2 * (OUTSIZE+NCOEFFS-1)) * sizeof(float));
	memset(float_FIRin,0,(2*(OUTSIZE+NCOEFFS-1)) * sizeof(float));
	if(float_FIRin == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

    float_FIRcoeffs =  (float *) malloc(2 * NCOEFFS * sizeof(float));
	memset(float_FIRcoeffs,0,2 * NCOEFFS * sizeof(float));
	if(float_FIRcoeffs == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

	float_FIRout = (float *) malloc(2 * OUTSIZE * sizeof(float));
	memset(float_FIRout,0,2 * OUTSIZE * sizeof(float));
	if(float_FIRout == NULL) 
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}
	
	/* -------------------------------------------------------------------- */
    /*  Create random FIR input.   */
    /* -------------------------------------------------------------------- */

	srand(45);
	
	for(i=0;i<(2 * (OUTSIZE+NCOEFFS-1));i++) {

	   float_FIRin[i] = (0.7*(float)rand()/(RAND_MAX + 1));
	   IQ_FIRin[i] = _FtoIQ(float_FIRin[i]);

#ifdef DEBUG
	   if(float_FIRin[i] > max) {
          max = float_FIRin[i];
       }

       if(float_FIRin[i] < min) {
          min = float_FIRin[i];
       }
#endif     

	}

	srand(74);
  
	for(i=0;i<(2 * NCOEFFS);i++) {

	   float_FIRcoeffs[i] = (0.7*(float)rand()/(RAND_MAX + 1));
	   IQ_FIRcoeffs[i] = _FtoIQ(float_FIRcoeffs[i]);

#ifdef DEBUG
	   if(float_FIRcoeffs[i] > max) {
          max = float_FIRin[i];
       }

       if(float_FIRcoeffs[i] < min) {
          min = float_FIRin[i];
       }
#endif     


	}

  	IQ_FIRin = 	&IQ_FIRin[OUTSIZE-NCOEFFS-1]; /* must point to [OUTSIZE-NCOEFFS-1] */
	float_FIRin = &float_FIRin[OUTSIZE-NCOEFFS-1];

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
  
    t_f   = time_f ()   - t_overhead;
	t_iq   = time_IQ ()   - t_overhead;
  
	/* -------------------------------------------------------------------- */
    /*  Write Results                               */
    /* -------------------------------------------------------------------- */


#ifdef DEBUG
    printf("Range of values in algorithm:\n\n");
    printf("Min. value: %f\nMax. value: %f\n\n",min,max);
#endif

    printf("Complex FIR (ncoeffs = %d, noutput = %d):\n\n FLOAT_MATH: %d cycles\n IQ_MATH: %d cycles\n",
	        NCOEFFS,OUTSIZE,t_f,t_iq);

    /* -------------------------------------------------------------------- */
    /* Write timing results to file                                         */
    /* -------------------------------------------------------------------- */

	free(IQ_FIRout);
	free(IQ_FIRcoeffs);
	free(IQ_FIRin);
	free(float_FIRout);
	free(float_FIRin);
	free(float_FIRcoeffs);

    return (0);
}

/* ======================================================================== */
/*  TIME_F  -- Measure elapsed time for float version.                */
/* ======================================================================== */                                                     							
clock_t time_f()
{
    clock_t t_start, t_stop;

    t_start = clock();
    FIRComplex_float(float_FIRin,float_FIRcoeffs,float_FIRout,NCOEFFS,OUTSIZE);
    t_stop  = clock();

    return  t_stop - t_start;
}

clock_t time_IQ()
{
    clock_t t_start, t_stop;

    t_start = clock();
	FIRComplex_IQ(IQ_FIRin,IQ_FIRcoeffs,IQ_FIRout,NCOEFFS,OUTSIZE);
    t_stop  = clock();

    return  t_stop - t_start;
}


/* ======================================================================== */
/*  End of file:  fir_IQ_d.c                                            */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2008 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */


