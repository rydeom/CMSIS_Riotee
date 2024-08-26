#include <stdio.h>
#include <stdint.h>
#include "micro_speech_tensors.h"
#include "printf.h"
#include "arm_nn_types.h"

uint8_t *MICRO_SPEECH_get_tensor(const MICRO_SPEECH_Tensors *tensors, int index){
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

void MICRO_SPEECH_get_tensor_size_0(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_0 *)MICRO_SPEECH_get_tensor(tensors, 0))->shape[0];
}

void MICRO_SPEECH_get_tensor_size_1(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_1 *)MICRO_SPEECH_get_tensor(tensors, 1))->shape[0];
}

void MICRO_SPEECH_get_tensor_size_2(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_2 *)MICRO_SPEECH_get_tensor(tensors, 2))->shape[0];
    dims->h = ((MICRO_SPEECH_Tensor_2 *)MICRO_SPEECH_get_tensor(tensors, 2))->shape[1];
    dims->w = ((MICRO_SPEECH_Tensor_2 *)MICRO_SPEECH_get_tensor(tensors, 2))->shape[2];
    dims->c = ((MICRO_SPEECH_Tensor_2 *)MICRO_SPEECH_get_tensor(tensors, 2))->shape[3];
}

void MICRO_SPEECH_get_tensor_size_3(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_3 *)MICRO_SPEECH_get_tensor(tensors, 3))->shape[0];
    dims->h = ((MICRO_SPEECH_Tensor_3 *)MICRO_SPEECH_get_tensor(tensors, 3))->shape[1];
}

void MICRO_SPEECH_get_tensor_size_4(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_4 *)MICRO_SPEECH_get_tensor(tensors, 4))->shape[0];
    dims->h = ((MICRO_SPEECH_Tensor_4 *)MICRO_SPEECH_get_tensor(tensors, 4))->shape[1];
    dims->w = ((MICRO_SPEECH_Tensor_4 *)MICRO_SPEECH_get_tensor(tensors, 4))->shape[2];
    dims->c = ((MICRO_SPEECH_Tensor_4 *)MICRO_SPEECH_get_tensor(tensors, 4))->shape[3];
}

void MICRO_SPEECH_get_tensor_size_5(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_5 *)MICRO_SPEECH_get_tensor(tensors, 5))->shape[0];
}

void MICRO_SPEECH_get_tensor_size_6(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_6 *)MICRO_SPEECH_get_tensor(tensors, 6))->shape[0];
    dims->h = ((MICRO_SPEECH_Tensor_6 *)MICRO_SPEECH_get_tensor(tensors, 6))->shape[1];
}

void MICRO_SPEECH_get_tensor_size_7(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_7 *)MICRO_SPEECH_get_tensor(tensors, 7))->shape[0];
    dims->h = ((MICRO_SPEECH_Tensor_7 *)MICRO_SPEECH_get_tensor(tensors, 7))->shape[1];
}

void MICRO_SPEECH_get_tensor_size_8(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_8 *)MICRO_SPEECH_get_tensor(tensors, 8))->shape[0];
    dims->h = ((MICRO_SPEECH_Tensor_8 *)MICRO_SPEECH_get_tensor(tensors, 8))->shape[1];
    dims->w = ((MICRO_SPEECH_Tensor_8 *)MICRO_SPEECH_get_tensor(tensors, 8))->shape[2];
    dims->c = ((MICRO_SPEECH_Tensor_8 *)MICRO_SPEECH_get_tensor(tensors, 8))->shape[3];
}

void MICRO_SPEECH_get_tensor_size_9(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims){
    dims->n = ((MICRO_SPEECH_Tensor_9 *)MICRO_SPEECH_get_tensor(tensors, 9))->shape[0];
    dims->h = ((MICRO_SPEECH_Tensor_9 *)MICRO_SPEECH_get_tensor(tensors, 9))->shape[1];
}

void MICRO_SPEECH_get_tensor_size(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims, int index){
    switch(index){
        case 0:
            MICRO_SPEECH_get_tensor_size_0(tensors, dims);
            break;
        case 1:
            MICRO_SPEECH_get_tensor_size_1(tensors, dims);
            break;
        case 2:
            MICRO_SPEECH_get_tensor_size_2(tensors, dims);
            break;
        case 3:
            MICRO_SPEECH_get_tensor_size_3(tensors, dims);
            break;
        case 4:
            MICRO_SPEECH_get_tensor_size_4(tensors, dims);
            break;
        case 5:
            MICRO_SPEECH_get_tensor_size_5(tensors, dims);
            break;
        case 6:
            MICRO_SPEECH_get_tensor_size_6(tensors, dims);
            break;
        case 7:
            MICRO_SPEECH_get_tensor_size_7(tensors, dims);
            break;
        case 8:
            MICRO_SPEECH_get_tensor_size_8(tensors, dims);
            break;
        case 9:
            MICRO_SPEECH_get_tensor_size_9(tensors, dims);
            break;
    }
}

