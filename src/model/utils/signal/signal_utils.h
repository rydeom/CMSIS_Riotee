#ifndef SIGNAL_UTILS_H
#define SIGNAL_UTILS_H

#include <stdint.h>

typedef struct Complex
{
    int16_t real;
    int16_t imag;
} Complex;

int16_t MaxAbs16(const int16_t *input, int size);
uint32_t MostSignificantBit32(uint32_t x);
uint32_t MostSignificantBit64(uint64_t x);
uint16_t Sqrt32(uint32_t num);
uint32_t Sqrt64(uint64_t num);
uint32_t Log32(uint32_t x, uint32_t out_scale);
uint32_t Log2FractionPart32(uint32_t x, uint32_t log2x);

#endif // SIGNAL_UTILS_H