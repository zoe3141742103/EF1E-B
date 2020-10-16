;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
;	.file	"../main.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_spi_init
	.extern	_spi_read
	.extern	_SPI_Write_2Byte
	.extern	_IS31FL3265B_Init
	.extern	_Tail_One_Init
	.extern	_Tail_Two_Init
	.extern	_Rt_One_Init
	.extern	_Rt_Two_Init
	.extern	_Tail_One_Work
	.extern	_Tail_Two_Work
	.extern	_Rt_One_Work
	.extern	_Rt_Two_Work
	.extern	_Init_IO
	.extern	_LED_Water
	.extern	_LED_Stop_Open
	.extern	_RT_Check_Input
	.extern	_Tail_Stop_Check_Input
	.extern	_Mode_Act
	.extern	_RT_Mode_Act
	.extern	_RT_Water_Act
	.extern	_delay_ms
	.extern	_delay_us
	.extern	_Timer_PWM_Callback
	.extern	_Led_Hello_Check
	.extern	_RT_Timer_PWM_Callback
	.extern	_PWM_Init
	.extern	_Timer0_Init
	.extern	_Timer1_Init
	.extern	_Timer2_Init
	.extern	_Timer3_Init
	.extern	_Timer5_Init
	.extern	_Timer8_Init
	.extern	_Timer10_Init
	.extern	_test
	.extern	_STKR0
	.extern	_STK00
	.extern	_STK01
	.extern	_STK02
	.extern	_STK03
	.extern	_STK04
	.extern	_STK05
	.extern	_STK06
	.extern	_STK07
	.extern	_STK08
	.extern	_STK09
	.extern	_STK10
	.extern	_STK11
	.extern	_PSW_bits
	.extern	_P0_bits
	.extern	_P2_bits
	.extern	_P1_bits
	.extern	_P3_bits
	.extern	_P4_bits
	.extern	_INTCTL_bits
	.extern	_EIF1_bits
	.extern	_EIF2_bits
	.extern	_T1CTL_bits
	.extern	_T2CTL0_bits
	.extern	_PWMCTL_bits
	.extern	_BANK_bits
	.extern	_CMCTL0_bits
	.extern	_C1CTL_bits
	.extern	_COUT_bits
	.extern	_ADCCTL0_bits
	.extern	_OPTR_bits
	.extern	_IP0_bits
	.extern	_IP1_bits
	.extern	_IP2_bits
	.extern	_TR0_bits
	.extern	_TR2_bits
	.extern	_TR1_bits
	.extern	_TR3_bits
	.extern	_TR4_bits
	.extern	_VRECTL_bits
	.extern	_EIE1_bits
	.extern	_EIE2_bits
	.extern	_PCTL_bits
	.extern	_C2CTL_bits
	.extern	_PUR0_bits
	.extern	_IOCL0_bits
	.extern	_ADCCTL1_bits
	.extern	_WDTPS_bits
	.extern	_P0LR_bits
	.extern	_P2LR_bits
	.extern	_P1LR_bits
	.extern	_P3LR_bits
	.extern	_P4LR_bits
	.extern	_ANS0_bits
	.extern	_ANS1_bits
	.extern	_ANS2_bits
	.extern	_ANS3_bits
	.extern	_ANS4_bits
	.extern	_T0CTL_bits
	.extern	_ADCCTL2_bits
	.extern	_T2CTL1_bits
	.extern	_BKPCTL_bits
	.extern	_SCLKSTU_bits
	.extern	_PWM6CTL0_bits
	.extern	_P6ATRCTL_bits
	.extern	_PWM6CTL2_bits
	.extern	_PWM6PC_bits
	.extern	_CCTCTL_bits
	.extern	_SCLKCTL_bits
	.extern	_HFCKCTL_bits
	.extern	_LFCKCTL_bits
	.extern	_P5_bits
	.extern	_P6_bits
	.extern	_P7_bits
	.extern	_P9_bits
	.extern	_IP5_bits
	.extern	_EIF4_bits
	.extern	_EIE4_bits
	.extern	_EIF5_bits
	.extern	_EIE5_bits
	.extern	_T4CTL0_bits
	.extern	_WCFR_bits
	.extern	_WCNT_bits
	.extern	_WCTL_bits
	.extern	_T1CTL2_bits
	.extern	_T3CTL_bits
	.extern	_UPINSET2_bits
	.extern	_IP4_bits
	.extern	_TR5_bits
	.extern	_TR6_bits
	.extern	_TR7_bits
	.extern	_TR9_bits
	.extern	_T7CTL_bits
	.extern	_VRES0_bits
	.extern	_SSCI1CTL1_bits
	.extern	_SSCI1STA_bits
	.extern	_SSCI1CTL0_bits
	.extern	_SSCI1ADD_bits
	.extern	_SSCI1MSK_bits
	.extern	_SSCI1CTL2_bits
	.extern	_DIVCTL_bits
	.extern	_P5LR_bits
	.extern	_P6LR_bits
	.extern	_P7LR_bits
	.extern	_P9LR_bits
	.extern	_ANS5_bits
	.extern	_ANS6_bits
	.extern	_ANS7_bits
	.extern	_ANS8_bits
	.extern	_ANS9_bits
	.extern	_VRES1_bits
	.extern	_T4CTL1_bits
	.extern	_UADMATCH2_bits
	.extern	_U7816TXCTL2_bits
	.extern	_EGTCTL2_bits
	.extern	_CLKDIV2_bits
	.extern	_U7816CTL2_bits
	.extern	_U7816RXCTL2_bits
	.extern	_RSCTL2_bits
	.extern	_BRCTL2_bits
	.extern	_TSCTL2_bits
	.extern	_SSCI2STA_bits
	.extern	_SSCI2CTL0_bits
	.extern	_SSCI2ADD_bits
	.extern	_SSCI2MSK_bits
	.extern	_SSCI2CTL2_bits
	.extern	_RSCTL3_bits
	.extern	_BRCTL3_bits
	.extern	_CCP3CTL_bits
	.extern	_CCP7CTL_bits
	.extern	_TSCTL3_bits
	.extern	_EIF3_bits
	.extern	_EIE3_bits
	.extern	_UADMATCH3_bits
	.extern	_SLEPEN3_bits
	.extern	_UPINSET3_bits
	.extern	_SSCI2CTL1_bits
	.extern	_IP3_bits
	.extern	_FILT1CTL_bits
	.extern	_FILT1PER_bits
	.extern	_FILT2CTL_bits
	.extern	_FILT2PER_bits
	.extern	_FILT3CTL_bits
	.extern	_FILT3PER_bits
	.extern	_FILT4CTL_bits
	.extern	_FILT4PER_bits
	.extern	_C3CTL_bits
	.extern	_C4CTL_bits
	.extern	_PUR9_bits
	.extern	_PUR1_bits
	.extern	_PUR2_bits
	.extern	_PUR3_bits
	.extern	_PUR4_bits
	.extern	_PUR5_bits
	.extern	_PUR6_bits
	.extern	_PUR7_bits
	.extern	_MULCTL_bits
	.extern	_UPINSET1_bits
	.extern	_USLPEN1_bits
	.extern	_ADCINTCTL_bits
	.extern	_ADSCANCTL_bits
	.extern	_EIE7_bits
	.extern	_EIF7_bits
	.extern	_IP7_bits
	.extern	_HLVDCTL_bits
	.extern	_RTCSRT_bits
	.extern	_RTCSTU_bits
	.extern	_RTCALRS_bits
	.extern	_RTCALRM_bits
	.extern	_RTCALRH_bits
	.extern	_RTCALRW_bits
	.extern	_RTCTTR_bits
	.extern	_RTCFCR_bits
	.extern	_RTCSEC_bits
	.extern	_RTCMIN_bits
	.extern	_RTCHOUR_bits
	.extern	_RTCWEK_bits
	.extern	_RTCDAY_bits
	.extern	_RTCMTH_bits
	.extern	_RTCYEAR_bits
	.extern	_RTCTMRCTL_bits
	.extern	_RTCTMREN_bits
	.extern	_POWCTL_bits
	.extern	_PCAL_bits
	.extern	_BWDTCTL_bits
	.extern	_PHCLR_bits
	.extern	_LPRCCTL_bits
	.extern	_BBODCTL_bits
	.extern	_IOCAF_bits
	.extern	_IOCBF_bits
	.extern	_IOCCF_bits
	.extern	_IOCAPOS_bits
	.extern	_IOCBPOS_bits
	.extern	_IOCCPOS_bits
	.extern	_IOCANEG_bits
	.extern	_IOCBNEG_bits
	.extern	_IOCCNEG_bits
	.extern	_IOCMOD_bits
	.extern	_SRCTL0_bits
	.extern	_SRCTL1_bits
	.extern	_T8CTL1_bits
	.extern	_T9CTL1_bits
	.extern	_PA_bits
	.extern	_PALR_bits
	.extern	_TRA_bits
	.extern	_PURA_bits
	.extern	_ANSA_bits
	.extern	_PB_bits
	.extern	_PBLR_bits
	.extern	_TRB_bits
	.extern	_PURB_bits
	.extern	_ANSB_bits
	.extern	_RSCTL4_bits
	.extern	_BRCTL4_bits
	.extern	_TSCTL4_bits
	.extern	_UADMATCH4_bits
	.extern	_SLPEN4_bits
	.extern	_UPINSET4_bits
	.extern	_P3ASCTL_bits
	.extern	_P3ATRCTL_bits
	.extern	_PWM3CTL0_bits
	.extern	_PWM3CTL1_bits
	.extern	_T8CTL_bits
	.extern	_P4ASCTL_bits
	.extern	_P4ATRCTL_bits
	.extern	_PWM4CTL0_bits
	.extern	_PWM4CTL1_bits
	.extern	_T9CTL_bits
	.extern	_APFCTL2_bits
	.extern	_APFCTL3_bits
	.extern	_APFCTL4_bits
	.extern	_APFCTL5_bits
	.extern	_APFCTL6_bits
	.extern	_APFCTL7_bits
	.extern	_APFCTL8_bits
	.extern	_APFCTL9_bits
	.extern	_APFCTL10_bits
	.extern	_APFCTL11_bits
	.extern	_APFCTL12_bits
	.extern	_ADCOFFSET_bits
	.extern	_P7ATRCTL_bits
	.extern	_PWM7CTL0_bits
	.extern	_PWM7CTL2_bits
	.extern	_T5CTL1_bits
	.extern	_PLLCTL_bits
	.extern	_CANIE_bits
	.extern	_CANIF_bits
	.extern	_CANP_bits
	.extern	_EIE6_bits
	.extern	_EIF6_bits
	.extern	_IP6_bits
	.extern	_CANTXINF_bits
	.extern	_CANTXID0_bits
	.extern	_CANTXID1_bits
	.extern	_CANTXID2_bits
	.extern	_CANTXID3_bits
	.extern	_CANMOD_bits
	.extern	_CANCMR_bits
	.extern	_CANSTA_bits
	.extern	_CANBTR_bits
	.extern	_CANSEG_bits
	.extern	_CANALC_bits
	.extern	_CANECC_bits
	.extern	_CANEWL_bits
	.extern	_CANRXE_bits
	.extern	_CANTXE_bits
	.extern	_CANRMC_bits
	.extern	_CANACR0_bits
	.extern	_CANACR1_bits
	.extern	_CANACR2_bits
	.extern	_CANACR3_bits
	.extern	_CANMSK0_bits
	.extern	_CANMSK1_bits
	.extern	_CANMSK2_bits
	.extern	_CANMSK3_bits
	.extern	_T5CTL0_bits
	.extern	_T6CTL1_bits
	.extern	_T6CTL0_bits
	.extern	_PWM7PC_bits
	.extern	_PWM5OC_bits
	.extern	_PWM5PC_bits
	.extern	_T10CTL1_bits
	.extern	_T10CTL0_bits
	.extern	_EIF8_bits
	.extern	_EIE8_bits
	.extern	_IP8_bits
	.extern	_ADCCTL3_bits
	.extern	_P5ASCTL0_bits
	.extern	_P5ASCTL1_bits
	.extern	_P5STRCTL0_bits
	.extern	_P5STRCTL1_bits
	.extern	_PWM5CTL0_bits
	.extern	_PWM5CTL1_bits
	.extern	_PWM5CTL2_bits
	.extern	_PWM5FC_bits
	.extern	_IDLR
	.extern	_T0
	.extern	_PCL
	.extern	_PSW
	.extern	_IR
	.extern	_P0
	.extern	_P2
	.extern	_P1
	.extern	_P3
	.extern	_P4
	.extern	_PCH
	.extern	_INTCTL
	.extern	_EIF1
	.extern	_EIF2
	.extern	_T1L
	.extern	_T1H
	.extern	_T1CTL
	.extern	_T2L
	.extern	_T2CTL0
	.extern	_PWM1L
	.extern	_PWMCTL
	.extern	_PP1
	.extern	_BANK
	.extern	_CMCTL0
	.extern	_C1CTL
	.extern	_COUT
	.extern	_ADCDATA0H
	.extern	_ADCCTL0
	.extern	_OPTR
	.extern	_IP0
	.extern	_IP1
	.extern	_IP2
	.extern	_TR0
	.extern	_TR2
	.extern	_TR1
	.extern	_TR3
	.extern	_TR4
	.extern	_VRECTL
	.extern	_EIE1
	.extern	_EIE2
	.extern	_PCTL
	.extern	_OSCCAL2
	.extern	_C2CTL
	.extern	_PP2
	.extern	_PWM2L
	.extern	_PUR0
	.extern	_IOCL0
	.extern	_OSCCAL1
	.extern	_NVMDATAH
	.extern	_NVMDATAL
	.extern	_NVMADDRH
	.extern	_NVMADDRL
	.extern	_NVMCTL0
	.extern	_NVMCTL1
	.extern	_ADCDATA0L
	.extern	_ADCCTL1
	.extern	_WDTPS
	.extern	_T2H
	.extern	_PP60H
	.extern	_PWM6L0
	.extern	_PWM6H0
	.extern	_P0LR
	.extern	_P2LR
	.extern	_P1LR
	.extern	_P3LR
	.extern	_P4LR
	.extern	_ANS0
	.extern	_ANS1
	.extern	_ANS2
	.extern	_ANS3
	.extern	_ANS4
	.extern	_T0CTL
	.extern	_ADCCTL2
	.extern	_T2CTL1
	.extern	_PP60L
	.extern	_BKPCTL
	.extern	_SCLKSTU
	.extern	_PWM6H1
	.extern	_PWM6L1
	.extern	_PWM6CTL0
	.extern	_P6ATRCTL
	.extern	_PWM6CTL2
	.extern	_PWM6PC
	.extern	_PWM6H2
	.extern	_PWM6L2
	.extern	_PWM6H3
	.extern	_PWM6L3
	.extern	_CCTCTL
	.extern	_SCLKCTL
	.extern	_HFCKCTL
	.extern	_LFCKCTL
	.extern	_P5
	.extern	_P6
	.extern	_P7
	.extern	_P9
	.extern	_IP5
	.extern	_EIF4
	.extern	_EIE4
	.extern	_EIF5
	.extern	_EIE5
	.extern	_T4L
	.extern	_T4CTL0
	.extern	_WCFR
	.extern	_WCNT
	.extern	_WCTL
	.extern	_T3REH
	.extern	_T1CTL2
	.extern	_T3CTL
	.extern	_T3H
	.extern	_T3REL
	.extern	_T3L
	.extern	_UPINSET2
	.extern	_IP4
	.extern	_TR5
	.extern	_TR6
	.extern	_TR7
	.extern	_TR9
	.extern	_T7CTL
	.extern	_T7L
	.extern	_T7H
	.extern	_T7REL
	.extern	_T7REH
	.extern	_VRES0
	.extern	_DIVRH
	.extern	_OSCCAL0
	.extern	_OSCCAL3
	.extern	_SSCI1CTL1
	.extern	_SSCI1STA
	.extern	_SSCI1CTL0
	.extern	_SSCI1BUFR
	.extern	_SSCI1ADD
	.extern	_SSCI1MSK
	.extern	_SSCI1CTL2
	.extern	_DIVBH
	.extern	_DIVCTL
	.extern	_DIVAH
	.extern	_DIVAL
	.extern	_DIVBL
	.extern	_DIVQH
	.extern	_DIVQL
	.extern	_DIVRL
	.extern	_T4H
	.extern	_PP61H
	.extern	_P5LR
	.extern	_P6LR
	.extern	_P7LR
	.extern	_P9LR
	.extern	_ANS5
	.extern	_ANS6
	.extern	_ANS7
	.extern	_ANS8
	.extern	_ANS9
	.extern	_VRES1
	.extern	_T4CTL1
	.extern	_PP61L
	.extern	_T2CCR0L
	.extern	_T2CCR0H
	.extern	_T2CCR1L
	.extern	_T2CCR1H
	.extern	_T4CCR0L
	.extern	_EUBRGH2
	.extern	_T4CCR0H
	.extern	_UADMATCH2
	.extern	_U7816TXCTL2
	.extern	_EGTCTL2
	.extern	_CLKDIV2
	.extern	_U7816CTL2
	.extern	_U7816RXCTL2
	.extern	_RSCTL2
	.extern	_TXSDR2
	.extern	_RXSDR2
	.extern	_BRCTL2
	.extern	_TSCTL2
	.extern	_EUBRGL2
	.extern	_SSCI2STA
	.extern	_SSCI2CTL0
	.extern	_SSCI2BUFR
	.extern	_SSCI2ADD
	.extern	_SSCI2MSK
	.extern	_SSCI2CTL2
	.extern	_RSCTL3
	.extern	_TXSDR3
	.extern	_RXSDR3
	.extern	_BRCTL3
	.extern	_CCP3CTL
	.extern	_CCP3H
	.extern	_CCP3L
	.extern	_CCP7CTL
	.extern	_CCP7H
	.extern	_CCP7L
	.extern	_TSCTL3
	.extern	_EUBRGL3
	.extern	_EUBRGH3
	.extern	_EIF3
	.extern	_EIE3
	.extern	_UADMATCH3
	.extern	_SLEPEN3
	.extern	_UPINSET3
	.extern	_SSCI2CTL1
	.extern	_IP3
	.extern	_FILT1CTL
	.extern	_FILT1PER
	.extern	_FILT2CTL
	.extern	_FILT2PER
	.extern	_FILT3CTL
	.extern	_FILT3PER
	.extern	_FILT4CTL
	.extern	_FILT4PER
	.extern	_C3CTL
	.extern	_C4CTL
	.extern	_VRECAL2
	.extern	_VRECAL3
	.extern	_PUR9
	.extern	_PUR1
	.extern	_PUR2
	.extern	_PUR3
	.extern	_PUR4
	.extern	_PUR5
	.extern	_PUR6
	.extern	_PUR7
	.extern	_MULAL
	.extern	_MULBH
	.extern	_MULRES3
	.extern	_MULRES2
	.extern	_MULRES1
	.extern	_MULRES0
	.extern	_MULBL
	.extern	_MULCTL
	.extern	_MULAH
	.extern	_ADCDATA1L
	.extern	_ADCDATA1H
	.extern	_ADCDATA2L
	.extern	_ADCDATA2H
	.extern	_ADCDATA3L
	.extern	_ADCDATA3H
	.extern	_UPINSET1
	.extern	_USLPEN1
	.extern	_EUBRGH1
	.extern	_ADCINTCTL
	.extern	_ADSCANCTL
	.extern	_EIE7
	.extern	_EIF7
	.extern	_IP7
	.extern	_HLVDCTL
	.extern	_RTCSRT
	.extern	_RTCSTU
	.extern	_RTCALRS
	.extern	_RTCALRM
	.extern	_RTCALRH
	.extern	_RTCALRW
	.extern	_RTCTTR
	.extern	_RTCFCR
	.extern	_RTCSEC
	.extern	_RTCMIN
	.extern	_RTCHOUR
	.extern	_RTCWEK
	.extern	_RTCDAY
	.extern	_RTCMTH
	.extern	_RTCYEAR
	.extern	_RTCTMRCTL
	.extern	_RTCTMREN
	.extern	_RTCTMR1
	.extern	_RTCTMR0
	.extern	_POWCTL
	.extern	_PCAL
	.extern	_XTALCAL
	.extern	_BWDTCTL
	.extern	_PHCLR
	.extern	_LPRCCAL
	.extern	_LPRCCTL
	.extern	_BBODCTL
	.extern	_IOCAF
	.extern	_IOCBF
	.extern	_IOCCF
	.extern	_IOCAPOS
	.extern	_IOCBPOS
	.extern	_IOCCPOS
	.extern	_IOCANEG
	.extern	_IOCBNEG
	.extern	_IOCCNEG
	.extern	_IOCMOD
	.extern	_SRCTL0
	.extern	_SRCTL1
	.extern	_T8CTL1
	.extern	_T9CTL1
	.extern	_PA
	.extern	_PALR
	.extern	_TRA
	.extern	_PURA
	.extern	_ANSA
	.extern	_PB
	.extern	_PBLR
	.extern	_TRB
	.extern	_PURB
	.extern	_ANSB
	.extern	_RSCTL4
	.extern	_TXSDR4
	.extern	_RXSDR4
	.extern	_BRCTL4
	.extern	_TSCTL4
	.extern	_EUBRGL4
	.extern	_EUBRGH4
	.extern	_UADMATCH4
	.extern	_SLPEN4
	.extern	_UPINSET4
	.extern	_P3ASCTL
	.extern	_P3ATRCTL
	.extern	_PP3H
	.extern	_PP3L
	.extern	_PWM3CTL0
	.extern	_PWM3CTL1
	.extern	_PWM3H0
	.extern	_PWM3H1
	.extern	_PWM3L0
	.extern	_PWM3L1
	.extern	_T8CCRH
	.extern	_T8CCRL
	.extern	_T8CTL
	.extern	_T8H
	.extern	_T8L
	.extern	_P4ASCTL
	.extern	_P4ATRCTL
	.extern	_PP4H
	.extern	_PP4L
	.extern	_PWM4CTL0
	.extern	_PWM4CTL1
	.extern	_PWM4H0
	.extern	_PWM4H1
	.extern	_PWM4L0
	.extern	_PWM4L1
	.extern	_T9CCRH
	.extern	_T9CCRL
	.extern	_T9CTL
	.extern	_T9H
	.extern	_T9L
	.extern	_APFCTL2
	.extern	_APFCTL3
	.extern	_APFCTL4
	.extern	_APFCTL5
	.extern	_APFCTL6
	.extern	_APFCTL7
	.extern	_APFCTL8
	.extern	_APFCTL9
	.extern	_APFCTL10
	.extern	_APFCTL11
	.extern	_APFCTL12
	.extern	_ADCOFFSET
	.extern	_P7ATRCTL
	.extern	_PP70H
	.extern	_PP70L
	.extern	_PP71H
	.extern	_PP71L
	.extern	_PWM7CTL0
	.extern	_PWM7CTL2
	.extern	_T5CTL1
	.extern	_PLLCTL
	.extern	_CANIE
	.extern	_CANIF
	.extern	_CANP
	.extern	_EIE6
	.extern	_EIF6
	.extern	_IP6
	.extern	_CANTXINF
	.extern	_CANTXID0
	.extern	_CANTXID1
	.extern	_CANTXID2
	.extern	_CANTXID3
	.extern	_CANTXDT0
	.extern	_CANTXDT1
	.extern	_CANTXDT2
	.extern	_CANTXDT3
	.extern	_CANTXDT4
	.extern	_CANTXDT5
	.extern	_CANTXDT6
	.extern	_CANTXDT7
	.extern	_CANMOD
	.extern	_CANCMR
	.extern	_CANSTA
	.extern	_CANBTR
	.extern	_CANSEG
	.extern	_CANALC
	.extern	_CANECC
	.extern	_CANEWL
	.extern	_CANRXE
	.extern	_CANTXE
	.extern	_CANRMC
	.extern	_CANACR0
	.extern	_CANACR1
	.extern	_CANACR2
	.extern	_CANACR3
	.extern	_CANMSK0
	.extern	_CANMSK1
	.extern	_CANMSK2
	.extern	_CANMSK3
	.extern	_T5CTL0
	.extern	_T5H
	.extern	_T5L
	.extern	_T6CTL1
	.extern	_T6CTL0
	.extern	_T6H
	.extern	_T6L
	.extern	_PWM7L0
	.extern	_PWM7H0
	.extern	_PWM7L1
	.extern	_PWM7H1
	.extern	_PWM7L2
	.extern	_PWM7H2
	.extern	_T5CCR0H
	.extern	_T5CCR0L
	.extern	_T5CCR1H
	.extern	_T5CCR1L
	.extern	_T6CCR0H
	.extern	_T6CCR0L
	.extern	_PWM7L3
	.extern	_PWM7H3
	.extern	_PWM7PC
	.extern	_PWM5H2
	.extern	_PWM5H3
	.extern	_PWM5L0
	.extern	_PWM5L1
	.extern	_PWM5L2
	.extern	_PWM5L3
	.extern	_PWM5OC
	.extern	_PWM5PC
	.extern	_T10CTL1
	.extern	_T10CCR0H
	.extern	_T10CCR0L
	.extern	_T10CCR1H
	.extern	_T10CCR1L
	.extern	_T10CTL0
	.extern	_T10H
	.extern	_T10L
	.extern	_EIF8
	.extern	_EIE8
	.extern	_IP8
	.extern	_ADCCTL3
	.extern	_P5ASCTL0
	.extern	_P5ASCTL1
	.extern	_P5STRCTL0
	.extern	_P5STRCTL1
	.extern	_PP5H
	.extern	_PP5L
	.extern	_PWM5CTL0
	.extern	_PWM5CTL1
	.extern	_PWM5CTL2
	.extern	_PWM5FC
	.extern	_PWM5H0
	.extern	_PWM5H1
	.extern	_startup
	.extern	__gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	.global	_main
	.global	_int_fun0
	.global	_int_fun1
	.global	_FistBootFlag

	.global I0R1
	.global I0R7
	.global I0PSW
	.global I0PCH
	.global I1R1
	.global I1R7
	.global I1PSW
	.global I1PCH
	.define _STK11	STK11
	.global STK11
	.define _STK10	STK10
	.global STK10
	.define _STK09	STK09
	.global STK09
	.define _STK08	STK08
	.global STK08
	.define _STK07	STK07
	.global STK07
	.define _STK06	STK06
	.global STK06
	.define _STK05	STK05
	.global STK05
	.define _STK04	STK04
	.global STK04
	.define _STK03	STK03
	.global STK03
	.define _STK02	STK02
	.global STK02
	.define _STK01	STK01
	.global STK01
	.define _STK00	STK00
	.global STK00

