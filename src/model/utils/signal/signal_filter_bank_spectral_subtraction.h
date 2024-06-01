#ifndef SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION_H
#define SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION_H

#include <stdint.h>
#include <stdbool.h>

typedef struct SpectralSubtractionConfig
{
    int32_t num_channels;
    uint32_t smoothing;
    uint32_t one_minus_smoothing;
    uint32_t min_signal_remaining;
    uint32_t alternate_smoothing;
    uint32_t alternate_one_minus_smoothing;
    uint32_t smoothing_bits;
    uint32_t spectral_subtraction_bits;
    bool clamping;
} SpectralSubtractionConfig;

typedef struct SignalFilterBankSpectralSubtractionParams
{
    uint32_t *input;
    uint32_t *output;

    SpectralSubtractionConfig *config;
    uint32_t *noise_estimate;
    uint32_t noise_estimate_size;
} SignalFilterBankSpectralSubtractionParams;

#endif // SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION_H