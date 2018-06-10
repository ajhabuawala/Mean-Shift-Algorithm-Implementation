/* ======================================================================== */
/*                                                                          */
/*  TEXAS INSTRUMENTS, INC.                                                 */
/*                                                                          */
/*  NAME                                                                    */
/*      fft_IQ_d -- Benchmark for IQ_fft function, Little Endian            */
/*                                                                          */
/*  USAGE                                                                   */
/*      This code contains a driver program for testing the benchmark       */
/*      kernel.  The driver itself is invoked as a standard C program,      */
/*      and results are reported on stdout.                                 */
/*                                                                          */
/*                                                                          */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2008 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "tsc.h"

#ifdef _INLINE_IQMATH
# include "IQmath_inline.h"
#else 
# include "IQmath.h"
#endif

#include "bmrksrc/globals.h"

#include "bmrksrc/FFTComplex_IQ_global.h"
#include "bmrksrc/MAGComplex_PHASEComplex_IQ.h"
#include "bmrksrc/FFTComplex_float_global.h"
#include "bmrksrc/MAGComplex_PHASEComplex_float.h"

/* ======================================================================== */
/*  Kernel-specific array alignment requirements.                           */
/* ======================================================================== */

#pragma DATA_ALIGN(IQ_FFTin1, 8);  /* Double-Word aligned. */ 
#pragma DATA_ALIGN(float_FFTin1, 8);  /* Double-Word aligned. */ 

/* ======================================================================== */
/*  Uninitialized arrays for input data.                                    */
/* ======================================================================== */

_iq *IQ_FFTin1 = NULL;
_iq *IQ_FFTout1 = NULL;
_iq *IQ_FFTout2 = NULL;

FFT_MAG_PHASE_IQ fft1_IQ;

float *float_FFTin1 = NULL;
float *float_FFTout1 = NULL;
float *float_FFTout2 = NULL;

FFT_MAG_PHASE_float fft1_float;

/* ======================================================================== */
/*  Variables to create test input vector                                */
/* ======================================================================== */

#define	START_SIN	0.25						
#define	START_COS	START_SIN/FFTsize		
#define	STEP		START_COS					

float StartSin = START_SIN;
float StartCos = START_COS;

extern float maxVal = FLT_MIN;
extern float minVal = FLT_MAX;

/* ======================================================================== */
/*  Prototypes for timing functions.                                        */
/* ======================================================================== */

typedef long long clock_t;
clock_t time_IQ_FFT  ();
clock_t time_IQ_Mag  ();
clock_t time_IQ_Phase  ();
clock_t time_f_FFT   ();
clock_t time_f_Mag   ();
clock_t time_f_Phase   ();

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

void calcStats(_iq *IQFFT_out, float * floatFFTout, _iq *IQ_Mag,_iq *IQ_Phase,
               float *float_Mag,float *float_Phase,FILE *logFile);

/* ======================================================================== */
/*  MAIN -- Top level driver for the test.                                  */
/* ======================================================================== */

