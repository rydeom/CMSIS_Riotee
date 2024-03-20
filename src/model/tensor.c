#include <stdio.h>
#include <stdint.h>
#include "tensor.h"
#include "printf.h"
#include "arm_nn_types.h"

uint8_t *get_tensor(Tensors *tensors, int index){
    uint32_t sizes[10] = {0,
sizeof(tensors->tensor_0),
sizeof(tensors->tensor_1) + sizeof(tensors->tensor_0),
sizeof(tensors->tensor_2) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1),
sizeof(tensors->tensor_3) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2),
sizeof(tensors->tensor_4) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3),
sizeof(tensors->tensor_5) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4),
sizeof(tensors->tensor_6) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5),
sizeof(tensors->tensor_7) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6),
sizeof(tensors->tensor_8) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7)};
    return (uint8_t *)tensors + sizes[index];
}

void get_tensor_size_0(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_0 *)get_tensor(tensors, 0))->shape[0];
    dims->h = ((Tensor_0 *)get_tensor(tensors, 0))->shape[1];
}

void get_tensor_size_1(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_1 *)get_tensor(tensors, 1))->shape[0];
}

void get_tensor_size_2(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_2 *)get_tensor(tensors, 2))->shape[0];
    dims->h = ((Tensor_2 *)get_tensor(tensors, 2))->shape[1];
}

void get_tensor_size_3(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_3 *)get_tensor(tensors, 3))->shape[0];
}

void get_tensor_size_4(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_4 *)get_tensor(tensors, 4))->shape[0];
    dims->h = ((Tensor_4 *)get_tensor(tensors, 4))->shape[1];
}

void get_tensor_size_5(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_5 *)get_tensor(tensors, 5))->shape[0];
}

void get_tensor_size_6(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_6 *)get_tensor(tensors, 6))->shape[0];
    dims->h = ((Tensor_6 *)get_tensor(tensors, 6))->shape[1];
}

void get_tensor_size_7(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_7 *)get_tensor(tensors, 7))->shape[0];
    dims->h = ((Tensor_7 *)get_tensor(tensors, 7))->shape[1];
}

void get_tensor_size_8(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_8 *)get_tensor(tensors, 8))->shape[0];
    dims->h = ((Tensor_8 *)get_tensor(tensors, 8))->shape[1];
}

void get_tensor_size_9(Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((Tensor_9 *)get_tensor(tensors, 9))->shape[0];
    dims->h = ((Tensor_9 *)get_tensor(tensors, 9))->shape[1];
}

void get_tensor_size(Tensors *tensors, cmsis_nn_dims *dims, int index){
    switch(index){
        case 0:
            get_tensor_size_0(tensors, dims);
            break;
        case 1:
            get_tensor_size_1(tensors, dims);
            break;
        case 2:
            get_tensor_size_2(tensors, dims);
            break;
        case 3:
            get_tensor_size_3(tensors, dims);
            break;
        case 4:
            get_tensor_size_4(tensors, dims);
            break;
        case 5:
            get_tensor_size_5(tensors, dims);
            break;
        case 6:
            get_tensor_size_6(tensors, dims);
            break;
        case 7:
            get_tensor_size_7(tensors, dims);
            break;
        case 8:
            get_tensor_size_8(tensors, dims);
            break;
        case 9:
            get_tensor_size_9(tensors, dims);
            break;
    }
}

