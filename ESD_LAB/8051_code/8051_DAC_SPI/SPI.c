/**
 * SPI.c - This files contains the implementation of initializing the SPI and generating a sine wave using the DAC module
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-16-2023
 *
 */

#include "SPI.h"

#define SCK P1_6
#define SDA P1_7
#define CS P3_4

// Function: generate_sin_wave
// Description: Generates a sine wave.
// Parameters: None
// Return: void
void generate_sin_wave()
{
    unsigned char input_data[24] = {0x18, 0x0, 0x1c, 0x0, 0x1e, 0xe0, 0x1f, 0xf0, 0x1e, 0xe0, 0x1c, 0x0, 0x18, 0x0, 0x14, 0x0, 0x11, 0x10, 0x10, 0x0, 0x11, 0x10, 0x14, 0x0};
    while(1)
    {
        for (int i =0; i < 24; i++)
        {
            CS=0; // select slave
            SPDAT=input_data[i]; /* send an example data */
            while(!(SPSTA&SPIF));/* wait end of transmition */
            SPDAT=input_data[i++]; /* data is send to generate SCK signal */
            while(!(SPSTA&SPIF));/* wait end of transmition */
            CS=1; // deselect slave
        }
    }
}

// Function: init_spi
// Description: Initializes the SPI (Serial Peripheral Interface).
// Parameters: None
// Return: void
void init_spi()
{
    printf_tiny("executing DAC\n\r");
    SPCON = 0x70; /* Master mode */
    generate_sin_wave();
}
