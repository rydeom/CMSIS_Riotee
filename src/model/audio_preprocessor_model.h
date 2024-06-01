#ifndef AUDIO_PREPROCESSOR_MODEL_H
#define AUDIO_PREPROCESSOR_MODEL_H

#include <stdio.h>
#include <stdint.h>
#include "audio_preprocessor_tensors.h"
#include "audio_preprocessor_operators.h"

typedef struct {
    uint32_t version;
    AUDIO_PREPROCESSOR_Tensors tensors;
    AUDIO_PREPROCESSOR_Operators operators;
    int32_t inputs[1];
    int32_t outputs[1];
} AUDIO_PREPROCESSOR_model;

extern const unsigned char audio_preprocessor_model_data_raw[];

#endif // AUDIO_PREPROCESSOR_MODEL_H
