#ifndef LAYER_DATA_H
#define LAYER_DATA_H

#include <stdint.h>
#include "signal_utils.h"

typedef union LayersPuts
{
    int16_t layer_0_input[480];
    int16_t layer_0_output[480];
    int16_t layer_1_input[480];
    int16_t layer_1_output[480];
    int16_t layer_2_input[480];
    int16_t layer_2_output[480];
    int16_t layer_3_input[480];
    struct Complex layer_3_output[257];
    struct Complex layer_4_input[257];
    uint32_t layer_4_output[257];
    uint32_t layer_5_input[257];
    int32_t layer_5_output[257];
    int32_t layer_6_input[257];
    int32_t layer_6_output[236];
    int32_t layer_7_input[236];
    int32_t layer_7_output[257];
    int32_t layer_8_input[257];
    uint32_t layer_8_output[257];
    uint32_t layer_9_input[257];
    uint64_t layer_9_output[40];
    uint64_t layer_10_input[40];
    uint32_t layer_10_output[40];
    uint32_t layer_11_input[40];
    uint32_t layer_11_output[40];
    uint32_t layer_12_input[40];
    uint32_t layer_12_output[40];
    uint32_t layer_13_input[40];
    int16_t layer_13_output[40];
    int16_t layer_14_input[40];
    int32_t layer_14_output[40];
    int32_t layer_15_input[40];
    int32_t layer_15_output[40];
    int32_t layer_16_input[40];
    int32_t layer_16_output[40];
    int32_t layer_17_input[40];
    int32_t layer_17_output[40];
    int32_t layer_18_input[40];
    int32_t layer_18_output[40];
    int32_t layer_19_input[40];
    int32_t layer_19_output[40];
    int32_t layer_20_input[40];
    int32_t layer_20_output[40];
    int32_t layer_21_input[40];
    int8_t layer_21_output[40];
} LayersPuts;

#endif // LAYER_DATA_H