/****************************************************************************************

 ****************************************************************************************/
#ifndef  INCLUDES_H_
#define  INCLUDES_H_


#include "KF8_Type_Define.h"

/*SYSCLKϵͳƵ�ʿ��ƼĴ���:SCLKCTL --------------------------------------------------------*/
#define SYSYCLK_SEL_SCKS						(0x40) /*!< 0B0100 0000 SCKѡ��ʱ��*/
#define SYSYCLK_SEL_FOSC0						(0x00) /*!< 0B0000 0000   ������ѡ��ʱ��*/
/*ʱ��Ƶ��ѡ��λSCLKCTL :SCLKDIV<2:0>--------------------------------------------------------*/
#define	SYSCLK_FREQ_DIV1						(0x38) /*!< 0B0011 1000 1:1��Ƶ*/
#define	SYSCLK_FREQ_DIV2						(0x30) /*!< 0B0011 0000 1:2��Ƶ*/
#define	SYSCLK_FREQ_DIV4						(0x28) /*!< 0B0010 1000 1:4��Ƶ*/
#define	SYSCLK_FREQ_DIV8						(0x20) /*!< 0B0010 0000 1:8��Ƶ*/
#define	SYSCLK_FREQ_DIV16						(0x18) /*!< 0B0001 1000 1:16��Ƶ*/
#define	SYSCLK_FREQ_DIV32						(0x10) /*!< 0B0001 0000 1:32��Ƶ*/
#define	SYSCLK_FREQ_DIV64						(0x08) /*!< 0B0000 1000 1:64��Ƶ*/
#define	SYSCLK_FREQ_DIV128						(0x00) /*!< 0B0000 0000 1:128��Ƶ*/

/*ϵͳʱ��Դѡ��λSCLKCTL :SCKS<2:0>--------------------------------------------------------*/
#define	SYSCLK_SCLK_SEL_UPCK					(0x04) /*!< 0B00000100 ϵͳʱ��Դѡ��UPCK*/
#define	SYSCLK_SCLK_SEL_INTHF					(0x00) /*!< 0B00000000 ϵͳʱ��Դѡ���ڲ���Ƶʱ��*/
#define	SYSCLK_SCLK_SEL_INTLF					(0x01) /*!< 0B00000001 ϵͳʱ��Դѡ���ڲ���Ƶʱ��*/
#define	SYSCLK_SCLK_SEL_EXTLF					(0x03) /*!< 0B00000011 ϵͳʱ��Դѡ���ⲿ��Ƶʱ��*/
#define	SYSCLK_SCLK_SEL_EXTHF					(0x02) /*!< 0B00000010 ϵͳʱ��Դѡ���ⲿ��Ƶʱ��*/

/*PLLCKSʱ��ѡ��λ 	--------------------------------------------------------*/
#define	PLL_SEL_EXTHF							(0x01)
#define	PLL_SEL_INTHF							(0x00)
/*PCKHALFʱ��Ԥ��Ƶѡ��λ 	--------------------------------------------------------*/
#define	PLL_SEL_DIV1							(0x00)
#define	PLL_SEL_DIV2							(0x80)
/*PLLCTLʱ�ӱ�Ƶѡ�� 	--------------------------------------------------------*/
#define PLLBIAS_CUR_MAX                         (0x70) /*!< 0B01110000 PLLƫ�õ������*/
#define PLLBIAS_CUR_MIN                         (0x00) /*!< 0B01110000 PLLƫ�õ�����С*/
#define PLLPMUL_2                               (0x00) /*!< 0B00000000 PLLѡ��2��Ƶ*/
#define PLLPMUL_3                               (0x04) /*!< 0B00000100 PLLѡ��3��Ƶ*/
#define PLLPMUL_4                               (0x08) /*!< 0B00001000 PLLѡ��4��Ƶ*/
#define PLLPMUL_6                               (0x0C) /*!< 0B00001100 PLLѡ��6��Ƶ*/

#endif
