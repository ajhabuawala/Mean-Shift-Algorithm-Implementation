typedef	struct {

float		*OutBuf;
float		*MagBuf;
float		*PhaseBuf;
unsigned short	FFTSize;
unsigned short	FFTStages;
	
} FFT_MAG_PHASE_float;

extern  FFT_MAG_PHASE_float fft1_float;
extern  FFT_MAG_PHASE_float fft2_float;

extern void FFT_float_CalcMagnitude(FFT_MAG_PHASE_float *fft);
extern void FFT_float_CalcPhase(FFT_MAG_PHASE_float *fft);

