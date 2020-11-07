#include<KF8A100GQS.h>
#include "includes.h"
#include "PinConfig.h"
#include "SoftSpi.h"
#include "Work.h"
#include "Timer.h"
void SYS_Init(void)
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
}
void main()
{
	SYS_Init();//系统初始化
	Led_Hello_Check();//迎宾欢送检查
	while(1)
	{
		Tail_Stop_Check_Input();//位置制动检查
		RT_Check_Input();//转向检查
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

