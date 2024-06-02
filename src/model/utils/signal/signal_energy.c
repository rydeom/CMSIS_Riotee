#include "signal_energy.h"
#include "layer_data.h"

void apply_energy(const SignalEnergyParams *params)
{
    for (int i = params->start_index; i < params->end_index; i++)
    {
        const int16_t real = params->input[i].real; // 15 bits
        const int16_t imag = params->input[i].imag; // 15 bits
        // 31 bits
        params->output[i] = ((int32_t)real * real) + ((int32_t)imag * imag);
    }
}