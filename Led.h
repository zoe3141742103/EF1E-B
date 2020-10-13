/*
 * Led.h
 *
 *  Created on: 2020-10-9
 *      Author: Rick
 */

#ifndef LED_H_
#define LED_H_

void LED_Stop_AllOpen(void);
void LED_Stop_AllClose(void);
void LED_Stop_PWMOpen(void);
void Led_RT_AllOpen(void);
void Led_RT_AllClose(void);
void Led_RT_WaterOpen(void);
void Led_Tail_AllOpen(void);
void Led_Tail_AllClose(void);
void Tail12_Breath_Open(void);
void Tail12_Breath_Close(void);
void Tail12_Breath_CloseTo10(void);
void Tail_LowWater_Open(void);
void Tail_HighWater_Open(void);
void Stop_HighBackWater_Open(void);
void Tail1_FullBackWater_Open(void);
void Tail2_Stop_FullWater_Open(void);
void Tail_LowWater_Blinky(void);
void Tail1_2_Stop_BackWater_Close(void);
void Tail1_2_Stop_FullWater_Close(void);

#endif /* LED_H_ */
