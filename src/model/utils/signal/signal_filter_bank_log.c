#include "signal_filter_bank_log.h"

void SignalFilterbankLog(SignalFilterBankLogParams *params)
{
    const uint32_t *input = params->input;
    int16_t *output = params->output;
    const int32_t correction_bits = params->input_correction_bits;
    const int32_t output_scale = params->output_scale;
    const int32_t num_channels = params->num_channels;

    for (int i = 0; i < num_channels; ++i)
    {
        const uint32_t scaled = input[i] << correction_bits;
        if (scaled > 1)
        {
            const uint32_t log_value = Log32(scaled, output_scale);
            output[i] = ((log_value < (uint32_t)(INT16_MAX))
                             ? log_value
                             : (uint32_t)(INT16_MAX));
        }
        else
        {
            output[i] = 0;
        }
    }
}