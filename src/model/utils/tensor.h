#ifndef TENSOR_H
#define TENSOR_H

typedef enum
{
    FLOAT32,
    FLOAT16,
    INT32,
    UINT8,
    INT64,
    STRING,
    BOOL,
    INT16,
    COMPLEX64,
    INT8,
    FLOAT64,
    COMPLEX128,
    UINT64,
    RESOURCE,
    VARIANT,
    UINT32,
    UINT16,
    INT4,
} TensorType;

#endif // TENSOR_H