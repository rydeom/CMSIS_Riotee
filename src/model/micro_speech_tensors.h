#ifndef MICRO_SPEECH_TENSORS_H
#define MICRO_SPEECH_TENSORS_H

#include <stdio.h>
#include <stdint.h>
#include "arm_nn_types.h"
#include "tensor.h"

typedef struct {
    float scale[8];
    int64_t zero_point[8];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_0;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    MICRO_SPEECH_QuantizationParameters_0 quantization;
    unsigned char data[32];
} MICRO_SPEECH_Tensor_0;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_1;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    MICRO_SPEECH_QuantizationParameters_1 quantization;
    unsigned char data[16];
} MICRO_SPEECH_Tensor_1;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_2;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[4];
    MICRO_SPEECH_QuantizationParameters_2 quantization;
} MICRO_SPEECH_Tensor_2;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_3;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    MICRO_SPEECH_QuantizationParameters_3 quantization;
} MICRO_SPEECH_Tensor_3;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_4;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[4];
    MICRO_SPEECH_QuantizationParameters_4 quantization;
} MICRO_SPEECH_Tensor_4;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    unsigned char data[16];
} MICRO_SPEECH_Tensor_5;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_6;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    MICRO_SPEECH_QuantizationParameters_6 quantization;
} MICRO_SPEECH_Tensor_6;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_7;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    MICRO_SPEECH_QuantizationParameters_7 quantization;
    unsigned char data[16000];
} MICRO_SPEECH_Tensor_7;

typedef struct {
    float scale[8];
    int64_t zero_point[8];
    int32_t quantized_dimension;
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_8;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[4];
    MICRO_SPEECH_QuantizationParameters_8 quantization;
    unsigned char data[640];
} MICRO_SPEECH_Tensor_8;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) MICRO_SPEECH_QuantizationParameters_9;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    MICRO_SPEECH_QuantizationParameters_9 quantization;
} MICRO_SPEECH_Tensor_9;

typedef struct {
    MICRO_SPEECH_Tensor_0 tensor_0;
    MICRO_SPEECH_Tensor_1 tensor_1;
    MICRO_SPEECH_Tensor_2 tensor_2;
    MICRO_SPEECH_Tensor_3 tensor_3;
    MICRO_SPEECH_Tensor_4 tensor_4;
    MICRO_SPEECH_Tensor_5 tensor_5;
    MICRO_SPEECH_Tensor_6 tensor_6;
    MICRO_SPEECH_Tensor_7 tensor_7;
    MICRO_SPEECH_Tensor_8 tensor_8;
    MICRO_SPEECH_Tensor_9 tensor_9;
} __attribute__((__packed__)) MICRO_SPEECH_Tensors;

uint8_t *MICRO_SPEECH_get_tensor(const MICRO_SPEECH_Tensors *tensors, int index);

void MICRO_SPEECH_get_tensor_size_0(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_1(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_2(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_3(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_4(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_5(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_6(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_7(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_8(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size_9(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims);

void MICRO_SPEECH_get_tensor_size(MICRO_SPEECH_Tensors *tensors, cmsis_nn_dims *dims, int index);

#endif // MICRO_SPEECH_TENSORS_H
