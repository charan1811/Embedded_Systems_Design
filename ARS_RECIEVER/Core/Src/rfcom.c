/*
 * 	File:		rfcom.c
 *	@brief      Contains the implementation of RF receiver and its helper functions to
 *				succesfully read from the RF module.
 *  Created on: Dec 11, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */
#include "stm32f4xx.h"
#include "system_stm32f4xx.h"
#include "rfcom.h"
#include "stdio.h"

#include "spi.h"
#include "uart.h"

#define RX_DR 			(0x40)	//Macro to check the data is received in the status register
#define STATUS 			(0x07)	//Address of status register
#define R_REGISTER 		(0x00)	//Address of the Read Register
#define W_REGISTER 		(0x20)	//Address of the write Register
#define PAYLOAD_SIZE	(1)		//Payload size
#define RF_DELAY_OFFSET	(100000)//Delay offset for RF module
#define RX_ADDR			(231)	//Receiver address
#define TX_ADDR			(231)	//Transmitter address
#define RF_CHANNEL_NUM	(110)	//Channel number used for RF
#define CONFIG_GAIN		(0x06)	//Set the config gain as 00db
#define RETRY_MAX		(0x2F)	//Set the max retries for transmission
#define CE_DELAY		(50)	//Delay for the ce pin to transition completely
#define RX_TX_ADR_WIDTH	(4)		//address width of TX and RX

/**
 * @brief      Function to introduce a delay in milliseconds.
 *
 * @param[in]  count  The delay count.
 *
 * @return     void
 */
void DelayMs(uint16_t count)
{
	for (int i = 0; i < count * RF_DELAY_OFFSET; i++);
}

/**
 * @brief      Function to introduce a delay in microseconds.
 *
 * @param[in]  count  The delay count.
 *
 * @return     void
 */
void DelayUs(uint16_t count)
{
	for (int i = 0; i < CE_DELAY; i++);  // Delay loop
}

/**
 * @brief      Function to set the Chip Enable (CE) pin high.
 *
 * @param[in]  void
 *
 * @return     void
 */
void ce_high(void)
{
	DelayUs(1);
	GPIOB->BSRR |= (1 << 1);  // Set CE pin high
}

/**
 * @brief      Function to set the Chip Enable (CE) pin low.
 *
 * @param[in]  void
 *
 * @return     void
 */
void ce_low(void)
{
	DelayUs(1);
	GPIOB->BSRR |= (1 << 1) << 16;  // Set CE pin low
}

/**
 * @brief      Function to write the transmit address.
 *
 * @param[in]  register_add  The register address.
 * @param[in]  new_value     The new value to be written.
 *
 * @return     void
 */
void tx_addr_wr(char register_add, char new_value)
{
	char cmd;
	//Write to the given register by selecting the write command
	cmd = (NRF_WRITE | register_add);

	//Initiate the SPI communication
	spi_csn_LOW();
	spi_write(cmd);
	for (int i = 0; i <= RX_TX_ADR_WIDTH; i++)
	{
		spi_write(new_value);
	}
	spi_csn_HIGH();
}

/**
 * @brief      Function to verify the NRF24 module configuration.
 *
 * @param[in]  void
 *
 * @return     void
 */
void nrf_verify()
{
	// Power UP
	char res = nrf_cmd_rd(NRF_CONFIG);
	// Enable AA
	char res1 = nrf_cmd_rd(NRF_EN_AA);
	// Enable RX address
	char res2 = nrf_cmd_rd(NRF_RXADDR);
	// Address width of 4 bytes
	char res3 = nrf_cmd_rd(NRF_SETUP_AW);
	// Set RX PW P0
	char res4 = nrf_cmd_rd(NRF_RX_PW_P0);
	// RF Channel select
	char res5 = nrf_cmd_rd(NRF_RF_CH);
	// TX address set
	char res6 = nrf_cmd_rd(NRF_TX_ADDR);
	// Rx address set
	char res7 = nrf_cmd_rd(NRF_ADDR_P0);
	// RF setup to 00db
	char res8 = nrf_cmd_rd(NRF_SETUP);
	// Retransmission register configured
	char res9 = nrf_cmd_rd(NRF_SETUP_RETR);

	if (res == NRF_CONFIG)
	{
		putstr("CONFIG REGISTER : 0x15 \n\r");
	}
	if (res1 == NRF_ENAA_P0)
	{
		putstr("AUTO ACKNOWLEDGEMENT ENABLE FOR PIPE IS: 1\n\r");
	}
	if (res3 == NRF_AW_BYTES)
	{
		putstr("ADDRESS WIDTH IS CONFIGURED AS : 5 Bytes \n\r");
	}
	if (res4 == NRF_RX_PW_P0_SET)
	{
		putstr("RX DEVICE PAYLOAD SIZE IS: 1 Byte\n\r");
	}
	if (res5 == RF_CHANNEL_NUM)
	{
		putstr("RX CHANNEL CONFIGURED AS : 110 \n\r");
	}
	if (res6 == TX_ADDR)
	{
		putstr("TX ADDRESS IS CONFIGURED AS 0xE7E7E7E7E7 \n\r");
	}
	if (res7 == RX_ADDR)
	{
		putstr("RX ADDRESS IS CONFIGURED AS 0xE7E7E7E7E7 \n\r");
	}
	if (res8 == CONFIG_GAIN)
	{
		putstr("SETUP REGISTER IS CONFIGURED WITH 0x06\n\r");
	}
	if (res9 == RETRY_MAX)
	{
		putstr("RETRANSMISSION REGISTER CONFIGURED WITH 0x2F\n\r");
	}
	if (res2)
	{
		putstr("DYNAMIC PAYLOAD STATUS: DISABLED\n\r");
		putstr("DATA TRANSMISSION RATE IS SET TO 1Mbps n\r");
		putstr("TX OUPUT TRANSMISSION POWER IS SET TO 0x0 dB\n\r");
	}
}

