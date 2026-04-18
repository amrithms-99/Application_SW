/*
 * UART_Manager.c
 *
 *  Created on: 05-Apr-2026
 *      Author: amrit
 */
#include "main.h"
#include "stdint.h"
#include "string.h"
#include "stdbool.h"
#include "stm32f7xx_hal.h"

static bool Bootloader_DiagReq;
static bool Jump_To_Bootloader;
static char* RX_Buffer[20];
static char TX_msg[]="Valid bootloader request\r\n";
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	HAL_UART_Receive_IT(&huart3,(unit8_t*)RX_Buffer,1);
	if(RX_Buffer == '0x01')
	{
		Botloader_diagreq = TRUE;
		RX_Buffer = 0;


	}

}

void UART_Manager_5ms()
{
	if(Bootloader_DiagReq == TRUE)
	{
		HAL_UART_Transmit(&huart3, TX_msg, strlen(TX_msg), 100);
		Jump_To_Bootloader=TRUE;

		//Transmit message bootloader in process
		//Call the jump function
	}

	else
	{
		//Sw reset and jump to bootloader
		//Jump to bootloader
	}
}
