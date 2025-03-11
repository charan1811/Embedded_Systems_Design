/* USER CODE BEGIN Header */
/**
  **************************
  * @file           : main.c
  * @brief          : Main program body
  * Author			: Sai charan mandadi
  * Created on		: Nov 17, 2023
  **************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  **************************
  */

#include "Systick.h"

/* Function: main
* Parameters: Void
*  Description: Sets the GPIO pin direction, sends clocks to the required peripherals
*  and initializes the Systick setup
*  */
int main(void)
{
    // SystemCoreClock should be configured correctly
    // depending on the operating frequency
    // SysTick runs at the same speed, so if we generate
    // a tick every clock_speed/1000 cycles, we can generate
    // a 1 ms tick speed.
    init_systick(SystemCoreClock/1000);

    // setup LEDs and turn them on
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
    GPIOD->MODER &= ~(0xFFU << 24);
    GPIOD->MODER |=  (0x55  << 24);
    GPIOD->ODR |= (0xF << 12);

    while(1)
    {
        delay_ms(1000); // 1 sec delay
        GPIOD->ODR ^= (0xF << 12);  // Toggle LEDs
    }

    return 0;
}
