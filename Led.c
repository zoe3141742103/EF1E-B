/*
 * Led.c
 *
 *  Created on: 2020-10-9
 *      Author: Rick
 */
#include<KF8A100GQS.h>
#include "includes.h"
#include "PinConfig.h"
#include "Work.h"
#include "Led.h"
#include "SoftSpi.h"

extern unsigned char LED_Stop_PWM_Flag;
extern unsigned int Stop_High_Addr,Stop_Low_Addr=0;

void LED_Stop_AllOpen(void)
{
	Stop_High_Addr=0;
	Stop_Low_Addr=0xFFFF;
}
void LED_Stop_PWMOpen(void)
{
	Stop_High_Addr=0xFFFF;
	Stop_Low_Addr=0xFFFF;
}
void LED_Stop_AllClose(void)
{
	Stop_High_Addr=0xFFFF;
	Stop_Low_Addr=0;
}
void Led_RT_AllOpen(void)
{
	uchar i;
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(3,i,0xFF);
		SPI_Write_2Byte(3,0x37,0x00);//update
	}
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(4,i,0xFF);
		SPI_Write_2Byte(4,0x37,0x00);//update
	}
}
void Led_RT_WaterOpen(void)
{
	uchar i;
	for(i=0x20;i<=0x2F;i+=3)
	{
		SPI_Write_2Byte(3,i-1,0);
		SPI_Write_2Byte(3,i+1,0);
		SPI_Write_2Byte(3,0x37,0x00);//update
	}
	for(i=0x20;i<=0x2F;i+=3)
	{
		SPI_Write_2Byte(4,i-1,0);
		SPI_Write_2Byte(4,i+1,0);
		SPI_Write_2Byte(4,0x37,0x00);//update
	}
	for(i=0x20;i<=0x2F;i+=3)
	{
		SPI_Write_2Byte(3,i-1,0xFF);
		SPI_Write_2Byte(3,i+1,0xFF);
		SPI_Write_2Byte(3,0x37,0x00);//update
		delay_ms(15);
	}
	for(i=0x20;i<=0x2F;i+=3)
	{
		SPI_Write_2Byte(4,i-1,0xFF);
		SPI_Write_2Byte(4,i+1,0xFF);
		SPI_Write_2Byte(4,0x37,0x00);//update
		delay_ms(15);
	}
}
void Led_RT_AllClose(void)
{
	uchar i;
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(3,i,0x00);
		SPI_Write_2Byte(3,0x37,0x00);//update
	}
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(4,i,0x00);
		SPI_Write_2Byte(4,0x37,0x00);//update
	}
}
void Led_Tail_AllOpen(void)
{
	uchar i;
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(1,i,0xFF);
		SPI_Write_2Byte(1,0x37,0x00);//update
	}
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(2,i,0xFF);
		SPI_Write_2Byte(2,0x37,0x00);//update
	}
}
void Led_Tail_AllClose(void)
{
	uchar i;
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(1,i,0x00);
		SPI_Write_2Byte(1,0x37,0x00);//update
	}
	for(i=0x30;i>=0x1F;i--)
	{
		SPI_Write_2Byte(2,i,0x00);
		SPI_Write_2Byte(2,0x37,0x00);//update
	}
}
void Tail12_Breath_Open(void)
{
	uint8 i;
	for(i=0;i<52;i++)
	{
		SPI_Write_2Byte(1,0x1F,i*5);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(20);
	}
}
void Tail12_Breath_Close(void)
{
	uint8 i;
	for(i=0;i<52;i++)
	{
		SPI_Write_2Byte(1,0x1F,0xFF-i*5);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(20);
	}
}
void Tail12_Breath_CloseTo10(void)
{
	uint8 i;
	for(i=0;i<49;i++)
	{
		SPI_Write_2Byte(1,0x1F,0xFF-i*5);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
	}
}
void Tail_LowWater_Open(void)
{
	uint8 i;
	for(i=0x20;i<=0x28;i++)
	{
		SPI_Write_2Byte(1,i,0x10);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(40);
	}
	for(i=0x1F;i<=0x28;i++)
	{
		SPI_Write_2Byte(2,i,0x10);//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
}
void Tail_HighWater_Open(void)
{
	uint8 i;
	for(i=0x20;i<=0x29;i++)
	{
		SPI_Write_2Byte(1,i-1,0x10);//update
		SPI_Write_2Byte(1,i,0xFF);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(40);
	}
	Stop_High_Addr = 0xFFF;
	for(i=0x1F;i<=0x30;i++)
	{
		Stop_Low_Addr += 1<<(i-0x1F);
		SPI_Write_2Byte(2,i-1,0x10);//update
		SPI_Write_2Byte(2,i,0xFF);//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
}
void Tail_LowWater_Blinky(void)
{
	uint8 i;
	for(i=0x20;i<=0x29;i++)
	{
		SPI_Write_2Byte(1,i-1,0xFF);//update
		SPI_Write_2Byte(1,i,0x10);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(40);
	}
	for(i=0x1F;i<=0x30;i++)
	{
		Stop_Low_Addr += 1<<(i-0x1F);
		SPI_Write_2Byte(2,i-1,0xFF);//update
		SPI_Write_2Byte(2,i,0x10);//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
}
void Stop_HighBackWater_Open(void)
{
	uint8 i;
	for(i=0;i<=12;i++)
	{
		Stop_High_Addr = ~(0x800>>i);
		delay_ms(30);
	}
	for(i=2;i<52;i++)
	{
		SPI_Write_2Byte(1,0x1F,i*5);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(20);
	}
}
void Tail1_FullBackWater_Open(void)
{
	uint8 i;
	for(i=0x1F;i<=0x28;i++)
	{
		SPI_Write_2Byte(1,i,0xFF);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(40);
	}
}
void Tail2_Stop_FullWater_Open(void)
{
	uint8 i;
	Stop_High_Addr = 0xFFF;
	for(i=0x1F;i<=0x30;i++)
	{
		Stop_High_Addr -= 1<<(i-0x1F);
		SPI_Write_2Byte(2,i,0xFF);//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
}
void Tail1_2_Stop_BackWater_Close(void)
{
	uint8 i;
	Stop_High_Addr = 0;
	Stop_Low_Addr = 0xFFF;
	for(i=0x2B;i>=0x1F;i--)
	{
		Stop_High_Addr += 1<<(i-0x1F);
		SPI_Write_2Byte(2,i,0x10);//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
	for(i=0x28;i>=0x20;i--)
	{
		SPI_Write_2Byte(1,i,0x10);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(40);
	}
}
void Tail1_2_Stop_FullWater_Close(void)
{
	uint8 i,j;
	Stop_High_Addr = 0xFFF;
	Stop_Low_Addr = 0xFFF;
	for(i=0x2B;i>=0x1F;i--)
	{
		//Stop_Low_Addr -= 1<<(i-0x1F);
		Stop_Low_Addr -= (1<<(i-0x1F));
		SPI_Write_2Byte(2,i,0x10);//update
		SPI_Write_2Byte(2,i-1,0xFF);//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
	Stop_High_Addr = 0;
	Stop_Low_Addr = 0;
	for(i=0x2B;i>=0x20;i--)
	{
		Stop_Low_Addr = 1<<(13-(i-0x1F));
		Stop_High_Addr = ~(Stop_Low_Addr);
		SPI_Write_2Byte(1,i,0x10);//update
		SPI_Write_2Byte(1,i-1,0xFF);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(40);
	}
	Tail12_Breath_CloseTo10();//Ϩ��
	for(j=1;j<6;j++)//��1ȫ��
	{
		for(i=0x2B;i>=0x20;i--)//��1ȫ��
		{
			SPI_Write_2Byte(1,i,j*51);//update
			SPI_Write_2Byte(1,0x37,0x00);//update
		}
		delay_ms(40);
	}
	for(i=0;i<5;i++)//T2���� һ��
	{
		SPI_Write_2Byte(2,0x1F+i,0xFF );//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
	for(i=0;i<5;i++)//��������,T1����
	{
		SPI_Write_2Byte(1,0x24-i,0x10);//update
		SPI_Write_2Byte(1,0x23-i,0xFF);//update
		SPI_Write_2Byte(1,0x24+i,0x10);//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		SPI_Write_2Byte(2,0x24+i,0xFF );//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
	for(i=0;i<5;i++)//���Ƶ��׺�������T2��һ��
	{
		SPI_Write_2Byte(2,0x1F+i,0x10 );//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
	for(i=0;i<6;i++)//�����������ұ�һ�뿪ʼ��������
	{
		SPI_Write_2Byte(2,0x24+i,0 );//update
		SPI_Write_2Byte(2,0x24-i,0 );//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
	}
	delay_ms(160);
	Stop_High_Addr = 0;
	Stop_Low_Addr = 0;
	for(i=0;i<10;i++)//T2��ʼ��£��T1Ϩ��,�ƶ���ˮ
	{
		SPI_Write_2Byte(2,0x28-i,0xFF );//update
		SPI_Write_2Byte(2,0x27-i,0xFF );//update
		SPI_Write_2Byte(2,0x26-i,0x10 );//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		delay_ms(40);
		SPI_Write_2Byte(2,0x28-i,0 );//update
		SPI_Write_2Byte(2,0x27-i,0 );//update
		SPI_Write_2Byte(2,0x26-i,0 );//update
		SPI_Write_2Byte(2,0x37,0x00);//update
		SPI_Write_2Byte(1,0x29-i,0 );//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		Stop_Low_Addr = 1<<(12-i);
		Stop_High_Addr = ~Stop_Low_Addr;
	}
	for(i=0;i<9;i++)//T1��ʼ��£,�ƶ���ˮ
	{
		SPI_Write_2Byte(1,0x29-i,0xFF );//update
		SPI_Write_2Byte(1,0x28-i,0x10 );//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		delay_ms(40);
		SPI_Write_2Byte(1,0x29-i,0 );//update
		SPI_Write_2Byte(1,0x28-i,0 );//update
		SPI_Write_2Byte(1,0x37,0x00);//update
		if(i<3)
		{
			Stop_Low_Addr = 1<<(2-i);
			Stop_High_Addr = ~Stop_Low_Addr;
		}
		else
		{
			Stop_Low_Addr = 0;
			Stop_High_Addr = ~Stop_Low_Addr;
		}
	}

}
