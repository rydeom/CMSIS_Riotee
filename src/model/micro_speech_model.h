#ifndef MICRO_SPEECH_MODEL_H
#define MICRO_SPEECH_MODEL_H

#include <stdio.h>
#include <stdint.h>
#include "micro_speech_tensors.h"
#include "micro_speech_operators.h"

typedef struct {
    uint32_t version;
    MICRO_SPEECH_Tensors tensors;
    MICRO_SPEECH_Operators operators;
    int32_t inputs[1];
    int32_t outputs[1];
} MICRO_SPEECH_model;

extern const unsigned char micro_speech_model_data_raw[];

#endif // MICRO_SPEECH_MODEL_H
