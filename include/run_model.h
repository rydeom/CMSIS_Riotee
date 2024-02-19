#ifndef RUN_MODEL_H
#define RUN_MODEL_H
#include <stdint.h>
#include "arm_nnfunctions.h"

void run_model(float input);

int8_t quantize(float input, float scale, int64_t zero_point);

#endif // RUN_MODEL_H