int main()
{
    clock_t t_overhead, t_start, t_stop;
    int t1_iq = 0, t2_iq = 0, t3_iq = 0;

    int t1_f = 0, t2_f = 0, t3_f = 0;

    int i;
    float tempSin, tempCos;

    /* -------------------------------------------------------------------- */
    /*  Generate the input vectors.                                         */
    /* -------------------------------------------------------------------- */

	IQ_FFTin1 =  (_iq*)malloc(FFTsize * sizeof(_iq));
	memset(IQ_FFTin1,0,FFTsize * sizeof(_iq));
	if(IQ_FFTin1 == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

    IQ_FFTout1 =  (_iq*)malloc(FFTsize * sizeof(_iq));
	memset(IQ_FFTout1,0,FFTsize * sizeof(_iq));
	if(IQ_FFTout1 == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

	IQ_FFTout2 = (_iq*)malloc(FFTsize * sizeof(_iq));
	memset(IQ_FFTout2,0,FFTsize * sizeof(_iq));
	if(IQ_FFTout2 == NULL) 
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}



	float_FFTin1 =  (float *) malloc(FFTsize * sizeof(float));
	memset(float_FFTin1,0,FFTsize * sizeof(float));
	if(float_FFTin1 == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

    float_FFTout1 =  (float *) malloc(FFTsize * sizeof(float));
	memset( float_FFTout1,0,FFTsize * sizeof(float));
	if( float_FFTout1 == NULL)
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}


	float_FFTout2 = (float *) malloc(FFTsize * sizeof(float));
	memset(float_FFTout2,0,FFTsize * sizeof(float));
	if(float_FFTout2 == NULL) 
	{
		printf("Memory not allocated\n");
		exit(0) ;
	}

    FFTComplex_float_Initialize();
    MAG_PHASE_float_Initialize();

	FFTComplex_IQ_Initialize();
    MAG_PHASE_IQ_Initialize();
    


	/* -------------------------------------------------------------------- */
    /*  Create FFT input.   */
    /* -------------------------------------------------------------------- */

	tempSin = 0;
	tempCos = 0;
	for(i=0; i < (FFTsize); i++) {

        f1.input[i]  = sin(tempSin*TWOPI);
		f1.input[i] += cos(tempCos*TWOPI); 

        tempSin = (tempSin + StartSin) - floor(tempSin + StartSin);
		tempCos = (tempCos + StartCos) - floor(tempCos + StartCos);

        float_FFTin1[i] = f1.input[i];

		q1.input[i] = _FtoIQ(f1.input[i]);
		IQ_FFTin1[i] = q1.input[i];

#ifdef DEBUG
	   if(f1.input[i] > maxVal) {
          maxVal = f1.input[i];
       }

       if(f1.input[i] < minVal) {
          minVal = f1.input[i];
       }
#endif
		
        f1.input[(2*FFTsize) - (i+1)]  = sin(tempSin*TWOPI);
		f1.input[(2*FFTsize) - (i+1)] += cos(tempCos*TWOPI); 


        tempSin = (tempSin + StartSin) - floor(tempSin + StartSin);
		tempCos = (tempCos + StartCos) - floor(tempCos + StartCos);

        float_FFTin1[(2*FFTsize) - (i+1)] = f1.input[(2*FFTsize) - (i+1)];

		q1.input[(2*FFTsize) - (i+1)] = _FtoIQ(f1.input[(2*FFTsize) - (i+1)]);
		IQ_FFTin1[(2*FFTsize) - (i+1)] = q1.input[(2*FFTsize) - (i+1)];

#ifdef DEBUG
	   if(f1.input[(2*FFTsize) - (i+1)] > maxVal) {
          maxVal = f1.input[(2*FFTsize) - (i+1)];
       }

       if(f1.input[(2*FFTsize) - (i+1)] < minVal) {
          minVal = f1.input[(2*FFTsize) - (i+1)];
       }
#endif
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

    t1_iq   = time_IQ_FFT()   - t_overhead;
	t2_iq   = time_IQ_Mag()   - t_overhead;
	t3_iq   = time_IQ_Phase() - t_overhead;


    t1_f   = time_f_FFT()   - t_overhead;
	t2_f   = time_f_Mag()   - t_overhead;
	t3_f   = time_f_Phase() - t_overhead;


    for(i=0; i < (FFTsize); i++)
	{
		IQ_FFTout1[i]=fft1_IQ.MagBuf[i];
		IQ_FFTout2[i]=fft1_IQ.PhaseBuf[i];

		float_FFTout1[i]=fft1_float.MagBuf[i];
	    float_FFTout2[i]=fft1_float.PhaseBuf[i];
			
	}

	/* -------------------------------------------------------------------- */
    /*  Write Results                                           */
    /* -------------------------------------------------------------------- */


#ifdef DEBUG
    printf("Range of values in algorithm:\n\n");
    printf("Min. value: %f\nMax. value: %f\n\n",minVal,maxVal);
#endif

    printf("Complex FFT of size %d:\n\n FLOAT_MATH: %d cycles\n IQ_MATH: %d cycles\n",
	        FFTsize,t1_f,t1_iq);

	printf("\nMagnitude:\n\n FLOAT_MATH: %d cycles\n IQ_MATH: %d cycles\n",
	        t2_f,t2_iq);

	printf("\n\nPhase:\n\n FLOAT_MATH: %d cycles\n IQ_MATH: %d cycles\n",
	        t3_f,t3_iq);


	free(IQ_FFTout1);
	free(IQ_FFTout2);
	free(IQ_FFTin1);

	free(float_FFTout1);
	free(float_FFTout2);
	free(float_FFTin1);

    return (0);
}

/* ======================================================================== */
/*  TIME_F  -- Measure elapsed time for float version.                */
/* ======================================================================== */                                                     							
clock_t time_f_FFT()
{
    clock_t t_start, t_stop;

    t_start = clock();
    FFTComplex_float(&f1);
    t_stop  = clock();

    return  t_stop - t_start;
}

clock_t time_f_Mag()
{
    clock_t t_start, t_stop;

    t_start = clock();
	FFT_float_CalcMagnitude(&fft1_float);
    t_stop  = clock();

    return  t_stop - t_start;
}

clock_t time_f_Phase()
{
    clock_t t_start, t_stop;

    t_start = clock();
	FFT_float_CalcPhase(&fft1_float);
    t_stop  = clock();

    return  t_stop - t_start;
}

/* ======================================================================== */
/*  TIME_IQ  -- Measure elapsed time for natural IQ version.                */
/* ======================================================================== */

clock_t time_IQ_FFT()
{
    clock_t t_start, t_stop;

    t_start = clock();
    FFTComplex_IQ(&q1);
    t_stop  = clock();

    return  t_stop - t_start;
}

clock_t time_IQ_Mag()
{
    clock_t t_start, t_stop;

    t_start = clock();
	FFT_IQ_CalcMagnitude(&fft1_IQ);
    t_stop  = clock();

    return  t_stop - t_start;
}

clock_t time_IQ_Phase()
{
    clock_t t_start, t_stop;

    t_start = clock();
	FFT_IQ_CalcPhase(&fft1_IQ);
    t_stop  = clock();

    return  t_stop - t_start;
}


/* ======================================================================== */
/*  End of file:  fft_IQ_d.c                                            */
/* ------------------------------------------------------------------------ */
/*            Copyright (c) 2008 Texas Instruments, Incorporated.           */
/*                           All Rights Reserved.                           */
/* ======================================================================== */
