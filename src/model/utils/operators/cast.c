#include <stdint.h>
#include "cast.h"

void copyCastUint32ToInt32(uint32_t *src, int32_t *dst, int size)
{
    for (int i = 0; i < size; i++)
    {
        dst[i] = (int32_t)src[i];
    }
}

void copyCastInt32ToUint32(int32_t *src, uint32_t *dst, int size)
{
    for (int i = 0; i < size; i++)
    {
        dst[i] = (uint32_t)src[i];
    }
}

void copyCastInt16ToInt32(int16_t *src, int32_t *dst, int size)
{
    for (int i = 0; i < size; i++)
    {
        dst[i] = (int32_t)src[i];
    }
}

void copyCastInt32ToInt8(int32_t *src, int8_t *dst, int size)
{
    for (int i = 0; i < size; i++)
    {
        dst[i] = (int8_t)src[i];
    }
}