sharebank .udata
I0R1		.res 1
I0R7		.res 1
I0PSW		.res 1
I0PCH		.res 1
I1R1		.res 1
I1R7		.res 1
I1PSW		.res 1
I1PCH		.res 1
STK11	.res 1
	.type STK11, 108
STK10	.res 1
	.type STK10, 108
STK09	.res 1
	.type STK09, 108
STK08	.res 1
	.type STK08, 108
STK07	.res 1
	.type STK07, 108
STK06	.res 1
	.type STK06, 108
STK05	.res 1
	.type STK05, 108
STK04	.res 1
	.type STK04, 108
STK03	.res 1
	.type STK03, 108
STK02	.res 1
	.type STK02, 108
STK01	.res 1
	.type STK01, 108
STK00	.res 1
	.type STK00, 108

	.global TRAPRx73
	.global TRAPRx74
	.global TRAPRx75
	.global TRAPRx76
	.global TRAPRx77

sharebankTRAP .idata 0x73
TRAPRx73
  .db 0x00
TRAPRx74
  .db 0x00
TRAPRx75
  .db 0x00
TRAPRx76
  .db 0x00
TRAPRx77
  .db 0x00

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_main_0	.udata
r0x1001	.res	1
UDL_main_1	.udata
r0x1003	.res	1
UDL_main_2	.udata
r0x1002	.res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_main_0	.idata
_FistBootFlag
	.db	0x01

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	.code 0x0000
	CLR 0x76
	CLR 0x73
	PAGESEL	init_imp
	JMP		init_imp

	.global	init_imp
