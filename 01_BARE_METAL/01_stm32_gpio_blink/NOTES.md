# GPIO blink — learning notes

**Goal:** make an LED blink on STM32 by writing the registers directly (no HAL).

## What I need to understand
- Enable the clock for the GPIO port (RCC register) before using it.
- Configure the pin as output (MODER register).
- Set / clear the output bit (ODR or BSRR register) to toggle the LED.
- A crude delay loop for now (later: a hardware timer).

## Open questions (to answer as I go)
- Why must the RCC clock be enabled first?
- Difference between writing ODR vs using BSRR?

_Status: started._