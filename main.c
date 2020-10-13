/****************************************************************************************
 * KF8A系列单片机	KF8A100GQT_DEMO	开发板演示程序
 * 标    题: 通用IO实验
 * 项目名: 01- GPIO_Sample
 * 开发环境：ChipON IDE
 * 版          本     ：V1.0 (2019/08/10)
 * 作 者: 上海芯旺微电子有限公司
 * 功能简述：操作三色LED循环闪烁
 * 硬件说明：
 ****************************************************************************************/
#include<KF8A100GQS.h>
#include "includes.h"
#include "PinConfig.h"
#include "SoftSpi.h"
#include "Work.h"
#include "Pwm.h"
#include "Timer.h"

uint8 FistBootFlag=1;
void main()
{
	SCLKCTL =0X78;//禁止输出时钟，选择内部高频作为时钟源，分频器1:1分频
	HFCKCTL =0x8E;//使能高频外设时钟，INTHF/64,
	Init_IO();
	IS31FL3265B_Init();
	Timer0_Init();
	Timer1_Init();
	Timer2_Init();
	PUIE =1;
	AIE =1;
	if(FistBootFlag)
	{
		FistBootFlag=0;
		Led_Hello_Check();
	}
	while(1)
	{
		Tail_Stop_Check_Input();
		RT_Check_Input();
	}

}
//中断函数0:0X04入口地址
void int_fun0() __interrupt (0)
{
	if(T0IF & T0IE)		//500us定时
	{
		T0IF= 0;
		T0 =8;
	}
	if(T1IF & T1IE)
	{
		T1IF =0;
		Timer_PWM_Callback();
	}
	if(T2IF & T2IE)
	{
		T2IF =0;

	}
}

//中断函数1:0x14入口地址
void int_fun1() __interrupt (1)
{

}

