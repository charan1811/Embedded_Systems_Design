#ifndef SPI_H_
#define SPI_H_

/**
 * SPI.h - Header file that has the declarations to support the SPI DAC conversions
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-16-2023
 *
 */

#include <at89c51ed2.h>
#include <stdio.h>
#include <stdint.h>

// Function: generate_sin_wave
// Description: Generates a sine wave.
// Parameters: None
// Return: void
void generate_sin_wave();

// Function: init_spi
// Description: Initializes the SPI (Serial Peripheral Interface).
// Parameters: None
// Return: void
void init_spi();

#endif
