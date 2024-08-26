#ifndef SIGNAL_FILTER_BANK_H
#define SIGNAL_FILTER_BANK_H

#include <stdint.h>

typedef struct FilterbankConfig
{
    int32_t num_channels;
    const int16_t *channel_frequency_starts;
    const int16_t *channel_weight_starts;
    const int16_t *channel_widths;
    const int16_t *weights;
    const int16_t *unweights;
    int32_t output_scale;

    int32_t input_correction_bits;
} FilterbankConfig;

typedef struct SignalFilterBankParams
{
    FilterbankConfig config;
    uint64_t *work_area;
} SignalFilterBankParams;

void FilterbankAccumulateChannels(const SignalFilterBankParams *params,
                                  const uint32_t *input,
                                  uint64_t *output,
                                  int32_t *output_shape,
                                  int32_t output_shape_size);

#endif // SIGNAL_FILTER_BANK_H