INIT_IMP	.code
init_imp
	PAGESEL	_startup
	CALL	_startup
	PAGESEL	__gsinit_startup
	CALL	__gsinit_startup
	TRAPPC1	_main
	TRAPPC2	_main
	PAGESEL	_main
	JMP		_main
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
interrupt_0x04	.code	0x4
	MOV		R2,R0
	MOV		R3,BANK
	MOV		R0,PSW
	BANKSEL	I0PSW
	MOV		I0PSW,R0
	MOV		I0R1,R1
	MOV		I0R7,R7
	SET		TRAPRx76,2
	TRAPPC1	interrupt_service_routine_0x04
	TRAPPC2	interrupt_service_routine_0x04
	PAGESEL	interrupt_service_routine_0x04
	JMP		interrupt_service_routine_0x04



func._int_fun0	.code
;***
;  PostBlock Stats: dbName = I
;***
;entry:  _int_fun0	;Function start
; 0 exit points
;functions called:
;   _Timer_PWM_Callback
;   _RT_Timer_PWM_Callback
;   _Timer_PWM_Callback
;   _RT_Timer_PWM_Callback
;3 compiler assigned registers:
;   r0x1001
;   r0x1002
;   r0x1003
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_int_fun0	;Function start
; 0 exit points
;	::->op : GET_VALUE_AT_ADDRESS
; R3 resprent for wsave,R4 resprent for ssave, R5 resprent for psave
interrupt_service_routine_0x04
;	.line	38; "../main.c"	if(T0IF & T0IE)		//500us定时
	BANKSEL	r0x1001
	CLR	r0x1001
	BANKSEL	_INTCTL_bits
	JB	_INTCTL_bits, 2
	JMP	_00023_DS_
	BANKSEL	r0x1001
	INC	r0x1001
