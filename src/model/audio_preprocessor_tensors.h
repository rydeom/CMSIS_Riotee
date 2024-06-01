#ifndef AUDIO_PREPROCESSOR_TENSORS_H
#define AUDIO_PREPROCESSOR_TENSORS_H

#include <stdio.h>
#include <stdint.h>
#include "arm_nn_types.h"
#include "tensor.h"

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
} AUDIO_PREPROCESSOR_Tensor_0;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[960];
} AUDIO_PREPROCESSOR_Tensor_1;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[64];
} AUDIO_PREPROCESSOR_Tensor_2;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[20];
} AUDIO_PREPROCESSOR_Tensor_3;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[0];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_4;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_5;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_6;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_7;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[250];
} AUDIO_PREPROCESSOR_Tensor_8;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[82];
} AUDIO_PREPROCESSOR_Tensor_9;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[82];
} AUDIO_PREPROCESSOR_Tensor_10;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[82];
} AUDIO_PREPROCESSOR_Tensor_11;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[632];
} AUDIO_PREPROCESSOR_Tensor_12;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[632];
} AUDIO_PREPROCESSOR_Tensor_13;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[0];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_14;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_15;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[0];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_16;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[0];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_17;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[0];
    unsigned char data[4];
} AUDIO_PREPROCESSOR_Tensor_18;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
} AUDIO_PREPROCESSOR_Tensor_19;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_20;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_21;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[0];
} AUDIO_PREPROCESSOR_Tensor_22;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_23;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_24;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_25;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_26;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_27;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_28;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_29;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_30;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_31;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_32;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_33;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_34;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_35;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_36;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_37;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_38;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_39;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_40;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_41;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
} AUDIO_PREPROCESSOR_Tensor_42;

typedef struct {
    AUDIO_PREPROCESSOR_Tensor_0 tensor_0;
    AUDIO_PREPROCESSOR_Tensor_1 tensor_1;
    AUDIO_PREPROCESSOR_Tensor_2 tensor_2;
    AUDIO_PREPROCESSOR_Tensor_3 tensor_3;
    AUDIO_PREPROCESSOR_Tensor_4 tensor_4;
    AUDIO_PREPROCESSOR_Tensor_5 tensor_5;
    AUDIO_PREPROCESSOR_Tensor_6 tensor_6;
    AUDIO_PREPROCESSOR_Tensor_7 tensor_7;
    AUDIO_PREPROCESSOR_Tensor_8 tensor_8;
    AUDIO_PREPROCESSOR_Tensor_9 tensor_9;
    AUDIO_PREPROCESSOR_Tensor_10 tensor_10;
    AUDIO_PREPROCESSOR_Tensor_11 tensor_11;
    AUDIO_PREPROCESSOR_Tensor_12 tensor_12;
    AUDIO_PREPROCESSOR_Tensor_13 tensor_13;
    AUDIO_PREPROCESSOR_Tensor_14 tensor_14;
    AUDIO_PREPROCESSOR_Tensor_15 tensor_15;
    AUDIO_PREPROCESSOR_Tensor_16 tensor_16;
    AUDIO_PREPROCESSOR_Tensor_17 tensor_17;
    AUDIO_PREPROCESSOR_Tensor_18 tensor_18;
    AUDIO_PREPROCESSOR_Tensor_19 tensor_19;
    AUDIO_PREPROCESSOR_Tensor_20 tensor_20;
    AUDIO_PREPROCESSOR_Tensor_21 tensor_21;
    AUDIO_PREPROCESSOR_Tensor_22 tensor_22;
    AUDIO_PREPROCESSOR_Tensor_23 tensor_23;
    AUDIO_PREPROCESSOR_Tensor_24 tensor_24;
    AUDIO_PREPROCESSOR_Tensor_25 tensor_25;
    AUDIO_PREPROCESSOR_Tensor_26 tensor_26;
    AUDIO_PREPROCESSOR_Tensor_27 tensor_27;
    AUDIO_PREPROCESSOR_Tensor_28 tensor_28;
    AUDIO_PREPROCESSOR_Tensor_29 tensor_29;
    AUDIO_PREPROCESSOR_Tensor_30 tensor_30;
    AUDIO_PREPROCESSOR_Tensor_31 tensor_31;
    AUDIO_PREPROCESSOR_Tensor_32 tensor_32;
    AUDIO_PREPROCESSOR_Tensor_33 tensor_33;
    AUDIO_PREPROCESSOR_Tensor_34 tensor_34;
    AUDIO_PREPROCESSOR_Tensor_35 tensor_35;
    AUDIO_PREPROCESSOR_Tensor_36 tensor_36;
    AUDIO_PREPROCESSOR_Tensor_37 tensor_37;
    AUDIO_PREPROCESSOR_Tensor_38 tensor_38;
    AUDIO_PREPROCESSOR_Tensor_39 tensor_39;
    AUDIO_PREPROCESSOR_Tensor_40 tensor_40;
    AUDIO_PREPROCESSOR_Tensor_41 tensor_41;
    AUDIO_PREPROCESSOR_Tensor_42 tensor_42;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Tensors;

uint8_t *AUDIO_PREPROCESSOR_get_tensor(const AUDIO_PREPROCESSOR_Tensors *tensors, int index);

void AUDIO_PREPROCESSOR_get_tensor_size_0(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_1(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_2(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_3(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_4(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_5(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_6(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_7(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_8(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_9(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_10(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_11(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_12(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_13(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_14(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_15(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_16(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_17(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_18(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_19(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_20(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_21(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_22(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_23(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_24(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_25(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_26(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_27(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_28(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_29(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_30(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_31(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_32(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_33(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_34(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_35(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_36(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_37(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_38(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_39(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_40(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_41(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size_42(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims);

void AUDIO_PREPROCESSOR_get_tensor_size(AUDIO_PREPROCESSOR_Tensors *tensors, cmsis_nn_dims *dims, int index);

#endif // AUDIO_PREPROCESSOR_TENSORS_H
