#ifndef SIGNAL_RFFT_H
#define SIGNAL_RFFT_H

#define FIXED_POINT 16
#include <stdint.h>
#include "layer_data.h"

typedef struct SignalRfftParams
{
    const int16_t *input;
    struct Complex *output;
    int32_t fft_length;
    int32_t state_size;
    int32_t input_length;
    int32_t input_size;
    int32_t output_length;
} SignalRfftParams;

void RfftInt16(SignalRfftParams *params);

size_t RfftInt16GetNeededMemory(int32_t fft_length);
void RfftInt16Init(int32_t fft_length, void *state, size_t state_size);
void RfftInt16Apply(void *state, const int16_t *input, struct Complex *output);

#undef FIXED_POINT

#endif // SIGNAL_RFFT_H