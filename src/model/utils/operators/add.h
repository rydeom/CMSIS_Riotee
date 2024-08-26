#ifndef ADD_H
#define ADD_H

#include <stdint.h>
#include "utils.h"
#include "printf.h"

typedef struct AddParams
{
    const int32_t *input1_data;
    const int32_t *input1_dims;
    int32_t input1_dims_count;
    const int32_t *input2_data;
    const int32_t *input2_dims;
    int32_t input2_dims_count;
    int32_t *output_data;

    int32_t activation_min;
    int32_t activation_max;
    int32_t flat_size;
} AddParams;

void Add(const AddParams *params);

#endif // ADD_H