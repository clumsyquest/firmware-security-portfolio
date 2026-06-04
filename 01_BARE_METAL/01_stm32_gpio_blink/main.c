/*
 * STM32F446 — GPIO blink, bare metal (no HAL).
 * LED on PA5 (Nucleo-F446RE green LED).
 *
 * Goal: understand the 3 steps — clock, mode, toggle — by writing
 * registers directly.
 */

#include <stdint.h>

/* --- Register addresses (from the STM32F446 reference manual) ---
 * Each peripheral lives at a fixed memory address. We treat that address
 * as a pointer to a 32-bit register and read/write it.
 */
#define RCC_BASE      0x40023800UL          /* Reset & Clock Control */
#define GPIOA_BASE    0x40020000UL          /* GPIO port A           */

#define RCC_AHB1ENR   (*(volatile uint32_t *)(RCC_BASE + 0x30))   /* clock enable */
#define GPIOA_MODER   (*(volatile uint32_t *)(GPIOA_BASE + 0x00)) /* pin mode     */
#define GPIOA_BSRR    (*(volatile uint32_t *)(GPIOA_BASE + 0x18)) /* set/reset    */

#define LED_PIN  5   /* PA5 */

/* Crude busy-wait delay. Not accurate — a timer comes in a later lab. */
static void delay(volatile uint32_t count) {
    while (count--) {
        __asm__("nop");   /* do nothing, just burn cycles */
    }
}

int main(void) {
    /* STEP 1 — enable the clock for GPIO port A.
     * Bit 0 of RCC_AHB1ENR = GPIOA clock. Set it to 1. */
    RCC_AHB1ENR |= (1U << 0);

    /* STEP 2 — set PA5 as output.
     * MODER uses 2 bits per pin: 01 = output. Pin 5 -> bits 10 and 11.
     * Clear both bits first, then write 01. */
    GPIOA_MODER &= ~(3U << (LED_PIN * 2));   /* clear bits */
    GPIOA_MODER |=  (1U << (LED_PIN * 2));    /* set to output */

    /* STEP 3 — blink forever.
     * BSRR: writing bit N sets the pin (LED on),
     *       writing bit N+16 resets the pin (LED off). */
    while (1) {
        GPIOA_BSRR = (1U << LED_PIN);          /* LED on  */
        delay(1000000);
        GPIOA_BSRR = (1U << (LED_PIN + 16));   /* LED off */
        delay(1000000);
    }
}
