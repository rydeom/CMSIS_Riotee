#include "signal_filter_bank.h"
#include <string.h>

void FilterbankAccumulateChannels(const SignalFilterBankParams *params,
                                  const uint32_t *input,
                                  uint64_t *output,
                                  int32_t *output_shape,
                                  int32_t output_shape_size)
{
    const FilterbankConfig *config = &params->config;

    uint64_t weight_accumulator = 0;
    uint64_t unweight_accumulator = 0;
    for (int i = 0; i < config->num_channels + 1; i++)
    {
        const int16_t freq_start = config->channel_frequency_starts[i];
        const int16_t weight_start = config->channel_weight_starts[i];
        for (int j = 0; j < config->channel_widths[i]; ++j)
        {
            weight_accumulator += config->weights[weight_start + j] *
                                  (uint64_t)(input[freq_start + j]);
            unweight_accumulator += config->unweights[weight_start + j] *
                                    (uint64_t)(input[freq_start + j]);
        }
        params->work_area[i] = weight_accumulator;
        weight_accumulator = unweight_accumulator;
        unweight_accumulator = 0;
    }

    uint16_t output_size = sizeof(uint64_t);
    int result = 1;
    for (int i = 0; i < output_shape_size; i++)
    {
        result *= output_shape[i];
    }
    output_size *= result;
    memcpy(output, params->work_area + 1, output_size);
}