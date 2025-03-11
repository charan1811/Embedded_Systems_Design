/*
 * timer_wdog.h
 * @brief          : Header that contains the decleration of watchdog peripheral and handles the delay, interrupt
 * Service routines
 *  Created on: Nov 16, 2023
 *  Author: Sai Charan Mandadi
 */

#include "stm32f4xx.h"
#include "system_stm32f4xx.h"

#ifndef SRC_TIMER_WDOG_H_
#define SRC_TIMER_WDOG_H_

// Function: init_wdog_timer
// Description: Initializes the watchdog timer.
void init_wdog_timer(void);

// Function: run_wdog_loop
// Description: Runs a loop to demonstrate the watchdog timer functionality.
void run_wdog_loop(void);

// Function: delay
// Parameters: volatile uint32_t - Time to delay in a loop (used for demo purposes).
// Description: Delays the program for the specified duration using a busy-wait loop.
void delay(volatile uint32_t time);

#endif /* SRC_TIMER_WDOG_H_ */
