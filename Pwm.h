/*
 * Pwm.h
 *
 *  Created on: 2020-10-8
 *      Author: Rick
 */

#ifndef PWM_H_
#define PWM_H_


#define		PWM16MODE			0			//	1-级联模式	0-分离模式

//PWM1 PWM2 级联模式选择							-------PWMCTL
#define		PWMMODE_16_bit					0x08
#define		PWMMODE_8_bit					0x00

void PWM_Init(void);
#endif /* PWM_H_ */
