/*
 * Pwm.h
 *
 *  Created on: 2020-10-8
 *      Author: Rick
 */

#ifndef PWM_H_
#define PWM_H_


#define		PWM16MODE			0			//	1-����ģʽ	0-����ģʽ

//PWM1 PWM2 ����ģʽѡ��							-------PWMCTL
#define		PWMMODE_16_bit					0x08
#define		PWMMODE_8_bit					0x00

void PWM_Init(void);
#endif /* PWM_H_ */
