/*
 * PinConfig.h
 *
 *  Created on: 2020-10-6
 *      Author: Rick
 */

#ifndef PINCONFIG_H_
#define PINCONFIG_H_

#define	LED1HIGH	P2LR3=1
#define	LED1LOW		P2LR3=0
#define	LED1ADDR	1<<0

#define	LED2HIGH	P2LR4=1
#define	LED2LOW		P2LR4=0
#define	LED2ADDR	1<<1

#define	LED3HIGH	P2LR0=1
#define	LED3LOW		P2LR0=0
#define	LED3ADDR	1<<2

#define	LED4HIGH	P2LR1=1
#define	LED4LOW		P2LR1=0
#define	LED4ADDR	1<<3

#define	LED5HIGH	P6LR1=1
#define	LED5LOW		P6LR1=0
#define	LED5ADDR	1<<4

#define	LED6HIGH	P6LR3=1
#define	LED6LOW		P6LR3=0
#define	LED6ADDR	1<<5

#define	LED7HIGH	P6LR5=1
#define	LED7LOW		P6LR5=0
#define	LED7ADDR	1<<6

#define	LED8HIGH	P6LR6=1
#define	LED8LOW		P6LR6=0
#define	LED8ADDR	1<<7

#define	LED9HIGH	P9LR5=1
#define	LED9LOW		P9LR5=0
#define	LED9ADDR	1<<8

#define	LED10HIGH	P9LR4=1
#define	LED10LOW	P9LR4=0
#define	LED10ADDR	1<<9

#define	LED11HIGH	P4LR3=1
#define	LED11LOW	P4LR3=0
#define	LED11ADDR	1<<10

#define	LED12HIGH	P4LR5=1
#define	LED12LOW	P4LR5=0
#define	LED12ADDR	1<<11

#define	CS1HIGH		P0LR4=1
#define	CS1LOW		P0LR4=0

#define	CS2HIGH		P6LR2=1
#define	CS2LOW		P6LR2=0

#define	CS3HIGH		P1LR0=1
#define	CS3LOW		P1LR0=0

#define	CS4HIGH		PALR1=1
#define	CS4LOW		PALR1=0

#define	TEST		P2LR

#define TAIL_CATCH	P7LR1
#define STOP_CATCH	P7LR2
#define RT_CATCH	PALR0

#define SPI_SCK 	P0LR3
#define SPI_MOSI 	P9LR1
#define SPI_MISO 	P9LR2

#define SDB1		P1LR2
#define SDB2		P5LR5

#define Tail		P71
#define RT 			PA0
#define Stop 		P72
#define RT_EN 		P51

#endif /* PINCONFIG_H_ */
