/*
 * 	File:		rfcom.h
 *	@brief      Header file that contains all the interface declerations of RF communication
 *				receiver module.
 *  Created on: Dec 11, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */
#ifndef RFCOM_H
#define RFCOM_H

#include<stdint.h>


/**
 * @brief      NRF24L01+ Register Definitions
 *
 * @note       Enumerations representing the registers of the NRF24L01+ module.
 *             Each enumeration value corresponds to a specific register address.
 */
enum nrf_reg
{
    // Command registers
    NRF_WRITE = 0x20,
    R_RX_PAYLOAD = 0x61,
    FLUSH_TX = 0xE1,
    FLUSH_RX = 0xE2,
    R_RX_PL_WID = 0x60,
    W_TX_PAYLOAD = 0xA0,

    // Address registers
    NRF_CONFIG = 0x00,
    NRF_EN_AA = 0x01,
    NRF_RXADDR = 0x02,
    NRF_RXADDR_P0_MASK = 0x3E,
    NRF_RXADDR_P0_SET = 0x01,
    NRF_SETUP_AW = 0x03,
    NRF_SETUP_RETR = 0x04,
    NRF_RF_CH = 0x05,
    NRF_SETUP = 0x06,
    NRF_STATUS = 0x07,
    NRF_OBSERVE_TX = 0x08,
    NRF_RPD = 0x09,
    NRF_ADDR_P0 = 0x0A,
    NRF_ADDR_P1 = 0x0B,
    NRF_ADDR_P2 = 0x0C,
    NRF_ADDR_P3 = 0x0D,
    NRF_ADDR_P4 = 0x0E,
    NRF_ADDR_P5 = 0x0F,
    NRF_TX_ADDR = 0x10,
    NRF_RX_PW_P0 = 0x11,
    NRF_RX_PW_P0_MASK = 0x3F,
    NRF_RX_PW_P0_SET = 0x01,
    NRF_RX_PW_SET_MASK = 0x00,
    NRF_RX_PW_P1 = 0x12,
    NRF_RX_PW_P2 = 0x13,
    NRF_RX_PW_P3 = 0x14,
    NRF_RX_PW_P4 = 0x15,
    NRF_RX_PW_P5 = 0x16,
    NRF_FIFO_STATUS = 0x17,
    NRF_DYNPD = 0x1C,
    NRF_FEATURE = 0x1D,

    // Setup registers
    POWER_UP = 0x02,
    POWER_DOWN = 0x00,
    POWER_MASK = 0xFD,
    PRIM_RX = 1,
    PRIM_TX = 0,
    PRIM_RX_MASK = 0xFE,

    // Features Registers and masks
    EN_DPL = 0x04,
    EN_DPL_MASK = 0xFB,
    EN_DPL_P0 = 0x01,
    EN_DPL_P0_MASK = 0xFE,
    RX_DR_SET = 0x40,
    RX_DR_MASK = 0xBF,
    MAX_RT_SET = 0x10,
    MAX_RT_MASK = 0xEF,
    TX_DS_SET = 0x20,
    TX_DS_MSAK = 0xDF,
    ADR_4000 = 0xF0,
    ADR_MASK = 0x0F,
    RF_PWR_18db = 0x00,
    RF_PWR_MASK = 0xF9,
    RF_DR_LOW = 0x20,
    RF_DR_MASK = 0xD7,
    ARD_750us = 0x20,
    ARD_MASK = 0xF0,
    ARC_15_RETRY = 0x0F,
    ARC_MASK = 0x0F,
    NRF_ENAA_P0 = 0x01,
    NRF_ENAA_P0_MASK = 0x3E,
    NRF_ERX_P0 = 0x01,
    NRF_ENRX_P0_MASK = 0x3E,
    NRF_AW_BYTES = 0x03,
    NRF_AW_MASK = 0x00,
    NRF_RF_CH_NUMBER = 0x6E,
    NRF_RF_CH_MASK = 0x7F,
    RF_PWR_00db = 0x06,
    RF_TX_ADDR = 0xE7,
    RF_TX_ADDR_MASK = 0xFF,
    RF_CONFIG_CRCO = 0x04,
    RF_ENABLE_CRC = 0x08,
    NRF_CONFIG_MASK = 0x71,
};

/**
 * @brief      Function to read data from NRF24 registers.
 *
 * @param[in]  register_add  The register address.
 *
 * @return     The read value.
 */
char nrf_cmd_rd(char register_add);

/**
 * @brief      Function to write data to NRF24 registers.
 *
 * @param[in]  register_add  The register address.
 * @param[in]  new_value     The new value to be written.
 * @param[in]  mask          The mask to apply during write operation.
 *
 * @return     void
 */
void nrf_cmd_wr(char register_add, char new_value,char mask);

/**
 * @brief      Function to introduce a delay in milliseconds.
 *
 * @param[in]  count  The delay count.
 *
 * @return     void
 */
void DelayMs(uint16_t count);

/**
 * @brief      Function to receive data from NRF24 module.
 *
 * @param[out]  payload  The received payload.
 *
 * @return     The received data.
 */
uint8_t nrf_rf_rx(char* payload);

/**
 * @brief      Function to initialize the NRF24 module for Primary Receiver mode.
 *
 * @param[in]  void
 *
 * @return     void
 */
void nrf_prx_init();

#endif  //RFCOM
