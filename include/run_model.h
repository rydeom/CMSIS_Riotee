#ifndef RUN_MODEL_H
#define RUN_MODEL_H
#include <stdint.h>
#include "arm_nnfunctions.h"
#include <riotee.h>

union LayersPuts
{
    int8_t layer_1_input[1];
    int8_t layer_1_output[16];
    int8_t layer_2_input[16];
    int8_t layer_2_output[256];
    int8_t layer_3_input[256];
    int8_t layer_3_output[1];
};

riotee_rc_t run_model(float input);

arm_cmsis_nn_status execute_layer_1(Model *model,
                                    union LayersPuts *input_layer,
                                    union LayersPuts *output_layer);

arm_cmsis_nn_status execute_layer_2(Model *model,
                                    union LayersPuts *input_layer,
                                    union LayersPuts *output_layer);

arm_cmsis_nn_status execute_layer_3(Model *model,
                                    union LayersPuts *input_layer,
                                    union LayersPuts *output_layer);

#endif // RUN_MODEL_H