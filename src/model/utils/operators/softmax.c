#include "softmax.h"
#include <arm_nnfunctions.h>
#include "math.h"
#include "utils.h"
#include <stdint.h>
#include "depthwise_conv.h"

int minHere(int a, int b)
{
    return a < b ? a : b;
}

void softmax(const SoftmaxParams params)
{
    static const int kScaledDiffIntegerBits = 5;
    const double max_real_multiplier = (1LL << 31) - 1.0;
    const double input_beta_real_multiplier =
        fmin(params.beta * params.input_scale * (1 << (31 - kScaledDiffIntegerBits)),
             max_real_multiplier);
    int input_left_shift;
    int32_t quantized_multiplier;
    QuantizeMultiplier(input_beta_real_multiplier, &quantized_multiplier, &input_left_shift);

    const double max_input_rescaled =
        1.0 * ((1 << kScaledDiffIntegerBits) - 1) *
        (1LL << (31 - kScaledDiffIntegerBits)) /
        (1LL << input_left_shift);
    int diff_min = -1.0 * (int)floor(max_input_rescaled);
    const int trailing_dim = params.input_shape_size - 1;
    const int outer_size = flatSizeSkipDim(
        params.input_shape_size,
        params.input_shape,
        trailing_dim);
    const int depth = minHere(params.input_shape[trailing_dim], params.output_shape[trailing_dim]);

    arm_softmax_s8(
        params.input,
        outer_size,
        depth,
        quantized_multiplier,
        input_left_shift,
        diff_min,
        params.output);
}