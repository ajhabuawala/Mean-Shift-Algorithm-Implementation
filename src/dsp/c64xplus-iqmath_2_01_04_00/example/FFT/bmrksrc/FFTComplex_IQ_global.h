#include "globals.h"

typedef struct
{
	_iq *input;
	_iq *twiddle;
	int n;

} FFT_comp;

extern FFT_comp q1;

void FFTComplex_IQ_Coefficient(FFT_comp * f);
void FFTComplex_IQ_Bitreversal(FFT_comp * f);
void FFTComplex_IQ(FFT_comp * f);

void FFTComplex_IQ(FFT_comp * f);







