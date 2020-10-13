/*
 * Work.c
 *
 *  Created on: 2020-10-7
 *      Author: Rick
 */
#include<KF8A100GQS.h>
#include "includes.h"
#include "PinConfig.h"
#include "Work.h"
#include "Led.h"



int PastMode=0;
int NowMode=0;
int ActMode=0;
int RT_PastMode=0;
int RT_NowMode=0;
int RT_ActMode=0;

volatile unsigned char LED_Stop_PWM_Flag,PWM_Timer_Flag =0;
volatile unsigned int Stop_High_Addr,Stop_Low_Addr=0;
volatile unsigned char Tail_Status,Stop_Status,RT_Status,RT_EN_Status=0;

void Init_IO()
{
	TR0 =0xFF;//仿真口设置为输入
	ANS0 =0;

	TR1=0x02;
	ANS1=0;
	P1LR=0;

	TR2=0;
	ANS2=0;
	P2LR=0;

	TR3=0;
	ANS3=0;
	P3LR=0;

	TR4=0X10; //lin_rxd设置为输入、lin_txd设置为输出
	ANS4=0;
	P4LR=0;

	TR5=0x02;
	ANS5=0;
	P5LR=0;

	TR6=0;//按键检测口也设置为输入
	ANS6=0;
	P6LR=0;

	TR7=0x06;
	ANS7=0;
	P7LR=0;
	PUR7=0;

	TR9=0X0E;
	ANS9=0;
	P9LR=0;

	TRA=0x01;
	ANSA=0;
	PALR=0;
	PURA=0;

	TRB=0;
	ANSB=0;
	PBLR=0;

}
void delay_ms(uint16 num)
{
	static uint16 i,j;
	for(i=0;i<num;i++)
	{
		j=250;
		while(j--);
	}
}
void delay_us(uint16 num)
{
	static uint16 i,j;
	for(i=0;i<num;i++);
}
void RT_Check_Input(void)
{
	RT_Status = RT;
	RT_EN_Status = RT_EN;
	if(RT_Status==0)		//转向低关灯
	{
		RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode1_Status;
		if(RT_NowMode==RT_PastMode)
		{
			RT_ActMode=0;
		}
		else
		{
			RT_ActMode=RT_NowMode;
		}
	}
	if(RT_Status==1&&RT_EN_Status==1)		//转向高，转向使能高，常亮
	{
		RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode2_Status;
		if(RT_NowMode==RT_PastMode)
		{
			RT_ActMode=0;
		}
		else
		{
			RT_ActMode=RT_NowMode;
		}
	}
	if(RT_Status==1&&RT_EN_Status==0)		//转向高，转向使能低，流水
	{
		RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode3_Status;
		if(RT_NowMode==RT_PastMode)
		{
			RT_ActMode=0;
		}
		else
		{
			RT_ActMode=RT_NowMode;
		}
	}
	RT_Mode_Act();
}
void RT_Mode_Act(void)
{
	switch(RT_ActMode)
	{
	case RT_Mode1_Status:
		Led_RT_AllClose();		//转向低，转向使能低，关灯
		break;
	case RT_Mode2_Status:
		Led_RT_AllOpen();		//转向高，转向使能高，常亮
		break;
	case RT_Mode3_Status:
		Led_RT_WaterOpen();		//转向高，转向使能低，流水
		break;
	default:break;
	}
}
void Tail_Stop_Check_Input(void)
{
	Tail_Status = Tail;
	Stop_Status = Stop;

	if(Tail_Status==0&&Stop_Status==0)//位置低，制动低
	{
		PastMode = NowMode;NowMode = Mode1_Status;
		if(NowMode==PastMode)
		{
			ActMode=0;
		}
		else
		{
			ActMode=NowMode;
		}
	}
	if(Tail_Status==1&&Stop_Status==0)//位置高，制动低
	{
		PastMode = NowMode;NowMode = Mode2_Status;
		if(NowMode==PastMode)
		{
			ActMode=0;
		}
		else
		{
			ActMode=NowMode;
		}
	}
	if(Tail_Status==0&&Stop_Status==1)//位置低，制动高
	{
		PastMode = NowMode;NowMode = Mode3_Status;
		if(NowMode==PastMode)
		{
			ActMode=0;
		}
		else
		{
			ActMode=NowMode;
		}
	}
	if(Tail_Status==1&&Stop_Status==1)//位置高，制动高
	{
		PastMode = NowMode;NowMode = Mode4_Status;
		if(NowMode==PastMode)
		{
			ActMode=0;
		}
		else
		{
			ActMode=NowMode;
		}
	}
	Mode_Act();
}
void Mode_Act(void)