;	::->op : GET_VALUE_AT_ADDRESS
;	::->op : CAST
_00023_DS_
	MOV	R0,# 0x00
	BANKSEL	_INTCTL_bits
	JNB	_INTCTL_bits, 5
	MOV	R0,# 0x01
	BANKSEL	r0x1002
	MOV	r0x1002, R0
;	::->op : BITWISEAND
	BANKSEL	r0x1002
	MOVZ	R0, r0x1002
	BANKSEL	r0x1001
	AND	r0x1001, R0
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	r0x1001
	ORL	R0, r0x1001
	JNB	PSW, 2
	JMP	_00011_DS_
;	::->op :*  =
;	.line	40; "../main.c"	T0IF= 0;
	BANKSEL	_INTCTL_bits
	CLR	_INTCTL_bits, 2
;	::->op : =
;	.line	41; "../main.c"	T0 =8;
	MOV	R0,# 0x08
	BANKSEL	_T0
	MOV	_T0, R0
;	::->op : LABEL
;	::->op : GET_VALUE_AT_ADDRESS
_00011_DS_
;	.line	43; "../main.c"	if(T1IF & T1IE)
	BANKSEL	r0x1001
	CLR	r0x1001
	BANKSEL	_EIF1_bits
	JB	_EIF1_bits, 0
	JMP	_00024_DS_
	BANKSEL	r0x1001
	INC	r0x1001