/**
 * @brief      Function to initialize the NRF24 module for receive mode.
 *
 * @param[in]  void
 *
 * @return     void
 */
void rf_rx_INIT(void)
{
	//Set the ideal pin configurations for SPI and RF communication
	ce_low();
	spi_csn_HIGH();
	DelayMs(1);

	// Enable AA
	nrf_cmd_wr(NRF_EN_AA, NRF_ENAA_P0, NRF_ENAA_P0_MASK);

	// Enable RX address
	nrf_cmd_wr(NRF_RXADDR, NRF_ERX_P0, NRF_ENRX_P0_MASK);

	// Address width of 4 bytes
	nrf_cmd_wr(NRF_SETUP_AW, NRF_AW_BYTES, NRF_AW_MASK);

	// Set RX PW P0
	nrf_cmd_wr(NRF_RX_PW_P0, NRF_RX_PW_P0_SET, NRF_RX_PW_SET_MASK);

	// RF Channel select
	nrf_cmd_wr(NRF_RF_CH, RF_CHANNEL_NUM, NRF_RF_CH_MASK);

	//Flush the RX and TX buffer during startup
	spi_write(FLUSH_RX);
	spi_write(FLUSH_TX);

	//Enable cyclic redundancy check with the redundancy set to 2
	nrf_cmd_wr(NRF_CONFIG, (1 << 3) | (1 << 2), 0);

	char x = nrf_cmd_rd(NRF_CONFIG);

	// TX address set
	tx_addr_wr(NRF_TX_ADDR, RF_TX_ADDR);

	// Rx address set
	tx_addr_wr(NRF_ADDR_P0, RF_TX_ADDR);

	// RF setup to re transmit maximum number of times which is 15
	nrf_cmd_wr(NRF_SETUP_RETR, RETRY_MAX, ARD_MASK);

	//Set the 00db gain
	nrf_cmd_wr(NRF_SETUP, CONFIG_GAIN, RF_PWR_MASK);

	//Power up the nrf module
	nrf_cmd_wr(NRF_CONFIG, x | (1 << 1), 0);

	//Settle in time after powering up the nrf module
	DelayMs(1);

	//read the config register
	x = nrf_cmd_rd(NRF_CONFIG);

	//update config register by setting it to receiver mode
	nrf_cmd_wr(NRF_CONFIG, x | (1 << 0), 0);

	//verify command is helpful for debugging purposes.
	nrf_verify();
}

/**
 * @brief      Function to write data to NRF24 registers.
 *
 * @param[in]  register_add  The register address.
 * @param[in]  new_value     The new value to be written.
 * @param[in]  mask          The mask to apply during write operation.
 *
 * @return     void
 */
void nrf_cmd_wr(char register_add, char new_value, char mask)
{
	char cmd;
	//create a command write with the register address
	cmd = NRF_WRITE | register_add;

	//initiate the spi transfer
	spi_csn_LOW();
	spi_write(cmd);
	spi_write(new_value);
	spi_csn_HIGH();
}

/**
 * @brief      Function to read data from NRF24 registers.
 *
 * @param[in]  register_add  The register address.
 *
 * @return     The read value.
 */
char nrf_cmd_rd(char register_add)
{
	char nrf_spi_rd;
	//initiate the spi transfer

	spi_csn_LOW();
	//create a command write with the register address
	spi_write((register_add | R_REGISTER));
	nrf_spi_rd = spi_read((register_add | R_REGISTER));
	spi_csn_HIGH();
	return nrf_spi_rd;
}

/**
 * @brief      Function to check if a message is received.
 *
 * @param[in]  void
 *
 * @return     1 if a message is received, 0 otherwise.
 */
int nrf_msg_check()
{
	//Checks the status register for the msg received
	char status = nrf_cmd_rd(NRF_STATUS);
	if (status & RX_DR)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/**
 * @brief      Function to initialize the NRF24 module for Primary Receiver mode.
 *
 * @param[in]  void
 *
 * @return     void
 */
void nrf_prx_init()
{
	rf_rx_INIT();
}

/**
 * @brief      Function to receive data from NRF24 module.
 *
 * @param[out]  payload  The received payload.
 *
 * @return     The received data.
 */
uint8_t nrf_rf_rx(char* payload)
{
	//setup the default values
	char data = 'X';
	uint8_t cmd_add = 0;
	uint8_t temp = 0;

	//SPI sequence for flushing receiver
	spi_csn_LOW();
	spi_write(FLUSH_RX);
	spi_csn_HIGH();

	//Loop to check if the data has been received using data received register
	while ((temp & RX_DR) == 0)
	{
		//Use the read register command to update the status of tmp
		cmd_add = (R_REGISTER | STATUS);

		//initiate the SPI communication
		spi_csn_LOW();
		spi_write(cmd_add);
		temp = spi_read(cmd_add);
		spi_csn_HIGH();
	}

	//Once the Data received bit is set read the received payload
	spi_csn_LOW();
	spi_write(R_RX_PAYLOAD);
	for (int i = 0; i < PAYLOAD_SIZE; i++)
	{
		data = spi_read(*payload);
	}
	spi_csn_HIGH();

	//Write the read data to the serial monitor through UART
	USART1_write(data);

	//After receiving the data, we have to clear the Data received register
	//in the status register to be able to read the latest status again.
	cmd_add = (W_REGISTER | STATUS);

	//inititate the write sequence by writing 1 to the Data register which clears it.
	spi_csn_LOW();
	spi_write(cmd_add);
	spi_write(RX_DR);
	spi_csn_HIGH();

	return data;
}
