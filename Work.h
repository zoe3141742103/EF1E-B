/*
 * Work.h
 *
 *  Created on: 2020-10-7
 *      Author: Rick
 */

#ifndef WORK_H_
#define WORK_H_

void Init_IO(void);
void LED_Water(void);
void LED_Stop_Open(void);
void RT_Check_Input(void);
void Tail_Stop_Check_Input(void);
void Mode_Act(void);
void RT_Mode_Act(void);
void delay_ms(uint16 num);
void delay_us(uint16 num);
void Timer_PWM_Callback(void);
void Led_Hello_Check(void);

#define Mode1_Status 1<<0
#define Mode2_Status 1<<1
#define Mode3_Status 1<<2
#define Mode4_Status 1<<3
#define Mode5_Status 1<<4
#define Mode6_Status 1<<5
#define Mode7_Status 1<<6
#define Mode8_Status 1<<7
#define Mode9_Status 1<<8
#define Mode10_Status 1<<9
#define Mode11_Status 1<<10
#define Mode12_Status 1<<11

#define RT_Mode1_Status 1<<0
#define RT_Mode2_Status 1<<1
#define RT_Mode3_Status 1<<2
#endif /* WORK_H_ */
