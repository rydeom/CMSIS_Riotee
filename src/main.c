
#include "riotee.h"
#include "riotee_gpio.h"
#include "riotee_timing.h"
#include "riotee_adc.h"
#include "riotee_uart.h"
#include "printf.h"

#include "shtc3.h"
#include "vm1010.h"

#include "run_model.h"
#include <math.h>

#define PIN_MICROPHONE_DISABLE PIN_D5
#define MICROPHONE_SAMPLES 16000

void suspend_callback(void) {}

void startup_callback(void)
{
    riotee_gpio_cfg_output(PIN_MICROPHONE_DISABLE);
    riotee_gpio_set(PIN_MICROPHONE_DISABLE);
}

/* This gets called after every reset */
void reset_callback(void)
{
    riotee_gpio_cfg_output(PIN_LED_CTRL);
    /* Required for VM1010 */
    riotee_adc_init();

    vm1010_cfg_t cfg = {
        .pin_mode = PIN_D10,
        .pin_dout = PIN_D4,
        .pin_vout = PIN_D2,
        .pin_vbias = PIN_D3};
    vm1010_init(&cfg);
}

void turnoff_callback(void)
{
    riotee_gpio_clear(PIN_LED_CTRL);
    /* Disable the microphone */
    riotee_gpio_set(PIN_MICROPHONE_DISABLE);
    vm1010_exit();
}
int16_t samples[MICROPHONE_SAMPLES];

/* Remove mean and scale audio to fit int16 range */
void prescale_audio(int16_t *dst, const size_t n_samples)
{
    int val_min = dst[0];
    int val_max = dst[0];
    int val_sum = 0;

    for (unsigned int i = 0; i < n_samples; i++)
    {
        if (dst[i] < val_min)
            val_min = dst[i];
        if (dst[i] > val_max)
            val_max = dst[i];
        val_sum += dst[i];
    }
    int val_mean = val_sum / (int)n_samples;
    int max_trans = val_max - val_mean;
    int min_trans = val_mean - val_min;
    int scale = max_trans;

    if (min_trans > scale)
        scale = min_trans;

    for (unsigned int i = 0; i < n_samples; i++)
    {
        int tmp = (((int)dst[i]) - val_mean) * 32767;

        dst[i] = (int16_t)(tmp / scale);
    }
}
int main(void)
{
    riotee_uart_init(PIN_D1, RIOTEE_UART_BAUDRATE_115200);
    riotee_gpio_cfg_output(PIN_D8);
    riotee_gpio_cfg_output(PIN_D9);

    int rc;
    printf("Starting up\r\n");
    riotee_wait_cap_charged();

    for (;;)
    {
        // printf("Starting up\r\n");
        riotee_gpio_set(PIN_D8);
        riotee_sleep_ms(5);
        riotee_gpio_clear(PIN_D8);

        /* Switch on microphone */
        riotee_gpio_clear(PIN_MICROPHONE_DISABLE);
        /* Wait for 2ms for V_BIAS to come up */
        riotee_sleep_ticks(70);

        /* Wait for wake-on-sound signal from microphone */
        if ((rc = vm1010_wait4sound()) != RIOTEE_SUCCESS)
        {
            printf("Error while waiting for sound: %d", rc);
            riotee_gpio_set(PIN_MICROPHONE_DISABLE);
            continue;
        }
        /* Wait until microphone can be sampled (see VM1010 datasheet)*/
        riotee_sleep_ticks(5);
        // printf("Sampling..");
        rc = vm1010_sample(samples, MICROPHONE_SAMPLES, 2);
        /* Disable the microphone */
        riotee_gpio_set(PIN_MICROPHONE_DISABLE);
        if (rc != RIOTEE_SUCCESS)
        {
            printf("Error during sampling: %d", rc);
        }
        riotee_gpio_set(PIN_D8);
        riotee_sleep_ms(5);
        riotee_gpio_clear(PIN_D8);
        riotee_gpio_set(PIN_D9);
        riotee_sleep_ms(5);
        riotee_gpio_clear(PIN_D9);

        prescale_audio(samples, MICROPHONE_SAMPLES);
        run_model(samples, MICROPHONE_SAMPLES);
        printf("Starting down\r\n");
        riotee_gpio_set(PIN_D9);
        riotee_sleep_ms(5);
        riotee_gpio_clear(PIN_D9);
    }
}
