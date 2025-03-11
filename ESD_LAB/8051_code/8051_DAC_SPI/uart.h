
#ifndef UART_H_
#define UART_H_

/**
 * uart.h - Header to Handles the UART commands
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-14-2023
 *
 */

#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <stdint.h>
#include <stdio.h>

// Function: putchar
// Parameters: int - Character to be written
// Description: Writes a character to the serial port (UART) using polling.
//              It waits until the Transmit Interrupt (TI) flag is set before writing the character to the Serial Buffer (SBUF).
//              After writing the character, it clears the TI flag.
// Return: int - The written character
int putchar(int);

// Function: getchar
// Description: Reads a character from the serial port (UART) using polling.
//              It waits until the Receive Interrupt (RI) flag is set before reading the character from the Serial Buffer (SBUF).
//              After reading the character, it clears the RI flag.
// Return: int - The read character
int getchar(void);

#endif