;	::->op : GET_VALUE_AT_ADDRESS
_00024_DS_
	BANKSEL	r0x1003
	CLR	r0x1003
	BANKSEL	_EIE1_bits
	JB	_EIE1_bits, 0
	JMP	_00025_DS_
	BANKSEL	r0x1003
	INC	r0x1003
;	::->op : BITWISEAND
_00025_DS_
	BANKSEL	r0x1003
	MOVZ	R0, r0x1003
	BANKSEL	r0x1001
	AND	r0x1001, R0
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	r0x1001
	ORL	R0, r0x1001
	JNB	PSW, 2
	JMP	_00013_DS_
;	::->op :*  =
;	.line	45; "../main.c"	T1IF =0;
	BANKSEL	_EIF1_bits
	CLR	_EIF1_bits, 0
;	::->op : CALL
;	.line	46; "../main.c"	Timer_PWM_Callback();
	TRAPPC1	_Timer_PWM_Callback
	TRAPPC2	_Timer_PWM_Callback
	PAGESEL	_Timer_PWM_Callback
	CALL	_Timer_PWM_Callback
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : GET_VALUE_AT_ADDRESS
_00013_DS_
;	.line	48; "../main.c"	if(T2IF & T2IE)
	BANKSEL	r0x1001
	CLR	r0x1001
	BANKSEL	_EIF1_bits
	JB	_EIF1_bits, 1
	JMP	_00026_DS_
	BANKSEL	r0x1001
	INC	r0x1001
