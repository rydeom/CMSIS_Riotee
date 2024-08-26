#ifndef SIGNAL_FILTER_BANK_LOG_H
#define SIGNAL_FILTER_BANK_LOG_H

#include <stdint.h>

typedef struct SignalFilterBankLogParams
{
    uint32_t *input;
    int16_t *output;

    int32_t input_correction_bits;
    int32_t output_scale;
    int32_t num_channels;
} SignalFilterBankLogParams;

void SignalFilterbankLog(SignalFilterBankLogParams *params);

#endif // SIGNAL_FILTER_BANK_LOG_H