#include <stdint.h>
#include <limits.h>
#include "signal_window.h"

void signal_apply_window(SignalWindowParams *params)
{
    for (int i = 0; i < params->input_size; i += params->weight_size)
    {
        apply_window(&params->input[i], params->weights, params->weight_size,
                     params->shift, &params->output[i]);
    }
}

void apply_window(const int16_t *input, const int16_t *window, int size,
                  int shift, int16_t *output)
{
    int i;
    int32_t raw;

    for (i = 0; i < size; ++i)
    {
        raw = ((int32_t)input[i] * window[i]) >> shift;

        if (raw < INT16_MIN)
        {
            output[i] = INT16_MIN;
        }
        else if (raw > INT16_MAX)
        {
            output[i] = INT16_MAX;
        }
        else
        {
            output[i] = (int16_t)raw;
        }
    }
}