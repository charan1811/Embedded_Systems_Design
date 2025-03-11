/*
 * 	File:		spi.c
 *	@brief      Implementation of SPI communication interface to drive the LED MAX7219 and
 *				NRF24L01 module.
 *  Created on: Dec 11, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */

#include "spi.h"

#include "stm32f4xx.h"
#include "system_stm32f4xx.h"

/**
 * @brief      Function to initialize SPI1 for communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_init(void)
{
	// Enable GPIOA and GPIOB clocks
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

	// Configure PB15 (MOSI), PB13 (SCK), PB14 (MISO) as alternate function
	GPIOB->MODER &= ~(GPIO_MODER_MODER13 | GPIO_MODER_MODER14 | GPIO_MODER_MODER15);
	// Alternate function mode
	GPIOB->MODER |= (GPIO_MODER_MODER13_1 | GPIO_MODER_MODER14_1 | GPIO_MODER_MODER15_1);
	// AF5 for SPI2 SCK and MISO
	GPIOB->AFR[1] |= (5 << 20) | (5 << 24) | (5 << 28);
	GPIOB->OSPEEDR |= ((2 << 26) | (2 << 28) | (2 << 30));
	GPIOB->MODER &= ~(3 << 0);
	// Output mode
	GPIOB->MODER |= (1 << 0);
	GPIOB->OTYPER &= ~(1 << 0);
	GPIOB->MODER &= ~(3 << 2);
	// Output mode
	GPIOB->MODER |= (1 << 2);
	GPIOB->OTYPER &= ~(1 << 1);

	// Enable the SPI2 clock
	RCC->APB1ENR |= RCC_APB1ENR_SPI2EN;

	// Disable SPI2
	SPI2->CR1 &= ~SPI_CR1_SPE;

	// Configure SPI2 CR1 register
	SPI2->CR1 |= ((1 << 2) | (3 << 3) | (1 << 8) | (1 << 9));
	SPI2->CR2 = 0;  // Default value for CR2

	SPI2->CR1 |= SPI_CR1_SPE;  // Enable SPI2
}

/**
 * @brief      Function to enable SPI communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi1_enable(void)
{
    // Enable SPI - SPE bit 6
    SPI1->CR1 |= (1 << 6);
}

/**
 * @brief      Function to disable SPI communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi_disable(void)
{
    // Disable SPI - SPE bit 6
    SPI1->CR1 &= ~(1 << 6);
}

/**
 * @brief      Function to set CS (Chip Select) high.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi_csn_HIGH(void)
{
    GPIOB->BSRR |= (1 << 0);
}

/**
 * @brief      Function to set CS (Chip Select) low.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi_csn_LOW(void)
{
    GPIOB->BSRR |= (1 << 0) << 16;
}

/**
 * @brief      Function to write data over SPI.
 *
 * @param[in]  value  The value to be written.
 *
 * @return     void
 */
void spi_write(char value)
{
    // Tx buffer empty check
    while (!(SPI2->SR & (1 << 1)));
    // Check for busy flag
    while ((SPI2->SR) & (1 << 7));

    (void)SPI2->DR;
    //Read from status register to clear the flag
    (void)SPI2->SR;
    //Write value into data register
    SPI2->DR = value;

    //Check for transmission complete
    while (!(SPI2->SR & (1 << 1)));
    //check for busy flag condition
    while ((SPI2->SR) & (1 << 7));

    //perform dummy read from data and status register
    (void)SPI2->DR;
    (void)SPI2->SR;
}

/**
 * @brief      Function to read data over SPI.
 *
 * @param[in]  value  The value to be written.
 *
 * @return     The read value.
 */
char spi_read(char value)
{
    char rx_val;
    // Check for busy flag
    while ((SPI2->SR) & (1 << 7));
    SPI2->DR = value;
    while (!(SPI2->SR & (1 << 0)));
    rx_val = SPI2->DR;

    return rx_val;
}

/**
 * @brief      Function to initialize SPI2 for communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi1_init(void)
{
    // Enable GPIO and SPI clocks
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
    RCC->APB2ENR |= RCC_APB2ENR_SPI1EN;  // Note: SPI1 is on APB2 for STM32F4 series

    // Configure PB5 (SCK), PB6 (MISO), and PB7 (MOSI) as alternate function
    GPIOA->MODER &= ~(GPIO_MODER_MODER5 | GPIO_MODER_MODER6 | GPIO_MODER_MODER7);
    GPIOA->MODER |= (GPIO_MODER_MODER5_1 | GPIO_MODER_MODER6_1 | GPIO_MODER_MODER7_1);
    GPIOA->AFR[0] |= (5 << 20) | (5 << 24) | (5 << 28);
    GPIOA->OSPEEDR |= ((2 << 10) | (2 << 12) | (2 << 14));

    // Configure PA4 as GPIO for CS (Chip Select)
    GPIOA->MODER &= ~GPIO_MODER_MODER4;
    GPIOA->MODER |= GPIO_MODER_MODER4_0;  // Output mode

    GPIOA->BSRR = GPIO_BSRR_BS4;

    // Configure SPI1 (change SPI2 to SPI1)
    SPI1->CR1 = 0;  // Disable SPI1
    // Master mode, Set baud rate (adjust as needed), Software slave management and internal slave select
    SPI1->CR1 |= ((1 << 2) | (3 << 3) | (1 << 8) | (1 << 9));
    SPI1->CR2 = 0;
    SPI1->CR1 |= SPI_CR1_SPE;  // Enable SPI1
}

/**
 * @brief      Function to enable SPI2 communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_enable(void)
{
    // Enable SPI - SPE bit 6
    SPI1->CR1 |= (1 << 6);
}

/**
 * @brief      Function to disable SPI2 communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_disable(void)
{
    // Disable SPI - SPE bit 6
    SPI1->CR1 |= (0 << 6);
}

/**
 * @brief      Function to set CS (Chip Select) high.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_csn_HIGH(void)
{
    GPIOA->BSRR = (1 << 4);
    for (int i = 0; i < 10; i++);
}

/**
 * @brief      Function to set CS (Chip Select) low.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_csn_LOW(void)
{
    GPIOA->BSRR |= (1 << 4) << 16;
    for (int i = 0; i < 10; i++);
}

/**
 * @brief      Function to write data to SPI2.
 *
 * @param[in]  reg    The register to write to.
 * @param[in]  value  The value to write.
 *
 * @return     void
 */
void spi2_write(uint8_t reg, uint8_t value)
{
    // Tx buffer empty check
    while (!(SPI2->SR & (1 << 1)));
    // Check for busy flag
    while ((SPI2->SR) & (1 << 7));

    //Read from data register to clear the flag
    (void)SPI2->DR;
    //Read from status register to clear the flag
    (void)SPI2->SR;
    SPI2->DR = value;

    while (!(SPI2->SR & (1 << 1)));
    // Check for busy flag
    while ((SPI2->SR) & (1 << 7));
    (void)SPI2->DR;
    (void)SPI2->SR;
}

/**
 * @brief      Function to read data from SPI2.
 *
 * @param[in]  value  The value to write.
 *
 * @return     The read value.
 */
char spi2_read(char value)
{
    char rx_val;

    while ((SPI2->SR) & (1 << 7));  // Check for busy flag
    SPI2->DR = value;
    while (!(SPI2->SR & (1 << 0)));
    rx_val = SPI2->DR;

    return rx_val;
}
