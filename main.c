/****************************************************************************************
 * KF8Aϵ�е�Ƭ��	KF8A100GQT_DEMO	��������ʾ����
 * ��    ��: ͨ��IOʵ��
 * ��Ŀ��: 01- GPIO_Sample
 * ����������ChipON IDE
 * ��          ��     ��V1.0 (2019/08/10)
 * �� ��: �Ϻ�о��΢�������޹�˾
 * ���ܼ�����������ɫLEDѭ����˸
 * Ӳ��˵����
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
	SCLKCTL =0X78;//��ֹ���ʱ�ӣ�ѡ���ڲ���Ƶ��Ϊʱ��Դ����Ƶ��1:1��Ƶ
	HFCKCTL =0x8E;//ʹ�ܸ�Ƶ����ʱ�ӣ�INTHF/64,
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
//�жϺ���0:0X04��ڵ�ַ
void int_fun0() __interrupt (0)
{
	if(T0IF & T0IE)		//500us��ʱ
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

//�жϺ���1:0x14��ڵ�ַ
void int_fun1() __interrupt (1)
{

}

