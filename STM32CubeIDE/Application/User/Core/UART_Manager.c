/*
 * UART_Manager.c
 *
 *  Created on: 05-Apr-2026
 *      Author: amrit
 */

//#include "main.h"
#include "stdint.h"
#include "string.h"
#include "stdbool.h"
#include "stm32f7xx_hal.h"

#define BOTLOADER_CMD 0x64
extern UART_HandleTypeDef huart3;
char Init_MSG[] = " UART Communication ready\r\n";
static uint8_t i = 0;

static volatile bool Bootloader_DiagReq = false;
static bool Jump_To_Bootloader;
static uint8_t RX_Buffer[6];
static char Cmd_Buffer[10];
static char byte ;
static char TX_msg[]="Valid bootloader request\r\n";

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if(huart->Instance == USART3)
	{
		byte = RX_Buffer[0];
		Cmd_Buffer[i++] = byte;
		if(byte == '\n')

		{
			Cmd_Buffer[i] == '\0';
			i=0;
			// reception
		}


	}


	if(Cmd_Buffer == 'BOOT\n')
	{
		Bootloader_DiagReq = true;
	}

	HAL_UART_Receive_IT(&huart3,(uint8_t*)RX_Buffer,1);



}

extern void UART_Manager_Init(void)
{
	HAL_UART_Transmit(&huart3, (uint8_t*)Init_MSG, strlen(Init_MSG), 100);
    HAL_UART_Receive_IT(&huart3, RX_Buffer, 1);
}

extern void UART_Manager_5ms()
{
	if(Bootloader_DiagReq == true)
	{
		HAL_UART_Transmit(&huart3, (uint8_t*)TX_msg, strlen(TX_msg), 100);
		Bootloader_DiagReq = false;
		Jump_To_Bootloader=true;

		//Transmit message bootloader in process
		//Call the jump function
	}

	else
	{
		HAL_UART_Transmit_IT(&huart3, (uint8_t*)"Invalid request", 100);

	}



}
