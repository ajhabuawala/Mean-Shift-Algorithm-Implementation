#include "globals.h"

typedef struct
{
	float *input;
	float *twiddle;
	int n;
} FFT_comp_float;

extern FFT_comp_float f1;

void FFTComplex_float_Coefficient(FFT_comp_float * f);
void FFTComplex_float_Bitreversal(FFT_comp_float * f);
void FFTComplex_float(FFT_comp_float * f);
