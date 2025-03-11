/**
 * uart.C - Implementation that Handles the UART commands
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-14-2023
 *
 */

#include "uart.h"

// Function: putchar
// Parameters: int c - The character to be written
// Description: Writes a character to the serial port (UART) using polling.
//              It waits until the Transmit Interrupt (TI) flag is set before writing the character to the Serial Buffer (SBUF).
//              After writing the character, it clears the TI flag.
// Return: int - The written character

int putchar(int c)
{
    // Wait until the Transmit Interrupt (TI) flag is set
    while (!TI);

    // Write the character to the Serial Buffer (SBUF)
    SBUF = c;

    // Clear the Transmit Interrupt (TI) flag
    TI = 0;

    // Return the written character
    return c;
}


// Function: getchar
// Description: Reads a character from the serial port (UART) using polling.
//              It waits until the Receive Interrupt (RI) flag is set before reading the character from the Serial Buffer (SBUF).
//              After reading the character, it clears the RI flag.
// Return: int - The read character

int getchar(void)
{
    // Wait until the Receive Interrupt (RI) flag is set
    while (!RI);

    // Clear the Receive Interrupt (RI) flag
    RI = 0;

    // Return the read character from the Serial Buffer (SBUF)
    return SBUF;
}

