#ifndef SIGNAL_BANK_SQUARE_ROOT_H
#define SIGNAL_BANK_SQUARE_ROOT_H

#include <stdint.h>

typedef struct SignalBankSquareRootParams
{
    uint64_t *input;
    int scale_bits;
    uint32_t *output;

    int32_t num_channels;
} SignalBankSquareRootParams;

void SignalBankSquareRoot(const SignalBankSquareRootParams *params);

#endif // SIGNAL_BANK_SQUARE_ROOT_H