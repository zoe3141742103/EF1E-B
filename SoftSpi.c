/*
 * SoftSpi.c
 *
 *  Created on: 2020-10-6
 *      Author: Rick
 */
#include<KF8A100GQS.h>
#include "includes.h"
#include "PinConfig.h"
#include "SoftSpi.h"
#include "Work.h"
#define InitBright 0
int spidata;
void spi_init(void)
{
	TR92 =1;
	TR91 =0;
	TR03 =0;
	TR04 =0;
	TR62 =0;
	APFCTL9 =0x6E;

	SSCI2EN=0;				//�ر�SPIģ�飬��ʼ����֮���ٴ�

	SSCI2CTL0=0X01;			//SPI ����ģʽ��ʱ�� = ����ʱ��/64
	SSCI2CTL1=0X00;
	SSCI2CTL2=0X00;
	SSCI2STA=0X40;  //����ʱΪ�͵�ƽ����SCL�½��ط�������

	SSCI2EN=1;

	SDB1=1;
	SDB2=1;
	CS1HIGH;
	CS2HIGH;
	CS3HIGH;
	CS4HIGH;
}
void Spi_CS_High(char id)
{
	switch(id)
	{
		case 1:CS1HIGH;break;
		case 2:CS2HIGH;break;
		case 3:CS4HIGH;break;
		case 4:CS3HIGH;break;
	}
}
void Spi_CS_Low(char id)
{
	switch(id)
	{
		case 1:CS1LOW;break;
		case 2:CS2LOW;break;
		case 3:CS4LOW;break;
		case 4:CS3LOW;break;
	}
}
void SPI_Write_2Byte(unsigned char id,unsigned char addr,unsigned char dat)
{
	char i=0;
	volatile unsigned buf;
	volatile unsigned char SPI_adr, SPI_data;
	SPI_adr =addr;
	SPI_data =dat;
	Spi_CS_Low(id);
	SSCI2BUFR=SPI_adr; //�������͵��ֽڷ��뷢�ͻ�����
	while(!SSCI2IF); //�ȴ�������Ϻ�SSCIIF��λ��
	SSCI2IF=0;
	buf =SSCI2BUFR;

	SSCI2BUFR=SPI_data; //�������͵��ֽڷ��뷢�ͻ�����
	while(!SSCI2IF); //�ȴ�������Ϻ�SSCIIF��λ��
	SSCI2IF=0;
	buf =SSCI2BUFR;
	Spi_CS_High(id);
}
void IS31FL3265B_Init(void)
{
	spi_init();
	Tail_One_Init();
	Tail_Two_Init();
	Rt_One_Init();
	Rt_Two_Init();
}
void Tail_One_Init(void)
{
	char i=0;
	SPI_Write_2Byte(1,0x00,0x01);

	for(i=0x02;i<=0x13;i++)
	{
		SPI_Write_2Byte(1,i,0xFF);//SL
	}

	for(i=0x1F;i<=0x30;i++)
	{
		SPI_Write_2Byte(1,i,InitBright);//PWM
	}

	SPI_Write_2Byte(1,0x36,0x00);//update
	SPI_Write_2Byte(1,0x37,0x00);//update
	SPI_Write_2Byte(1,0x01,0x20);
}
void Tail_Two_Init(void)
{
	char i=0;
	SPI_Write_2Byte(2,0x00,0x01);

	for(i=0x02;i<=0x13;i++)
	{
		SPI_Write_2Byte(2,i,0xFF);//SL
	}

	for(i=0x1F;i<=0x30;i++)
	{
		SPI_Write_2Byte(2,i,InitBright);//PWM
	}

	SPI_Write_2Byte(2,0x36,0x00);//update
	SPI_Write_2Byte(2,0x37,0x00);//update
	SPI_Write_2Byte(2,0x01,0x20);
}
void Rt_One_Init(void)
{
	char i=0;
	SPI_Write_2Byte(3,0x00,0x01);

	for(i=0x02;i<=0x13;i++)
	{
		SPI_Write_2Byte(3,i,0xFF);//SL
	}

	for(i=0x1F;i<=0x30;i++)
	{
		SPI_Write_2Byte(3,i,InitBright);//PWM
	}

	SPI_Write_2Byte(3,0x36,0x00);//update
	SPI_Write_2Byte(3,0x37,0x00);//update
	SPI_Write_2Byte(3,0x01,0x20);
}
void Rt_Two_Init(void)
{
	char i=0;
	SPI_Write_2Byte(4,0x00,0x01);

	for(i=0x02;i<=0x13;i++)
	{
		SPI_Write_2Byte(4,i,0xFF);//SL
	}

	for(i=0x1F;i<=0x30;i++)
	{
		SPI_Write_2Byte(4,i,InitBright);//PWM
	}

	SPI_Write_2Byte(4,0x36,0x00);//update
	SPI_Write_2Byte(4,0x37,0x00);//update
	SPI_Write_2Byte(4,0x01,0x20);
}