;	::->op : GET_VALUE_AT_ADDRESS
_00026_DS_
	BANKSEL	r0x1003
	CLR	r0x1003
	BANKSEL	_EIE1_bits
	JB	_EIE1_bits, 1
	JMP	_00027_DS_
	BANKSEL	r0x1003
	INC	r0x1003
;	::->op : BITWISEAND
_00027_DS_
	BANKSEL	r0x1003
	MOVZ	R0, r0x1003
	BANKSEL	r0x1001
	AND	r0x1001, R0
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	r0x1001
	ORL	R0, r0x1001
	JNB	PSW, 2
	JMP	_00016_DS_
;	::->op :*  =
;	.line	50; "../main.c"	T2IF =0;
	BANKSEL	_EIF1_bits
	CLR	_EIF1_bits, 1
;	::->op : CALL
;	.line	51; "../main.c"	RT_Timer_PWM_Callback();
	TRAPPC1	_RT_Timer_PWM_Callback
	TRAPPC2	_RT_Timer_PWM_Callback
	PAGESEL	_RT_Timer_PWM_Callback
	CALL	_RT_Timer_PWM_Callback
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00016_DS_
	BANKSEL	I0R1
	MOV	R1, I0R1
	BANKSEL	I0R7
	MOV	R7, I0R7
	BANKSEL	I0PSW
	MOV	R0, I0PSW
	MOV	PSW, R0
	MOV	R0, TRAPRx73
	JNB	TRAPRx76, 1
	MOV	R0, TRAPRx74
	CLR	TRAPRx76, 2
	MOV	PCH, R0
	MOV	BANK, R3
	MOV	R0, R2
	IRET	



