#ifndef SIGNAL_FFT_AUTO_SCALE_H
#define SIGNAL_FFT_AUTO_SCALE_H

#include <stdint.h>

typedef struct SignalFFTAutoScaleParams
{
    const int16_t *input;
    int size;
    int16_t *output;
} SignalFFTAutoScaleParams;

int FftAutoScale(SignalFFTAutoScaleParams *params);
int16_t MaxAbs16(const int16_t *input, int size);
uint32_t MostSignificantBit32(uint32_t x);

#endif // SIGNAL_FFT_AUTO_SCALE_H