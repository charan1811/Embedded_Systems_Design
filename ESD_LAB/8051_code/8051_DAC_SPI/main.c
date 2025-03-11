/**
 * main.C - Implementation that Initializes the SPI and DAC modules
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-16-2023
 *
 */

#include "SPI.h"
#include "uart.h"

// Function: main
// Description: Initializes UART and SPI modules to generate Sine wave.
// Parameters: None
// Return: void
void main()
{
    printf_tiny("Initializing SPI\n\r");
    init_spi();
}
