#include <stdint.h>
#include "signal_fft_auto_scale.h"
#include "signal_utils.h"

int FftAutoScale(SignalFFTAutoScaleParams *params)
{
    const int16_t max = MaxAbs16(params->input, params->size);
    int scale_bits = (sizeof(int16_t) * 8) - MostSignificantBit32(max) - 1;
    if (scale_bits <= 0)
    {
        scale_bits = 0;
    }
    for (int i = 0; i < params->size; i++)
    {
        // (input[i] << scale_bits) is undefined if input[i] is negative.
        // Multiply explicitly to make the code portable.
        params->output[i] = params->input[i] * (1 << scale_bits);
    }
    return scale_bits;
}
