#ifndef MODEL_H
#define MODEL_H

#include <stdio.h>
#include <stdint.h>
#include "tensor.h"
#include "operator.h"

typedef struct {
    uint32_t version;
    Tensors tensors;
    Operators operators;
    int32_t inputs[1];
    int32_t outputs[1];
} Model;

extern const unsigned char model_data_raw[];
void print_model_pointer(Model *model);

#endif // MODEL_H
