#include "signal_bank_square_root.h"
#include "signal_utils.h"

void SignalBankSquareRoot(const SignalBankSquareRootParams *params)
{
    for (int i = 0; i < params->num_channels; ++i)
    {
        uint64_t *input = params->input;
        uint32_t *output = params->output;
        output[i] = Sqrt64(input[i]) >> params->scale_bits;
    }
}