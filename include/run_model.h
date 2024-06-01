#ifndef RUN_MODEL_H
#define RUN_MODEL_H
#include <stdint.h>
#include "arm_nnfunctions.h"
#include <riotee.h>

riotee_rc_t run_model(const int16_t *audio_data, const size_t audio_data_size);
void print_bytes(void *ptr, int size);

#endif // RUN_MODEL_H