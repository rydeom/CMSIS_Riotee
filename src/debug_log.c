#include "debug_log.h"
#include "printf.h"

extern void DebugLog(const char *format, ...)
{
    va_list args;
    va_start(args, format);
    vprintf(format, args);
    va_end(args);
}