{
	switch(ActMode)
	{
	case Mode1_Status:
		Led_Tail_AllClose();	//位置灯全关闭
		LED_Stop_AllClose();	//制动灯全关闭
		break;
	case Mode2_Status:
		Led_Tail_AllOpen();		//位置灯全开启
		LED_Stop_PWMOpen();		//制动灯5%PWM开启
		break;
	case Mode3_Status:
		Led_Tail_AllClose();	//位置灯全关闭
		LED_Stop_AllOpen();		//制动灯全开启
		break;
	case Mode4_Status:
		Led_Tail_AllOpen();		//位置灯全开启
		LED_Stop_AllOpen();		//制动灯全开启
		break;
	default:break;
	}
}
void Timer_PWM_Callback(void)
{
	if(PWM_Timer_Flag)
	{
		PWM_Timer_Flag =0;
		T1H = 0xF1;
		T1L = 0x60;
		if(Stop_High_Addr & LED1ADDR)
			LED1LOW;
		if(Stop_High_Addr & LED2ADDR)
			LED2LOW;
		if(Stop_High_Addr & LED3ADDR)
			LED3LOW;
		if(Stop_High_Addr & LED4ADDR)
			LED4LOW;
		if(Stop_High_Addr & LED5ADDR)
			LED5LOW;
		if(Stop_High_Addr & LED6ADDR)
			LED6LOW;
		if(Stop_High_Addr & LED7ADDR)
			LED7LOW;
		if(Stop_High_Addr & LED8ADDR)
			LED8LOW;
		if(Stop_High_Addr & LED9ADDR)
			LED9LOW;
		if(Stop_High_Addr & LED10ADDR)
			LED10LOW;
		if(Stop_High_Addr & LED11ADDR)
			LED11LOW;
		if(Stop_High_Addr & LED12ADDR)
			LED12LOW;
	}
	else
	{
		PWM_Timer_Flag =1;
		T1H = 0xFF;
		T1L = 0x98;
		if(Stop_Low_Addr & LED1ADDR)
			LED1HIGH;
		if(Stop_Low_Addr & LED2ADDR)
			LED2HIGH;
		if(Stop_Low_Addr & LED3ADDR)
			LED3HIGH;
		if(Stop_Low_Addr & LED4ADDR)
			LED4HIGH;
		if(Stop_Low_Addr & LED5ADDR)
			LED5HIGH;
		if(Stop_Low_Addr & LED6ADDR)
			LED6HIGH;
		if(Stop_Low_Addr & LED7ADDR)
			LED7HIGH;
		if(Stop_Low_Addr & LED8ADDR)
			LED8HIGH;
		if(Stop_Low_Addr & LED9ADDR)
			LED9HIGH;
		if(Stop_Low_Addr & LED10ADDR)
			LED10HIGH;
		if(Stop_Low_Addr & LED11ADDR)
			LED11HIGH;
		if(Stop_Low_Addr & LED12ADDR)
			LED12HIGH;
	}
}
void Led_Hello(void)
{
	Led_RT_WaterOpen();
	delay_ms(200);
	Led_RT_AllClose();
	delay_ms(300);
	Led_RT_WaterOpen();
	delay_ms(200);
	Led_RT_AllClose();
	delay_ms(300);
	Tail12_Breath_Open();
	delay_ms(200);
	Tail_LowWater_Open();
	delay_ms(300);
	Tail_HighWater_Open();
	Stop_HighBackWater_Open();
	Tail1_FullBackWater_Open();
	Tail2_Stop_FullWater_Open();
	for(;;);
}
void Led_Bye(void)
{
	Led_Tail_AllOpen();
	LED_Stop_AllOpen();
	delay_ms(1000);
	Led_RT_WaterOpen();
	delay_ms(200);
	Led_RT_AllClose();
	delay_ms(200);
	Tail_LowWater_Blinky();
	delay_ms(200);
	Tail1_2_Stop_BackWater_Close();
	Tail12_Breath_CloseTo10();
	Tail1_2_Stop_FullWater_Close();
	delay_ms(2000);
	Tail12_Breath_Close();
	for(;;);
}
void Led_Hello_Check(void)
{
	Tail_Status = Tail;
	Stop_Status = Stop;
	RT_Status = RT;
	RT_EN_Status = RT_EN;
	if(Tail_Status==1&&Stop_Status==1&&RT_Status==1&&RT_EN_Status==0)
	{
		Led_Hello();
	}
	if(Tail_Status==1&&Stop_Status==1&&RT_Status==1&&RT_EN_Status==1)
	{
		Led_Bye();
	}
}


