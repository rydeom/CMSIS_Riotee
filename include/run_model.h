#ifndef RUN_MODEL_H
#define RUN_MODEL_H
#include <stdint.h>
#include "arm_nnfunctions.h"
#include <riotee.h>
#include "layer_data.h"

void run_frame(union LayersPuts *input_layer, union LayersPuts *output_layer);
riotee_rc_t run_model(const int16_t *audio_data, const size_t audio_data_size);
void print_bytes(void *ptr, int size);

#endif // RUN_MODEL_H