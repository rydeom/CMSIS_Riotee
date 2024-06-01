#include <stdint.h>
#include "cast.h"

void copyCastUint32ToInt32(uint32_t *src, int32_t *dst, int size)
{
    for (int i = 0; i < size; i++)
    {
        dst[i] = (int32_t)src[i];
    }
}