func._int_fun1	.code
;***
;  PostBlock Stats: dbName = I
;***
;entry:  _int_fun1	;Function start
; 0 exit points
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_int_fun1	;Function start
; 0 exit points
;	::->op : LABEL
;	::->op : ENDFUNCTION
; R3 resprent for wsave,R4 resprent for ssave, R5 resprent for psave
interrupt_service_routine_0x14
_00021_DS_
;	.line	59; "../main.c"	}
	IRET	



func._main	.code
;***
;  PostBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Init_IO
;   _IS31FL3265B_Init
;   _Timer0_Init
;   _Timer1_Init
;   _Timer2_Init
;   _Led_Hello_Check
;   _Tail_Stop_Check_Input
;   _RT_Check_Input
;   _Init_IO
;   _IS31FL3265B_Init
;   _Timer0_Init
;   _Timer1_Init
;   _Timer2_Init
;   _Led_Hello_Check
;   _Tail_Stop_Check_Input
;   _RT_Check_Input
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_main	;Function start
; 2 exit points
;	::->op : =
;	.line	14; "../main.c"	SCLKCTL =0X78;//禁止输出时钟，选择内部高频作为时钟源，分频器1:1分频
	MOV	R0,# 0x78
	BANKSEL	_SCLKCTL
	MOV	_SCLKCTL, R0
