#include "math.h"
#include "float.h"
#include "FFTComplex_float_global.h"

#ifdef DEBUG
extern float minVal,maxVal;
#endif

void FFTComplex_float(FFT_comp_float * f)
{
	short n2, ie, ia, i, j, k, m,size;
	float * restrict input;
	float * restrict output;
	float * restrict twiddle;
	float rtemp, itemp, c, s;

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
				rtemp = (c * input[m]) + (s * input[size-m]);
				itemp = (c * input[size-m]) - (s * input[m]);
				output[m] = input[ia] - rtemp;
				output[size-m] = input[size-ia] - itemp;
				output[ia] = input[ia] + rtemp;
				output[size-ia] = input[size-ia] + itemp;

#ifdef DEBUG
	   if((c * input[m]) > maxVal) {
          maxVal = (c * input[m]);
       }
	   if((s * input[size-m]) > maxVal) {
          maxVal = (s * input[size-m]);
       }
	   if(rtemp > maxVal) {
          maxVal = rtemp;
       }
	   if((c * input[size-m]) > maxVal) {
          maxVal = (c * input[size-m]);
       }
	   if((s * input[m]) > maxVal) {
          maxVal = (s * input[m]);
       }
	   if(itemp > maxVal) {
          maxVal = itemp;
       }
	   if(output[m] > maxVal) {
          maxVal = output[m];
       }
	   if(output[size-m] > maxVal) {
          maxVal = output[size-m];
       }
	   if(output[ia] > maxVal) {
          maxVal = output[ia];
       }
	   if(output[size-ia] > maxVal) {
          maxVal = output[size-ia];
       }


	   if((c * input[m]) < minVal) {
          minVal = (c * input[m]);
       }
	   if((s * input[size-m]) < minVal) {
          minVal = (s * input[size-m]);
       }
	   if(rtemp < minVal) {
          minVal = rtemp;
       }
	   if((c * input[size-m]) < minVal) {
          minVal = (c * input[size-m]);
       }
	   if((s * input[m]) < minVal) {
          minVal = (s * input[m]);
       }
	   if(itemp < minVal) {
          minVal = itemp;
       }
	   if(output[m] < minVal) {
          minVal = output[m];
       }
	   if(output[size-m] < minVal) {
          minVal = output[size-m];
       }
	   if(output[ia] < minVal) {
          minVal = output[ia];
       }
	   if(output[size-ia] < minVal) {
          minVal = output[size-ia];
       }
#endif
				ia++;
			}
			ia += n2;
		}
		ie <<= 1;
	}
}
