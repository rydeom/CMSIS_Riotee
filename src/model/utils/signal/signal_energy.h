#ifndef SIGNAL_ENERGY_H
#define SIGNAL_ENERGY_H

#include <stdint.h>
#include "layer_data.h"

typedef struct SignalEnergyParams
{
    const struct Complex *input;
    uint32_t *output;
    int32_t start_index;
    int32_t end_index;
} SignalEnergyParams;

void apply_energy(const SignalEnergyParams *params);

#endif // SIGNAL_ENERGY_H