;	::->op : =
;	.line	15; "../main.c"	HFCKCTL =0x8E;//使能高频外设时钟，INTHF/64,
	MOV	R0,# 0x8e
	BANKSEL	_HFCKCTL
	MOV	_HFCKCTL, R0
;	::->op : CALL
;	.line	16; "../main.c"	Init_IO();
	TRAPPC1	_Init_IO
	TRAPPC2	_Init_IO
	PAGESEL	_Init_IO
	CALL	_Init_IO
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	17; "../main.c"	IS31FL3265B_Init();
	TRAPPC1	_IS31FL3265B_Init
	TRAPPC2	_IS31FL3265B_Init
	PAGESEL	_IS31FL3265B_Init
	CALL	_IS31FL3265B_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	18; "../main.c"	Timer0_Init();
	TRAPPC1	_Timer0_Init
	TRAPPC2	_Timer0_Init
	PAGESEL	_Timer0_Init
	CALL	_Timer0_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	19; "../main.c"	Timer1_Init();
	TRAPPC1	_Timer1_Init
	TRAPPC2	_Timer1_Init
	PAGESEL	_Timer1_Init
	CALL	_Timer1_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	20; "../main.c"	Timer2_Init();
	TRAPPC1	_Timer2_Init
	TRAPPC2	_Timer2_Init
	PAGESEL	_Timer2_Init
	CALL	_Timer2_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op :*  =
;	.line	21; "../main.c"	PUIE =1;
	BANKSEL	_INTCTL_bits
	SET	_INTCTL_bits, 6
;	::->op :*  =
;	.line	22; "../main.c"	AIE =1;
	BANKSEL	_INTCTL_bits
	SET	_INTCTL_bits, 7
;	::->op : IFX
;	.line	23; "../main.c"	if(FistBootFlag)
	MOV	R0,# 0x00
	BANKSEL	_FistBootFlag
	ORL	R0, _FistBootFlag
	JNB	PSW, 2
	JMP	_00004_DS_
;	::->op : =
;	.line	25; "../main.c"	FistBootFlag=0;
	BANKSEL	_FistBootFlag
	CLR	_FistBootFlag
;	::->op : CALL
;	.line	26; "../main.c"	Led_Hello_Check();
	TRAPPC1	_Led_Hello_Check
	TRAPPC2	_Led_Hello_Check
	PAGESEL	_Led_Hello_Check
	CALL	_Led_Hello_Check
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : CALL
_00004_DS_
;	.line	30; "../main.c"	Tail_Stop_Check_Input();
	TRAPPC1	_Tail_Stop_Check_Input
	TRAPPC2	_Tail_Stop_Check_Input
	PAGESEL	_Tail_Stop_Check_Input
	CALL	_Tail_Stop_Check_Input
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	31; "../main.c"	RT_Check_Input();
	TRAPPC1	_RT_Check_Input
	TRAPPC2	_RT_Check_Input
	PAGESEL	_RT_Check_Input
	CALL	_RT_Check_Input
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
	JMP	_00004_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _main


;	code size estimation:
;	  143+   39 =   182 instructions (  442 byte)


	.end
