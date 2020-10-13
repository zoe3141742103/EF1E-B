/*
 * Pwm.c
 *
 *  Created on: 2020-10-8
 *      Author: Rick
 */
#ifndef PWM_C_
#define PWM_C_
#include<KF8A100GQS.h>
#include "includes.h"
#include "PinConfig.h"
#include "Pwm.h"
#include "Timer.h"
/****************************************************************************************
 * 函数名     ：PWM1_2_Init
 * 函数功能：PWM1 PWM2 配置初始化
 * 入口参数：无
 * 返回          ：无
****************************************************************************************/
void PWM34_Init(void)
{
	APFCTL4 = 0xCD;
	APFCTL3 = 0x8;
	TR43 = 1;
	TR63 = 1;
	PWM3L0=1;	PWM3L1=1;
	PP3H=99;	PP3L=1;
	PWM4L0=1;	PWM4L1=1;
	PP4H=99;	PP4L=1;
	PWM4CTL0 = 0xc;
	P4ATRCTL = 0x18;
	PWM3CTL0 = 0xc;
	P3ATRCTL = 0x12;
	T8CTL = 0x00;									//默认4分频
	T8CTL1 = T8CLK_SEL_HFCLK|T8CLK_Prescale1_DIV_1;		//16/4/4
	T8H = 0;
	T8L = 0;
	T8ON = 1;
	T9CTL = 0x00;									//默认4分频
	T9CTL1 = T8CLK_SEL_HFCLK|T8CLK_Prescale2_DIV_1;		//16/4/4
	T9H = 0;
	T9L = 0;
	T9ON = 1;
	TR43 = 0;
	TR63 = 0;
}
void PWM5_Init(void)
{
	APFCTL5 = 0xE0;
	TR24 = 1;
	TR66 = 1;
	TR45 = 1;
	PWM5L0=1;	PWM5H0=1;
	PWM5L1=1;	PWM5H1=1;
	PWM5L2=1;	PWM5H2=1;
	PP5H=99;	PP5L=1;
	PWM5CTL0 = 0xC;
	PWM5CTL2 = 0;
	P5STRCTL0 = 0x1F;
	P5STRCTL1 = 0xF;
	T10CTL0 = 0x00;
	T10CTL1 = T10CLK_SEL_HFCLK|T10CLK_Prescale2_DIV_1;		//16/4/4
	T10H = 0;
	T10L = 0;
	T10ON = 1;

	TR24 = 0;
	TR66 = 0;
	TR45 = 0;
}
void PWM67_Init(void)
{
	APFCTL2 = 0x64;
	TR20 = 1;
	TR21 = 1;
	TR23 = 1;
	TR61 = 1;
	TR65 = 1;
	TR94 = 1;
	PWM6L0=1;	PWM6H0=10;
	PWM6L1=1;	PWM6H1=10;
	PWM6L0=1;	PWM6H2=10;
	PWM6L3=1;	PWM6H3=10;
	PWM7L0=1;	PWM7H0=10;
	PWM7L1=1;	PWM7H1=10;
	PWM7L2=1;	PWM7H2=10;
	PWM7L3=1;	PWM7H3=10;
	PP60H=99;	PP60L=1;
	PP70H=99;	PP70L=1;
	PP61H=99;	PP61L=1;
	PP71H=99;	PP71L=1;
	PWM6CTL0 = 0xC;
	PWM7CTL0 = 0xC;
	T2CTL0 = 0x00;
	T2CTL1 = T2CLK_SEL_HFCLK|T2CLK_Prescale2_DIV_1;
	T4CTL0 = 0x00;
	T4CTL1 = T2CLK_SEL_HFCLK|T2CLK_Prescale2_DIV_1;
	T5CTL0 = 0x00;
	T5CTL1 = T5CLK_SEL_HFCLK|T5CLK_Prescale2_DIV_1;
	T6CTL0 = 0x00;
	T6CTL1 = T5CLK_SEL_HFCLK|T5CLK_Prescale2_DIV_1;
	T2H = 0;
	T2L = 0;
	T5H = 0;
	T5L = 0;
	T4H = 0;
	T4L = 0;
	T6H = 0;
	T6L = 0;
	T2ON = 1;
	T5ON = 1;
	T4ON = 1;
	T6ON = 1;

	TR20 = 0;
	TR21 = 0;
	TR23 = 0;
	TR61 = 0;
	TR65 = 0;
	TR94 = 0;
}
void PWM_Init(void)
{
	//PWM34_Init();
	//PWM5_Init();
	PWM67_Init();
}


#endif
