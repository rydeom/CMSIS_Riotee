#include "signal_utils.h"

int16_t MaxAbs16(const int16_t *input, int size)
{
    int16_t max = 0;
    for (int i = 0; i < size; i++)
    {
        const int16_t value = input[i];
        if (value > max)
        {
            max = value;
        }
        else if (-value > max)
        {
            max = -value;
        }
    }
    return max;
}

uint32_t MostSignificantBit32(uint32_t x)
{
    if (x)
    {
        return 32 - __builtin_clz(x);
    }
    return 32;
}

uint32_t MostSignificantBit64(uint64_t x)
{
    if (x)
    {
        return 64 - __builtin_clzll(x);
    }
    return 64;
}

uint16_t Sqrt32(uint32_t num)
{
    if (num == 0)
    {
        return 0;
    };
    uint32_t res = 0;
    int max_bit_number = 32 - MostSignificantBit32(num);
    max_bit_number |= 1;
    uint32_t bit = 1u << (31 - max_bit_number);
    int iterations = (31 - max_bit_number) / 2 + 1;
    while (iterations--)
    {
        if (num >= res + bit)
        {
            num -= res + bit;
            res = (res >> 1U) + bit;
        }
        else
        {
            res >>= 1U;
        }
        bit >>= 2U;
    }
    // Do rounding - if we have the bits.
    if (num > res && res != 0xFFFF)
        ++res;
    return res;
}

uint32_t Sqrt64(uint64_t num)
{
    // Take a shortcut and just use 32 bit operations if the upper word is all
    // clear. This will cause a slight off by one issue for numbers close to 2^32,
    // but it probably isn't going to matter (and gives us a big performance win).
    if ((num >> 32) == 0)
    {
        return Sqrt32((uint32_t)(num));
    }
    uint64_t res = 0;
    int max_bit_number = 64 - MostSignificantBit64(num);
    max_bit_number |= 1;
    uint64_t bit = UINT64_C(1) << (63 - max_bit_number);
    int iterations = (63 - max_bit_number) / 2 + 1;
    while (iterations--)
    {
        if (num >= res + bit)
        {
            num -= res + bit;
            res = (res >> 1U) + bit;
        }
        else
        {
            res >>= 1U;
        }
        bit >>= 2U;
    }
    // Do rounding - if we have the bits.
    if (num > res && res != 0xFFFFFFFFLL)
        ++res;
    return res;
}