#include "signal_filter_bank_spectral_subtraction.h"
#include <string.h>
#include <stdbool.h>

void SignalFilterBankSpectralSubtraction(SignalFilterBankSpectralSubtractionParams *params)
{
    memset(params->noise_estimate, 0, sizeof(uint32_t) * params->config->num_channels);

    const bool data_clamping = params->config->clamping;
    const int smoothing_bits = params->config->smoothing_bits;
    const int num_channels = params->config->num_channels;

    for (int i = 0; i < num_channels; ++i)
    {
        uint32_t smoothing;
        uint32_t one_minus_smoothing;
        if ((i & 1) == 0)
        {
            smoothing = params->config->smoothing;
            one_minus_smoothing = params->config->one_minus_smoothing;
        }
        else
        { // Use alternate smoothing coefficient on odd-index channels.
            smoothing = params->config->alternate_smoothing;
            one_minus_smoothing = params->config->alternate_one_minus_smoothing;
        }

        // Scale up signal[i] for smoothing filter computation.
        const uint32_t signal_scaled_up = params->input[i] << smoothing_bits;
        params->noise_estimate[i] =
            (((uint64_t)(signal_scaled_up)*smoothing) +
             ((uint64_t)(params->noise_estimate[i]) * one_minus_smoothing)) >>
            params->config->spectral_subtraction_bits;

        uint32_t estimate_scaled_up = params->noise_estimate[i];
        // Make sure that we can't get a negative value for the signal - estimate.
        if (estimate_scaled_up > signal_scaled_up)
        {
            estimate_scaled_up = signal_scaled_up;
            if (data_clamping)
            {
                params->noise_estimate[i] = estimate_scaled_up;
            }
        }
        const uint32_t floor =
            ((uint64_t)(params->input[i]) * params->config->min_signal_remaining) >>
            params->config->spectral_subtraction_bits;
        const uint32_t subtracted =
            (signal_scaled_up - estimate_scaled_up) >> smoothing_bits;
        params->output[i] = subtracted > floor ? subtracted : floor;
    }
}