#include "signal_pcan.h"
#include "signal_utils.h"
#include <stdint.h>
#include <string.h>

void SignalPcan(SignalPcanParams *params)
{
    const uint32_t num_channels = params->num_channels;
    const int32_t snr_shift = params->snr_shift;
    const int16_t *gain_lut = params->gain_lut;
    const uint32_t gain_lut_size = params->gain_lut_size;
    const uint32_t *noise_estimate = params->noise_estimate;
    const uint32_t noise_estimate_size = params->noise_estimate_size;
    const uint32_t *input = params->input;
    uint32_t *output = params->output;
    memcpy(output, input, num_channels * sizeof(uint32_t));

    int i;
    for (i = 0; i < num_channels; ++i)
    {
        // The gain has gain_bits fractional bits, and filterbank_output[i] has
        // -input_correction_bits fractional bits. The product is shifted so that
        // the resulting snr has kPcanSnrBits fractional bits.
        const uint32_t gain = WideDynamicFunction(noise_estimate[i], gain_lut);
        const uint32_t snr = ((uint64_t)output[i] * gain) >> snr_shift;
        // Result has kPcanOutputBits fractional bits.
        // NOTE: This assumes filterbank_output_scale = 1 << kPcanOutputBits.
        output[i] = PcanShrink(snr);
    }
}

int16_t WideDynamicFunction(const uint32_t x, const int16_t *lut)
{
    if (x <= 2)
    {
        return lut[x];
    }

    const int16_t interval = MostSignificantBit32(x);
    lut += 4 * interval - 6;

    const int16_t frac =
        ((interval < 11) ? (x << (11 - interval)) : (x >> (interval - 11))) &
        0x3FF;

    int32_t result = ((int32_t)lut[2] * frac) >> 5;
    result += (int32_t)((uint32_t)lut[1] << 5);
    result *= frac;
    result = (result + (1 << 14)) >> 15;
    result += lut[0];
    return (int16_t)result;
}

uint32_t PcanShrink(const uint32_t x)
{
    if (x < (2 << kPcanSnrBits))
    {
        // Compute x^2 / 4.
        return (x * x) >> (2 + 2 * kPcanSnrBits - kPcanOutputBits);
    }
    else
    {
        // Compute x - 1.
        return (x >> (kPcanSnrBits - kPcanOutputBits)) - (1 << kPcanOutputBits);
    }
}