#ifndef SIGNAL_PCAN_H
#define SIGNAL_PCAN_H

#include <stdint.h>

#define kPcanSnrBits 12
#define kPcanOutputBits 6

typedef struct SignalPcanParams
{
    uint32_t *input;
    uint32_t *output;
    uint32_t *noise_estimate;
    uint32_t noise_estimate_size;
    int16_t *gain_lut;
    uint32_t gain_lut_size;
    int32_t snr_shift;
    int32_t num_channels;
} SignalPcanParams;

void SignalPcan(SignalPcanParams *params);
int16_t WideDynamicFunction(const uint32_t x, const int16_t *lut);
uint32_t PcanShrink(const uint32_t x);

#endif // SIGNAL_PCAN_H