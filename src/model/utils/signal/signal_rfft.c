#include "kiss_fftr.h"
#include "signal_rfft.h"
#include "layer_data.h"
#include <stdint.h>
#include "printf.h"

#define FIXED_POINT 16

void RfftInt16(SignalRfftParams *params)
{
    int16_t working_buffer[params->fft_length];
    int8_t state[params->state_size];
    RfftInt16Init(params->fft_length, state, params->state_size);

    for (int input_idx = 0, output_idx = 0; input_idx < params->input_size;
         input_idx += params->input_length, output_idx += params->output_length)
    {
        memcpy(working_buffer, &params->input[input_idx], params->input_length * sizeof(int16_t));
        memset(&working_buffer[params->input_length], 0, (params->fft_length - params->input_length) * sizeof(int16_t));
        RfftInt16Apply(state, working_buffer, &params->output[output_idx]);
    }
}

size_t RfftInt16GetNeededMemory(int32_t fft_length)
{
    size_t state_size = 0;
    kiss_fftr_alloc(fft_length, 0, NULL, &state_size);
    return state_size;
}

void RfftInt16Init(int32_t fft_length, void *state, size_t state_size)
{
    return kiss_fftr_alloc(fft_length, 0, state, &state_size);
}

void RfftInt16Apply(void *state, const int16_t *input, struct Complex *output)
{
    kiss_fftr((kiss_fft_cfg)state, (const kiss_fft_scalar *)input, (kiss_fft_cpx *)output);
}

#undef FIXED_POINT
