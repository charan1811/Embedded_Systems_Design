/*
 * 	File:		spi.h
 *	@brief      Header file that has the declerations for all of the SPI communication
 *				interface.
 *  Created on: Dec 11, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */

#ifndef SPI1_H
#define SPI1_H

#include<stdint.h>

/**
 * @brief      Function to initialize SPI1 for communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi_init(void);

/**
 * @brief      Function to enable SPI communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi1_enable(void);

/**
 * @brief      Function to disable SPI communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi_disable(void);

/**
 * @brief      Function to read data over SPI.
 *
 * @param[in]  value  The value to be written.
 *
 * @return     The read value.
 */
char spi_read(char value);

/**
 * @brief      Function to write data over SPI.
 *
 * @param[in]  value  The value to be written.
 *
 * @return     void
 */
void spi_write(char reg);

/**
 * @brief      Function to set CS (Chip Select) low.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi_csn_LOW(void);

/**
 * @brief      Function to set CS (Chip Select) high.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi_csn_HIGH(void);

/**
 * @brief      Function to initialize SPI2 for communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_init(void);

/**
 * @brief      Function to enable SPI2 communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_enable(void);

/**
 * @brief      Function to disable SPI2 communication.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_disable(void);

/**
 * @brief      Function to set CS (Chip Select) high.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_csn_HIGH(void);

/**
 * @brief      Function to set CS (Chip Select) low.
 *
 * @param[in]  void
 *
 * @return     void
 */
void spi2_csn_LOW(void);

/**
 * @brief      Function to write data to SPI2.
 *
 * @param[in]  reg    The register to write to.
 * @param[in]  value  The value to write.
 *
 * @return     void
 */
void spi2_write(uint8_t reg, uint8_t value);

/**
 * @brief      Function to read data from SPI2.
 *
 * @param[in]  value  The value to write.
 *
 * @return     The read value.
 */
char spi2_read(char value);

#endif //SPI1_H
