;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
;	.file	"../Led.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_Init_IO
	.extern	_LED_Water
	.extern	_LED_Stop_Open
	.extern	_RT_Check_Input
	.extern	_Tail_Stop_Check_Input
	.extern	_Mode_Act
	.extern	_RT_Mode_Act
	.extern	_delay_ms
	.extern	_delay_us
	.extern	_Timer_PWM_Callback
	.extern	_Led_Hello_Check
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
	.extern	__divsint
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
	.extern	_LED_Stop_PWM_Flag
	.extern	_Stop_High_Addr
	.extern	_Stop_Low_Addr
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
	.extern	__hmulchar

	.extern I0R1
	.extern I0R7
	.extern I0PSW
	.extern I0PCH
	.extern I1R1
	.extern I1R7
	.extern I1PSW
	.extern I1PCH
	.extern TRAPRx73
	.extern TRAPRx74
	.extern TRAPRx75
	.extern TRAPRx76
	.extern STK11
	.extern STK10
	.extern STK09
	.extern STK08
	.extern STK07
	.extern STK06
	.extern STK05
	.extern STK04
	.extern STK03
	.extern STK02
	.extern STK01
	.extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	.global	_Tail1_2_Stop_FullWater_Close
	.global	_Tail1_2_Stop_BackWater_Close
	.global	_Tail2_Stop_FullWater_Open
	.global	_Tail1_FullBackWater_Open
	.global	_Stop_HighBackWater_Open
	.global	_Tail_LowWater_Blinky
	.global	_Tail_HighWater_Open
	.global	_Tail_LowWater_Open
	.global	_Tail12_Breath_CloseTo10
	.global	_Tail12_Breath_Close
	.global	_Tail12_Breath_Open
	.global	_Led_Tail_AllClose
	.global	_Led_Tail_AllOpen
	.global	_Led_RT_AllClose
	.global	_Led_RT_WaterOpen
	.global	_Led_RT_AllOpen
	.global	_LED_Stop_AllClose
	.global	_LED_Stop_PWMOpen
	.global	_LED_Stop_AllOpen
	.define _STK11	STK11
	.define _STK10	STK10
	.define _STK09	STK09
	.define _STK08	STK08
	.define _STK07	STK07
	.define _STK06	STK06
	.define _STK05	STK05
	.define _STK04	STK04
	.define _STK03	STK03
	.define _STK02	STK02
	.define _STK01	STK01
	.define _STK00	STK00

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_Led_0	.udata
r0x102D	.res	1
UDL_Led_1	.udata
r0x102C	.res	1
UDL_Led_2	.udata
r0x102B	.res	1
UDL_Led_3	.udata
r0x102A	.res	1
UDL_Led_4	.udata
r0x1029	.res	1
UDL_Led_5	.udata
r0x1027	.res	1
UDL_Led_6	.udata
r0x1028	.res	1
UDL_Led_7	.udata
r0x1025	.res	1
UDL_Led_8	.udata
r0x1026	.res	1
UDL_Led_9	.udata
r0x1023	.res	1
UDL_Led_10	.udata
r0x1024	.res	1
UDL_Led_11	.udata
r0x1022	.res	1
UDL_Led_12	.udata
r0x101D	.res	1
UDL_Led_13	.udata
r0x101E	.res	1
UDL_Led_14	.udata
r0x101F	.res	1
UDL_Led_15	.udata
r0x1020	.res	1
UDL_Led_16	.udata
r0x1021	.res	1
UDL_Led_17	.udata
r0x1018	.res	1
UDL_Led_18	.udata
r0x1019	.res	1
UDL_Led_19	.udata
r0x101A	.res	1
UDL_Led_20	.udata
r0x101B	.res	1
UDL_Led_21	.udata
r0x101C	.res	1
UDL_Led_22	.udata
r0x1014	.res	1
UDL_Led_23	.udata
r0x1016	.res	1
UDL_Led_24	.udata
r0x1017	.res	1
UDL_Led_25	.udata
r0x1015	.res	1
UDL_Led_26	.udata
r0x1013	.res	1
UDL_Led_27	.udata
r0x100E	.res	1
UDL_Led_28	.udata
r0x100F	.res	1
UDL_Led_29	.udata
r0x1010	.res	1
UDL_Led_30	.udata
r0x1011	.res	1
UDL_Led_31	.udata
r0x1012	.res	1
UDL_Led_32	.udata
r0x1009	.res	1
UDL_Led_33	.udata
r0x100A	.res	1
UDL_Led_34	.udata
r0x100B	.res	1
UDL_Led_35	.udata
r0x100C	.res	1
UDL_Led_36	.udata
r0x100D	.res	1
UDL_Led_37	.udata
r0x1004	.res	1
UDL_Led_38	.udata
r0x1005	.res	1
UDL_Led_39	.udata
r0x1006	.res	1
UDL_Led_40	.udata
r0x1007	.res	1
UDL_Led_41	.udata
r0x1008	.res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr


func._Tail1_2_Stop_FullWater_Close	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail1_2_Stop_FullWater_Close	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   __divsint
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   __divsint
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   __divsint
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   __divsint
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;8 compiler assigned registers:
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   STK01
;   STK00
;   STK02
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail1_2_Stop_FullWater_Close	;Function start
; 2 exit points
;	::->op : =
;	.line	259; "../Led.c"	Stop_High_Addr = 0xFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	MOV	R0,# 0x0f
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : =
;	.line	260; "../Led.c"	Stop_Low_Addr = 0xFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	MOV	R0,# 0x0f
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : =
;	.line	261; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00267_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00270_DS_
;	::->op : CAST
;	.line	264; "../Led.c"	Stop_Low_Addr -= (1<<(i-0x1F));
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	r0x1006
	CLR	r0x1006
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x1005
	ADD	r0x1005, R0
	JNB	PSW, 0
	JMP	_00361_DS_
	BANKSEL	r0x1006
	DEC	r0x1006
;	::->op : LEFT_OP
_00361_DS_
	MOV	R0,# 0x01
	BANKSEL	r0x1007
	MOV	r0x1007, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1008
	MOV	r0x1008, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	INC	R0
	JMP	_00343_DS_
_00342_DS_
	CLR	PSW, 0
	BANKSEL	r0x1007
	RLC	r0x1007
	BANKSEL	r0x1008
	RLC	r0x1008
_00343_DS_
	DECJZ	R0
	JMP	_00342_DS_
;	::->op : CAST
;;110	MOVZ	R0, r0x1007
;;112	MOVZ	R0, r0x1008
;	::->op : -
;;109	MOVZ	R0, r0x1005
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	_Stop_Low_Addr
	SUB	_Stop_Low_Addr, R0
;;111	MOVZ	R0, r0x1006
	BANKSEL	r0x1008
	MOVZ	R0, r0x1008
	BANKSEL	r0x1006
	MOV	r0x1006, R0
	JB	PSW, 0
	INC	R0
	JNB	PSW, 2
	JMP	_00362_DS_
	BANKSEL	_Stop_Low_Addr
	SUB	(_Stop_Low_Addr + 1), R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00362_DS_
;	.line	265; "../Led.c"	SPI_Write_2Byte(2,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	266; "../Led.c"	SPI_Write_2Byte(2,i-1,0xFF);//update
	BANKSEL	r0x1004
	DECR	r0x1004
	BANKSEL	r0x1005
	MOV	r0x1005, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	267; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	268; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	261; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00267_DS_
;	::->op : LABEL
;	::->op : =
_00270_DS_
;	.line	270; "../Led.c"	Stop_High_Addr = 0;
	BANKSEL	_Stop_High_Addr
	CLR	_Stop_High_Addr
	BANKSEL	_Stop_High_Addr
	CLR	(_Stop_High_Addr + 1)
;	::->op : =
;	.line	271; "../Led.c"	Stop_Low_Addr = 0;
	BANKSEL	_Stop_Low_Addr
	CLR	_Stop_Low_Addr
	BANKSEL	_Stop_Low_Addr
	CLR	(_Stop_Low_Addr + 1)
;	::->op : =
;	.line	272; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x20=32), size=1
_00271_DS_
	MOV	R0,# 0x20
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00274_DS_
;	::->op : CAST
;	.line	274; "../Led.c"	Stop_Low_Addr = 1<<(13-(i-0x1F));
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	r0x1006
	CLR	r0x1006
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x1005
	ADD	r0x1005, R0
	JNB	PSW, 0
	JMP	_00363_DS_
	BANKSEL	r0x1006
	DEC	r0x1006
;	::->op : -
_00363_DS_
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	SUB	R0,# 0x0d
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	r0x1006
	MOVZ	R0, r0x1006
	JNB	PSW, 0
	JMP	_00364_DS_
	BANKSEL	r0x1006
	INCR	r0x1006
_00364_DS_
	SUB	R0,# 0x00
	BANKSEL	r0x1006
	MOV	r0x1006, R0
;	::->op : LEFT_OP
	MOV	R0,# 0x01
	BANKSEL	r0x1007
	MOV	r0x1007, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1008
	MOV	r0x1008, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	INC	R0
	JMP	_00346_DS_
_00345_DS_
	CLR	PSW, 0
	BANKSEL	r0x1007
	RLC	r0x1007
	BANKSEL	r0x1008
	RLC	r0x1008
_00346_DS_
	DECJZ	R0
	JMP	_00345_DS_
;	::->op : CAST
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	BANKSEL	r0x1008
	MOVZ	R0, r0x1008
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : ~
;	.line	275; "../Led.c"	Stop_High_Addr = ~(Stop_Low_Addr);
	BANKSEL	_Stop_Low_Addr
	CPLR	_Stop_Low_Addr
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_Low_Addr
	CPLR	(_Stop_Low_Addr + 1)
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	276; "../Led.c"	SPI_Write_2Byte(1,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	277; "../Led.c"	SPI_Write_2Byte(1,i-1,0xFF);//update
	BANKSEL	r0x1004
	DECR	r0x1004
	BANKSEL	r0x1005
	MOV	r0x1005, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	278; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	279; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	272; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00271_DS_
;	::->op : LABEL
;	::->op : =
_00274_DS_
;	.line	281; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00275_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00278_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	283; "../Led.c"	SPI_Write_2Byte(2,i,0);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	284; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	285; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	281; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00275_DS_
;	::->op : LABEL
;	::->op : =
_00278_DS_
;	.line	287; "../Led.c"	Stop_High_Addr = 0;
	BANKSEL	_Stop_High_Addr
	CLR	_Stop_High_Addr
	BANKSEL	_Stop_High_Addr
	CLR	(_Stop_High_Addr + 1)
;	::->op : =
;	.line	288; "../Led.c"	Stop_Low_Addr = 0;
	BANKSEL	_Stop_Low_Addr
	CLR	_Stop_Low_Addr
	BANKSEL	_Stop_Low_Addr
	CLR	(_Stop_Low_Addr + 1)
;	::->op : =
;	.line	289; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00279_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00282_DS_
;	::->op : CAST
;	.line	291; "../Led.c"	Stop_Low_Addr = 1<<(i-0x20);
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	r0x1006
	CLR	r0x1006
;	::->op : -
	MOV	R0,# 0xe0
	BANKSEL	r0x1005
	ADD	r0x1005, R0
	JNB	PSW, 0
	JMP	_00365_DS_
	BANKSEL	r0x1006
	DEC	r0x1006
;	::->op : LEFT_OP
_00365_DS_
	MOV	R0,# 0x01
	BANKSEL	r0x1007
	MOV	r0x1007, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1008
	MOV	r0x1008, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	INC	R0
	JMP	_00350_DS_
_00349_DS_
	CLR	PSW, 0
	BANKSEL	r0x1007
	RLC	r0x1007
	BANKSEL	r0x1008
	RLC	r0x1008
_00350_DS_
	DECJZ	R0
	JMP	_00349_DS_
;	::->op : CAST
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	BANKSEL	r0x1008
	MOVZ	R0, r0x1008
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : ~
;	.line	292; "../Led.c"	Stop_High_Addr = ~(Stop_Low_Addr);
	BANKSEL	_Stop_Low_Addr
	CPLR	_Stop_Low_Addr
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_Low_Addr
	CPLR	(_Stop_Low_Addr + 1)
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : SEND
;	::->op : CALL
;	.line	295; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	289; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00279_DS_
;	::->op : LABEL
;	::->op : =
_00282_DS_
;	.line	297; "../Led.c"	Stop_Low_Addr = 0;
	BANKSEL	_Stop_Low_Addr
	CLR	_Stop_Low_Addr
	BANKSEL	_Stop_Low_Addr
	CLR	(_Stop_Low_Addr + 1)
;	::->op : =
;	.line	298; "../Led.c"	Stop_High_Addr = ~(Stop_Low_Addr);
	MOV	R0,# 0xff
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : =
;	.line	300; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00283_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00286_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	302; "../Led.c"	SPI_Write_2Byte(2,i,0xFF);//update
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	303; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	300; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00283_DS_
;	::->op : LABEL
;	::->op : =
_00286_DS_
;	.line	306; "../Led.c"	for(i=0x1F;i<=0x2B;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x2C=44), size=1
_00287_DS_
	MOV	R0,# 0x2c
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00290_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	308; "../Led.c"	SPI_Write_2Byte(2,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	309; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	310; "../Led.c"	delay_ms(30);
	MOV	R0,# 0x1e
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	306; "../Led.c"	for(i=0x1F;i<=0x2B;i++)
	BANKSEL	r0x1004
	INC	r0x1004
;	::->op : GOTO
	JMP	_00287_DS_
;	::->op : LABEL
;	::->op : =
_00290_DS_
;	.line	313; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00291_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00294_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	315; "../Led.c"	SPI_Write_2Byte(2,i,0);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	316; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	317; "../Led.c"	delay_ms(30);
	MOV	R0,# 0x1e
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	313; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00291_DS_
;	::->op : LABEL
;	::->op : =
_00294_DS_
;	.line	320; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x20=32), size=1
_00295_DS_
	MOV	R0,# 0x20
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00298_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	322; "../Led.c"	SPI_Write_2Byte(1,i,0);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	323; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	324; "../Led.c"	delay_ms(30);
	MOV	R0,# 0x1e
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	320; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00295_DS_
;	::->op : LABEL
;	::->op : =
_00298_DS_
;	.line	327; "../Led.c"	Stop_High_Addr = 0;
	BANKSEL	_Stop_High_Addr
	CLR	_Stop_High_Addr
	BANKSEL	_Stop_High_Addr
	CLR	(_Stop_High_Addr + 1)
;	::->op : =
;	.line	328; "../Led.c"	Stop_Low_Addr = 0;
	BANKSEL	_Stop_Low_Addr
	CLR	_Stop_Low_Addr
	BANKSEL	_Stop_Low_Addr
	CLR	(_Stop_Low_Addr + 1)
;	::->op : =
;	.line	329; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00299_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00302_DS_
;	::->op : BITWISEAND
;	.line	331; "../Led.c"	if(i%2==0)
	BANKSEL	r0x1004
	JNB	r0x1004, 0
	JMP	_00264_DS_
;	::->op : CAST
;	.line	333; "../Led.c"	Stop_Low_Addr = 1<<(6+(i-0x1F)/2);
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	r0x1006
	CLR	r0x1006
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x1005
	ADD	r0x1005, R0
	JNB	PSW, 0
	JMP	_00366_DS_
	BANKSEL	r0x1006
	DEC	r0x1006
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00366_DS_
	MOV	R0,# 0x02
	BANKSEL	STK02
	MOV	STK02, R0
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	BANKSEL	STK00
	MOV	STK00, R0
	BANKSEL	r0x1006
	MOVZ	R0, r0x1006
	TRAPPC1	__divsint
	TRAPPC2	__divsint
	PAGESEL	__divsint
	CALL	__divsint
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
	BANKSEL	r0x1006
	MOV	r0x1006, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x1005
	MOV	r0x1005, R0
;	::->op : +
	MOV	R0,# 0x06
	BANKSEL	r0x1005
	ADD	r0x1005, R0
	JB	PSW, 0
	JMP	_00367_DS_
	BANKSEL	r0x1006
	INC	r0x1006
;	::->op : LEFT_OP
_00367_DS_
	MOV	R0,# 0x01
	BANKSEL	r0x1007
	MOV	r0x1007, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1008
	MOV	r0x1008, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	INC	R0
	JMP	_00357_DS_
_00356_DS_
	CLR	PSW, 0
	BANKSEL	r0x1007
	RLC	r0x1007
	BANKSEL	r0x1008
	RLC	r0x1008
_00357_DS_
	DECJZ	R0
	JMP	_00356_DS_
;	::->op : CAST
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	BANKSEL	r0x1008
	MOVZ	R0, r0x1008
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : ~
;	.line	334; "../Led.c"	Stop_High_Addr = ~(Stop_Low_Addr);
	BANKSEL	_Stop_Low_Addr
	CPLR	_Stop_Low_Addr
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_Low_Addr
	CPLR	(_Stop_Low_Addr + 1)
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00264_DS_
;	.line	336; "../Led.c"	SPI_Write_2Byte(2,i,0xFF);//update
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	337; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	338; "../Led.c"	delay_ms(20);
	MOV	R0,# 0x14
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	339; "../Led.c"	SPI_Write_2Byte(2,i,0);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	340; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	329; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00299_DS_
;	::->op : LABEL
;	::->op : =
_00302_DS_
;	.line	342; "../Led.c"	Stop_High_Addr = 0;
	BANKSEL	_Stop_High_Addr
	CLR	_Stop_High_Addr
	BANKSEL	_Stop_High_Addr
	CLR	(_Stop_High_Addr + 1)
;	::->op : =
;	.line	343; "../Led.c"	Stop_Low_Addr = 0;
	BANKSEL	_Stop_Low_Addr
	CLR	_Stop_Low_Addr
	BANKSEL	_Stop_Low_Addr
	CLR	(_Stop_Low_Addr + 1)
;	::->op : =
;	.line	344; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x20=32), size=1
_00303_DS_
	MOV	R0,# 0x20
	BANKSEL	r0x1004
	SUB	R0, r0x1004
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00306_DS_
;	::->op : BITWISEAND
;	.line	346; "../Led.c"	if(i%2==0)
	BANKSEL	r0x1004
	JNB	r0x1004, 0
	JMP	_00266_DS_
;	::->op : CAST
;	.line	348; "../Led.c"	Stop_Low_Addr = 1<<((i-0x1F)/2);
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	r0x1006
	CLR	r0x1006
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x1005
	ADD	r0x1005, R0
	JNB	PSW, 0
	JMP	_00368_DS_
	BANKSEL	r0x1006
	DEC	r0x1006
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00368_DS_
	MOV	R0,# 0x02
	BANKSEL	STK02
	MOV	STK02, R0
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	BANKSEL	STK00
	MOV	STK00, R0
	BANKSEL	r0x1006
	MOVZ	R0, r0x1006
	TRAPPC1	__divsint
	TRAPPC2	__divsint
	PAGESEL	__divsint
	CALL	__divsint
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
	BANKSEL	r0x1006
	MOV	r0x1006, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x1005
	MOV	r0x1005, R0
;	::->op : LEFT_OP
	MOV	R0,# 0x01
	BANKSEL	r0x1007
	MOV	r0x1007, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1008
	MOV	r0x1008, R0
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	INC	R0
	JMP	_00360_DS_
_00359_DS_
	CLR	PSW, 0
	BANKSEL	r0x1007
	RLC	r0x1007
	BANKSEL	r0x1008
	RLC	r0x1008
_00360_DS_
	DECJZ	R0
	JMP	_00359_DS_
;	::->op : CAST
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	BANKSEL	r0x1008
	MOVZ	R0, r0x1008
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : ~
;	.line	349; "../Led.c"	Stop_High_Addr = ~(Stop_Low_Addr);
	BANKSEL	_Stop_Low_Addr
	CPLR	_Stop_Low_Addr
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_Low_Addr
	CPLR	(_Stop_Low_Addr + 1)
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00266_DS_
;	.line	351; "../Led.c"	SPI_Write_2Byte(1,i,0xFF);//update
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	352; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	353; "../Led.c"	delay_ms(20);
	MOV	R0,# 0x14
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	354; "../Led.c"	SPI_Write_2Byte(1,i,0);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	355; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	344; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : GOTO
	JMP	_00303_DS_
;	::->op : LABEL
;	::->op : =
_00306_DS_
;	.line	357; "../Led.c"	Stop_High_Addr = 0xFFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : =
;	.line	358; "../Led.c"	Stop_Low_Addr = 0;
	BANKSEL	_Stop_Low_Addr
	CLR	_Stop_Low_Addr
	BANKSEL	_Stop_Low_Addr
	CLR	(_Stop_Low_Addr + 1)
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Tail1_2_Stop_FullWater_Close



func._Tail1_2_Stop_BackWater_Close	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail1_2_Stop_BackWater_Close	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;7 compiler assigned registers:
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail1_2_Stop_BackWater_Close	;Function start
; 2 exit points
;	::->op : =
;	.line	240; "../Led.c"	Stop_High_Addr = 0;
	BANKSEL	_Stop_High_Addr
	CLR	_Stop_High_Addr
	BANKSEL	_Stop_High_Addr
	CLR	(_Stop_High_Addr + 1)
;	::->op : =
;	.line	241; "../Led.c"	Stop_Low_Addr = 0xFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	MOV	R0,# 0x0f
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : =
;	.line	242; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1009
	MOV	r0x1009, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00243_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1009
	SUB	R0, r0x1009
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00246_DS_
;	::->op : CAST
;	.line	244; "../Led.c"	Stop_High_Addr += 1<<(i-0x1F);
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	BANKSEL	r0x100A
	MOV	r0x100A, R0
	BANKSEL	r0x100B
	CLR	r0x100B
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x100A
	ADD	r0x100A, R0
	JNB	PSW, 0
	JMP	_00369_DS_
	BANKSEL	r0x100B
	DEC	r0x100B
;	::->op : LEFT_OP
_00369_DS_
	MOV	R0,# 0x01
	BANKSEL	r0x100C
	MOV	r0x100C, R0
	MOV	R0,# 0x00
	BANKSEL	r0x100D
	MOV	r0x100D, R0
	BANKSEL	r0x100A
	MOVZ	R0, r0x100A
	INC	R0
	JMP	_00261_DS_
_00260_DS_
	CLR	PSW, 0
	BANKSEL	r0x100C
	RLC	r0x100C
	BANKSEL	r0x100D
	RLC	r0x100D
_00261_DS_
	DECJZ	R0
	JMP	_00260_DS_
;	::->op : CAST
	BANKSEL	r0x100C
	MOVZ	R0, r0x100C
	BANKSEL	r0x100A
	MOV	r0x100A, R0
;;108	MOVZ	R0, r0x100D
;	::->op : +
	BANKSEL	r0x100A
	MOV	R0, r0x100A
	BANKSEL	_Stop_High_Addr
	ADD	_Stop_High_Addr, R0
;;107	MOVZ	R0, r0x100B
	BANKSEL	r0x100D
	MOVZ	R0, r0x100D
	BANKSEL	r0x100B
	MOV	r0x100B, R0
	JNB	PSW, 0
	INC	R0
	JNB	PSW, 2
	JMP	_00370_DS_
	BANKSEL	_Stop_High_Addr
	ADD	(_Stop_High_Addr + 1), R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00370_DS_
;	.line	245; "../Led.c"	SPI_Write_2Byte(2,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	246; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	247; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	242; "../Led.c"	for(i=0x2B;i>=0x1F;i--)
	BANKSEL	r0x1009
	DEC	r0x1009
;	::->op : GOTO
	JMP	_00243_DS_
;	::->op : LABEL
;	::->op : =
_00246_DS_
;	.line	249; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	MOV	R0,# 0x2b
	BANKSEL	r0x1009
	MOV	r0x1009, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x20=32), size=1
_00247_DS_
	MOV	R0,# 0x20
	BANKSEL	r0x1009
	SUB	R0, r0x1009
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00251_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	251; "../Led.c"	SPI_Write_2Byte(1,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	252; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	253; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	249; "../Led.c"	for(i=0x2B;i>=0x20;i--)
	BANKSEL	r0x1009
	DEC	r0x1009
;	::->op : GOTO
	JMP	_00247_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00251_DS_
	CRET	
; exit point of _Tail1_2_Stop_BackWater_Close



func._Tail2_Stop_FullWater_Open	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail2_Stop_FullWater_Open	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;7 compiler assigned registers:
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   r0x1012
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail2_Stop_FullWater_Open	;Function start
; 2 exit points
;	::->op : =
;	.line	228; "../Led.c"	Stop_High_Addr = 0xFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	MOV	R0,# 0x0f
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : =
;	.line	229; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x100E
	MOV	r0x100E, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00231_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x100E
	SUB	R0, r0x100E
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00235_DS_
;	::->op : CAST
;	.line	231; "../Led.c"	Stop_High_Addr -= 1<<(i-0x1F);
	BANKSEL	r0x100E
	MOVZ	R0, r0x100E
	BANKSEL	r0x100F
	MOV	r0x100F, R0
	BANKSEL	r0x1010
	CLR	r0x1010
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x100F
	ADD	r0x100F, R0
	JNB	PSW, 0
	JMP	_00371_DS_
	BANKSEL	r0x1010
	DEC	r0x1010
;	::->op : LEFT_OP
_00371_DS_
	MOV	R0,# 0x01
	BANKSEL	r0x1011
	MOV	r0x1011, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1012
	MOV	r0x1012, R0
	BANKSEL	r0x100F
	MOVZ	R0, r0x100F
	INC	R0
	JMP	_00242_DS_
_00241_DS_
	CLR	PSW, 0
	BANKSEL	r0x1011
	RLC	r0x1011
	BANKSEL	r0x1012
	RLC	r0x1012
_00242_DS_
	DECJZ	R0
	JMP	_00241_DS_
;	::->op : CAST
;;104	MOVZ	R0, r0x1011
;;106	MOVZ	R0, r0x1012
;	::->op : -
;;103	MOVZ	R0, r0x100F
	BANKSEL	r0x1011
	MOVZ	R0, r0x1011
	BANKSEL	r0x100F
	MOV	r0x100F, R0
	BANKSEL	_Stop_High_Addr
	SUB	_Stop_High_Addr, R0
;;105	MOVZ	R0, r0x1010
	BANKSEL	r0x1012
	MOVZ	R0, r0x1012
	BANKSEL	r0x1010
	MOV	r0x1010, R0
	JB	PSW, 0
	INC	R0
	JNB	PSW, 2
	JMP	_00372_DS_
	BANKSEL	_Stop_High_Addr
	SUB	(_Stop_High_Addr + 1), R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00372_DS_
;	.line	232; "../Led.c"	SPI_Write_2Byte(2,i,0xFF);//update
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x100E
	MOVZ	R0, r0x100E
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	233; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	234; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	229; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x100E
	INC	r0x100E
;	::->op : GOTO
	JMP	_00231_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00235_DS_
	CRET	
; exit point of _Tail2_Stop_FullWater_Open



func._Tail1_FullBackWater_Open	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail1_FullBackWater_Open	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;3 compiler assigned registers:
;   r0x1013
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail1_FullBackWater_Open	;Function start
; 2 exit points
;	::->op : =
;	.line	218; "../Led.c"	for(i=0x1F;i<=0x28;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1013
	MOV	r0x1013, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x29=41), size=1
_00221_DS_
	MOV	R0,# 0x29
	BANKSEL	r0x1013
	SUB	R0, r0x1013
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00225_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	220; "../Led.c"	SPI_Write_2Byte(1,i,0xFF);//update
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1013
	MOVZ	R0, r0x1013
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	221; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	222; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	218; "../Led.c"	for(i=0x1F;i<=0x28;i++)
	BANKSEL	r0x1013
	INC	r0x1013
;	::->op : GOTO
	JMP	_00221_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00225_DS_
	CRET	
; exit point of _Tail1_FullBackWater_Open



func._Stop_HighBackWater_Open	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Stop_HighBackWater_Open	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay_ms
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _delay_ms
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;6 compiler assigned registers:
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;   STK00
;   STK01
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Stop_HighBackWater_Open	;Function start
; 2 exit points
;	::->op : =
;	.line	203; "../Led.c"	for(i=0;i<=12;i++)
	BANKSEL	r0x1014
	CLR	r0x1014
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0xD=13), size=1
_00201_DS_
	MOV	R0,# 0x0d
	BANKSEL	r0x1014
	SUB	R0, r0x1014
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00204_DS_
;	::->op : RIGHT_OP
;	.line	205; "../Led.c"	Stop_High_Addr = ~(0x800>>i);
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	BANKSEL	r0x1015
	MOV	r0x1015, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1016
	MOV	r0x1016, R0
	MOV	R0,# 0x08
	BANKSEL	r0x1017
	MOV	r0x1017, R0
	BANKSEL	r0x1015
	INC	r0x1015
	JMP	_00219_DS_
_00218_DS_
	BANKSEL	r0x1017
	RLCR	r0x1017
	BANKSEL	r0x1017
	RRC	r0x1017
	BANKSEL	r0x1016
	RRC	r0x1016
_00219_DS_
	BANKSEL	r0x1015
	DECJZ	r0x1015
	JMP	_00218_DS_
;	::->op : ~
	BANKSEL	r0x1016
	CPL	r0x1016
	BANKSEL	r0x1017
	CPL	r0x1017
	BANKSEL	r0x1016
	MOVZ	R0, r0x1016
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	r0x1017
	MOVZ	R0, r0x1017
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : SEND
;	::->op : CALL
;	.line	206; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	203; "../Led.c"	for(i=0;i<=12;i++)
	BANKSEL	r0x1014
	INC	r0x1014
;	::->op : GOTO
	JMP	_00201_DS_
;	::->op : LABEL
;	::->op : =
_00204_DS_
;	.line	208; "../Led.c"	for(i=2;i<52;i++)
	MOV	R0,# 0x02
	BANKSEL	r0x1014
	MOV	r0x1014, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x34=52), size=1
_00205_DS_
	MOV	R0,# 0x34
	BANKSEL	r0x1014
	SUB	R0, r0x1014
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00209_DS_
;	::->op : *
;	.line	210; "../Led.c"	SPI_Write_2Byte(1,0x1F,i*5);//update
	MOV	R0,# 0x05
	BANKSEL	STK00
	MOV	STK00, R0
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	TRAPPC1	__hmulchar
	TRAPPC2	__hmulchar
	PAGESEL	__hmulchar
	CALL	__hmulchar
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
	BANKSEL	r0x1016
	MOV	r0x1016, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	BANKSEL	r0x1016
	MOVZ	R0, r0x1016
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x1f
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	211; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	212; "../Led.c"	delay_ms(20);
	MOV	R0,# 0x14
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	208; "../Led.c"	for(i=2;i<52;i++)
	BANKSEL	r0x1014
	INC	r0x1014
;	::->op : GOTO
	JMP	_00205_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00209_DS_
	CRET	
; exit point of _Stop_HighBackWater_Open



func._Tail_LowWater_Blinky	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_LowWater_Blinky	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;7 compiler assigned registers:
;   r0x1018
;   r0x1019
;   STK01
;   STK00
;   r0x101A
;   r0x101B
;   r0x101C
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail_LowWater_Blinky	;Function start
; 2 exit points
;	::->op : =
;	.line	184; "../Led.c"	for(i=0x20;i<=0x29;i++)
	MOV	R0,# 0x20
	BANKSEL	r0x1018
	MOV	r0x1018, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x2A=42), size=1
_00181_DS_
	MOV	R0,# 0x2a
	BANKSEL	r0x1018
	SUB	R0, r0x1018
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00184_DS_
;	::->op : -
;	.line	186; "../Led.c"	SPI_Write_2Byte(1,i-1,0xFF);//update
	BANKSEL	r0x1018
	DECR	r0x1018
	BANKSEL	r0x1019
	MOV	r0x1019, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1019
	MOVZ	R0, r0x1019
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	187; "../Led.c"	SPI_Write_2Byte(1,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	188; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	189; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	184; "../Led.c"	for(i=0x20;i<=0x29;i++)
	BANKSEL	r0x1018
	INC	r0x1018
;	::->op : GOTO
	JMP	_00181_DS_
;	::->op : LABEL
;	::->op : =
_00184_DS_
;	.line	191; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1018
	MOV	r0x1018, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00185_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x1018
	SUB	R0, r0x1018
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00189_DS_
;	::->op : CAST
;	.line	193; "../Led.c"	Stop_Low_Addr += 1<<(i-0x1F);
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	BANKSEL	r0x1019
	MOV	r0x1019, R0
	BANKSEL	r0x101A
	CLR	r0x101A
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x1019
	ADD	r0x1019, R0
	JNB	PSW, 0
	JMP	_00373_DS_
	BANKSEL	r0x101A
	DEC	r0x101A
;	::->op : LEFT_OP
_00373_DS_
	MOV	R0,# 0x01
	BANKSEL	r0x101B
	MOV	r0x101B, R0
	MOV	R0,# 0x00
	BANKSEL	r0x101C
	MOV	r0x101C, R0
	BANKSEL	r0x1019
	MOVZ	R0, r0x1019
	INC	R0
	JMP	_00200_DS_
_00199_DS_
	CLR	PSW, 0
	BANKSEL	r0x101B
	RLC	r0x101B
	BANKSEL	r0x101C
	RLC	r0x101C
_00200_DS_
	DECJZ	R0
	JMP	_00199_DS_
;	::->op : CAST
	BANKSEL	r0x101B
	MOVZ	R0, r0x101B
	BANKSEL	r0x1019
	MOV	r0x1019, R0
;;102	MOVZ	R0, r0x101C
;	::->op : +
	BANKSEL	r0x1019
	MOV	R0, r0x1019
	BANKSEL	_Stop_Low_Addr
	ADD	_Stop_Low_Addr, R0
;;101	MOVZ	R0, r0x101A
	BANKSEL	r0x101C
	MOVZ	R0, r0x101C
	BANKSEL	r0x101A
	MOV	r0x101A, R0
	JNB	PSW, 0
	INC	R0
	JNB	PSW, 2
	JMP	_00374_DS_
	BANKSEL	_Stop_Low_Addr
	ADD	(_Stop_Low_Addr + 1), R0
;	::->op : -
_00374_DS_
;	.line	194; "../Led.c"	SPI_Write_2Byte(2,i-1,0xFF);//update
	BANKSEL	r0x1018
	DECR	r0x1018
	BANKSEL	r0x1019
	MOV	r0x1019, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1019
	MOVZ	R0, r0x1019
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	195; "../Led.c"	SPI_Write_2Byte(2,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	196; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	197; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	191; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1018
	INC	r0x1018
;	::->op : GOTO
	JMP	_00185_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00189_DS_
	CRET	
; exit point of _Tail_LowWater_Blinky



func._Tail_HighWater_Open	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_HighWater_Open	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;7 compiler assigned registers:
;   r0x101D
;   r0x101E
;   STK01
;   STK00
;   r0x101F
;   r0x1020
;   r0x1021
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail_HighWater_Open	;Function start
; 2 exit points
;	::->op : =
;	.line	164; "../Led.c"	for(i=0x20;i<=0x29;i++)
	MOV	R0,# 0x20
	BANKSEL	r0x101D
	MOV	r0x101D, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x2A=42), size=1
_00161_DS_
	MOV	R0,# 0x2a
	BANKSEL	r0x101D
	SUB	R0, r0x101D
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00164_DS_
;	::->op : -
;	.line	166; "../Led.c"	SPI_Write_2Byte(1,i-1,0x10);//update
	BANKSEL	r0x101D
	DECR	r0x101D
	BANKSEL	r0x101E
	MOV	r0x101E, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x101E
	MOVZ	R0, r0x101E
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	167; "../Led.c"	SPI_Write_2Byte(1,i,0xFF);//update
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x101D
	MOVZ	R0, r0x101D
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	168; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	169; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	164; "../Led.c"	for(i=0x20;i<=0x29;i++)
	BANKSEL	r0x101D
	INC	r0x101D
;	::->op : GOTO
	JMP	_00161_DS_
;	::->op : LABEL
;	::->op : =
_00164_DS_
;	.line	171; "../Led.c"	Stop_High_Addr = 0xFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	MOV	R0,# 0x0f
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : =
;	.line	172; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x101D
	MOV	r0x101D, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00165_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x101D
	SUB	R0, r0x101D
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00169_DS_
;	::->op : CAST
;	.line	174; "../Led.c"	Stop_Low_Addr += 1<<(i-0x1F);
	BANKSEL	r0x101D
	MOVZ	R0, r0x101D
	BANKSEL	r0x101E
	MOV	r0x101E, R0
	BANKSEL	r0x101F
	CLR	r0x101F
;	::->op : -
	MOV	R0,# 0xe1
	BANKSEL	r0x101E
	ADD	r0x101E, R0
	JNB	PSW, 0
	JMP	_00375_DS_
	BANKSEL	r0x101F
	DEC	r0x101F
;	::->op : LEFT_OP
_00375_DS_
	MOV	R0,# 0x01
	BANKSEL	r0x1020
	MOV	r0x1020, R0
	MOV	R0,# 0x00
	BANKSEL	r0x1021
	MOV	r0x1021, R0
	BANKSEL	r0x101E
	MOVZ	R0, r0x101E
	INC	R0
	JMP	_00180_DS_
_00179_DS_
	CLR	PSW, 0
	BANKSEL	r0x1020
	RLC	r0x1020
	BANKSEL	r0x1021
	RLC	r0x1021
_00180_DS_
	DECJZ	R0
	JMP	_00179_DS_
;	::->op : CAST
	BANKSEL	r0x1020
	MOVZ	R0, r0x1020
	BANKSEL	r0x101E
	MOV	r0x101E, R0
;;100	MOVZ	R0, r0x1021
;	::->op : +
	BANKSEL	r0x101E
	MOV	R0, r0x101E
	BANKSEL	_Stop_Low_Addr
	ADD	_Stop_Low_Addr, R0
;;99	MOVZ	R0, r0x101F
	BANKSEL	r0x1021
	MOVZ	R0, r0x1021
	BANKSEL	r0x101F
	MOV	r0x101F, R0
	JNB	PSW, 0
	INC	R0
	JNB	PSW, 2
	JMP	_00376_DS_
	BANKSEL	_Stop_Low_Addr
	ADD	(_Stop_Low_Addr + 1), R0
;	::->op : -
_00376_DS_
;	.line	175; "../Led.c"	SPI_Write_2Byte(2,i-1,0x10);//update
	BANKSEL	r0x101D
	DECR	r0x101D
	BANKSEL	r0x101E
	MOV	r0x101E, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x101E
	MOVZ	R0, r0x101E
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	176; "../Led.c"	SPI_Write_2Byte(2,i,0xFF);//update
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x101D
	MOVZ	R0, r0x101D
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	177; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	178; "../Led.c"	delay_ms(65);
	MOV	R0,# 0x41
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	172; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x101D
	INC	r0x101D
;	::->op : GOTO
	JMP	_00165_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00169_DS_
	CRET	
; exit point of _Tail_HighWater_Open



func._Tail_LowWater_Open	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_LowWater_Open	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;3 compiler assigned registers:
;   r0x1022
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail_LowWater_Open	;Function start
; 2 exit points
;	::->op : =
;	.line	148; "../Led.c"	for(i=0x20;i<=0x30;i++)
	MOV	R0,# 0x20
	BANKSEL	r0x1022
	MOV	r0x1022, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00143_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x1022
	SUB	R0, r0x1022
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00146_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	150; "../Led.c"	SPI_Write_2Byte(1,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1022
	MOVZ	R0, r0x1022
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	151; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	152; "../Led.c"	delay_ms(30);
	MOV	R0,# 0x1e
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	148; "../Led.c"	for(i=0x20;i<=0x30;i++)
	BANKSEL	r0x1022
	INC	r0x1022
;	::->op : GOTO
	JMP	_00143_DS_
;	::->op : LABEL
;	::->op : =
_00146_DS_
;	.line	154; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1022
	MOV	r0x1022, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00147_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x1022
	SUB	R0, r0x1022
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00151_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	156; "../Led.c"	SPI_Write_2Byte(2,i,0x10);//update
	MOV	R0,# 0x10
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1022
	MOVZ	R0, r0x1022
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	157; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	158; "../Led.c"	delay_ms(30);
	MOV	R0,# 0x1e
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	154; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1022
	INC	r0x1022
;	::->op : GOTO
	JMP	_00147_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00151_DS_
	CRET	
; exit point of _Tail_LowWater_Open



func._Tail12_Breath_CloseTo10	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail12_Breath_CloseTo10	;Function start
; 2 exit points
;has an exit
;functions called:
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;4 compiler assigned registers:
;   r0x1023
;   STK00
;   r0x1024
;   STK01
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail12_Breath_CloseTo10	;Function start
; 2 exit points
;	::->op : =
;	.line	138; "../Led.c"	for(i=0;i<49;i++)
	BANKSEL	r0x1023
	CLR	r0x1023
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x31=49), size=1
_00133_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x1023
	SUB	R0, r0x1023
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00137_DS_
;	::->op : *
;	.line	140; "../Led.c"	SPI_Write_2Byte(1,0x1F,0xFF-i*5);//update
	MOV	R0,# 0x05
	BANKSEL	STK00
	MOV	STK00, R0
	BANKSEL	r0x1023
	MOVZ	R0, r0x1023
	TRAPPC1	__hmulchar
	TRAPPC2	__hmulchar
	PAGESEL	__hmulchar
	CALL	__hmulchar
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
	BANKSEL	r0x1024
	MOV	r0x1024, R0
;	::->op : -
	BANKSEL	r0x1024
	CPL	r0x1024
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	BANKSEL	r0x1024
	MOVZ	R0, r0x1024
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x1f
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	141; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	142; "../Led.c"	delay_ms(20);
	MOV	R0,# 0x14
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	138; "../Led.c"	for(i=0;i<49;i++)
	BANKSEL	r0x1023
	INC	r0x1023
;	::->op : GOTO
	JMP	_00133_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00137_DS_
	CRET	
; exit point of _Tail12_Breath_CloseTo10



func._Tail12_Breath_Close	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail12_Breath_Close	;Function start
; 2 exit points
;has an exit
;functions called:
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;4 compiler assigned registers:
;   r0x1025
;   STK00
;   r0x1026
;   STK01
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail12_Breath_Close	;Function start
; 2 exit points
;	::->op : =
;	.line	128; "../Led.c"	for(i=0;i<52;i++)
	BANKSEL	r0x1025
	CLR	r0x1025
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x34=52), size=1
_00123_DS_
	MOV	R0,# 0x34
	BANKSEL	r0x1025
	SUB	R0, r0x1025
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00127_DS_
;	::->op : *
;	.line	130; "../Led.c"	SPI_Write_2Byte(1,0x1F,0xFF-i*5);//update
	MOV	R0,# 0x05
	BANKSEL	STK00
	MOV	STK00, R0
	BANKSEL	r0x1025
	MOVZ	R0, r0x1025
	TRAPPC1	__hmulchar
	TRAPPC2	__hmulchar
	PAGESEL	__hmulchar
	CALL	__hmulchar
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
	BANKSEL	r0x1026
	MOV	r0x1026, R0
;	::->op : -
	BANKSEL	r0x1026
	CPL	r0x1026
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	BANKSEL	r0x1026
	MOVZ	R0, r0x1026
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x1f
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	131; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	132; "../Led.c"	delay_ms(20);
	MOV	R0,# 0x14
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	128; "../Led.c"	for(i=0;i<52;i++)
	BANKSEL	r0x1025
	INC	r0x1025
;	::->op : GOTO
	JMP	_00123_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00127_DS_
	CRET	
; exit point of _Tail12_Breath_Close



func._Tail12_Breath_Open	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail12_Breath_Open	;Function start
; 2 exit points
;has an exit
;functions called:
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   __hmulchar
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;4 compiler assigned registers:
;   r0x1027
;   STK00
;   r0x1028
;   STK01
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail12_Breath_Open	;Function start
; 2 exit points
;	::->op : =
;	.line	118; "../Led.c"	for(i=0;i<52;i++)
	BANKSEL	r0x1027
	CLR	r0x1027
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x34=52), size=1
_00113_DS_
	MOV	R0,# 0x34
	BANKSEL	r0x1027
	SUB	R0, r0x1027
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00117_DS_
;	::->op : *
;	.line	120; "../Led.c"	SPI_Write_2Byte(1,0x1F,i*5);//update
	MOV	R0,# 0x05
	BANKSEL	STK00
	MOV	STK00, R0
	BANKSEL	r0x1027
	MOVZ	R0, r0x1027
	TRAPPC1	__hmulchar
	TRAPPC2	__hmulchar
	PAGESEL	__hmulchar
	CALL	__hmulchar
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
	BANKSEL	r0x1028
	MOV	r0x1028, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	BANKSEL	r0x1028
	MOVZ	R0, r0x1028
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x1f
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	121; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	122; "../Led.c"	delay_ms(20);
	MOV	R0,# 0x14
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	118; "../Led.c"	for(i=0;i<52;i++)
	BANKSEL	r0x1027
	INC	r0x1027
;	::->op : GOTO
	JMP	_00113_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00117_DS_
	CRET	
; exit point of _Tail12_Breath_Open



func._Led_Tail_AllClose	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_Tail_AllClose	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;3 compiler assigned registers:
;   r0x1029
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_Tail_AllClose	;Function start
; 2 exit points
;	::->op : =
;	.line	104; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x1029
	MOV	r0x1029, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00095_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1029
	SUB	R0, r0x1029
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00098_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	106; "../Led.c"	SPI_Write_2Byte(1,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1029
	MOVZ	R0, r0x1029
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	107; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	104; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x1029
	DEC	r0x1029
;	::->op : GOTO
	JMP	_00095_DS_
;	::->op : LABEL
;	::->op : =
_00098_DS_
;	.line	109; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x1029
	MOV	r0x1029, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00099_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1029
	SUB	R0, r0x1029
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00103_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	111; "../Led.c"	SPI_Write_2Byte(2,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1029
	MOVZ	R0, r0x1029
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	112; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	109; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x1029
	DEC	r0x1029
;	::->op : GOTO
	JMP	_00099_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00103_DS_
	CRET	
; exit point of _Led_Tail_AllClose



func._Led_Tail_AllOpen	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_Tail_AllOpen	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;3 compiler assigned registers:
;   r0x102A
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_Tail_AllOpen	;Function start
; 2 exit points
;	::->op : =
;	.line	90; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x102A
	MOV	r0x102A, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00077_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x102A
	SUB	R0, r0x102A
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00080_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	92; "../Led.c"	SPI_Write_2Byte(1,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102A
	MOVZ	R0, r0x102A
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	93; "../Led.c"	SPI_Write_2Byte(1,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	90; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x102A
	DEC	r0x102A
;	::->op : GOTO
	JMP	_00077_DS_
;	::->op : LABEL
;	::->op : =
_00080_DS_
;	.line	95; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x102A
	MOV	r0x102A, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00081_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x102A
	SUB	R0, r0x102A
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00085_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	97; "../Led.c"	SPI_Write_2Byte(2,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102A
	MOVZ	R0, r0x102A
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	98; "../Led.c"	SPI_Write_2Byte(2,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x02
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	95; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x102A
	DEC	r0x102A
;	::->op : GOTO
	JMP	_00081_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00085_DS_
	CRET	
; exit point of _Led_Tail_AllOpen



func._Led_RT_AllClose	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_RT_AllClose	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;3 compiler assigned registers:
;   r0x102B
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_RT_AllClose	;Function start
; 2 exit points
;	::->op : =
;	.line	76; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x102B
	MOV	r0x102B, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00059_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x102B
	SUB	R0, r0x102B
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00062_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	78; "../Led.c"	SPI_Write_2Byte(3,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102B
	MOVZ	R0, r0x102B
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	79; "../Led.c"	SPI_Write_2Byte(3,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	76; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x102B
	DEC	r0x102B
;	::->op : GOTO
	JMP	_00059_DS_
;	::->op : LABEL
;	::->op : =
_00062_DS_
;	.line	81; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x102B
	MOV	r0x102B, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00063_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x102B
	SUB	R0, r0x102B
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00067_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	83; "../Led.c"	SPI_Write_2Byte(4,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102B
	MOVZ	R0, r0x102B
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	84; "../Led.c"	SPI_Write_2Byte(4,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	81; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x102B
	DEC	r0x102B
;	::->op : GOTO
	JMP	_00063_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00067_DS_
	CRET	
; exit point of _Led_RT_AllClose



func._Led_RT_WaterOpen	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_RT_WaterOpen	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;3 compiler assigned registers:
;   r0x102C
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_RT_WaterOpen	;Function start
; 2 exit points
;	::->op : =
;	.line	49; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x102C
	MOV	r0x102C, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00025_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x102C
	SUB	R0, r0x102C
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00028_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	51; "../Led.c"	SPI_Write_2Byte(3,i,0);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102C
	MOVZ	R0, r0x102C
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	52; "../Led.c"	SPI_Write_2Byte(3,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	49; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x102C
	INC	r0x102C
;	::->op : GOTO
	JMP	_00025_DS_
;	::->op : LABEL
;	::->op : =
_00028_DS_
;	.line	54; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x102C
	MOV	r0x102C, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00029_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x102C
	SUB	R0, r0x102C
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00032_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	56; "../Led.c"	SPI_Write_2Byte(4,i,0);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102C
	MOVZ	R0, r0x102C
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	57; "../Led.c"	SPI_Write_2Byte(4,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	54; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x102C
	INC	r0x102C
;	::->op : GOTO
	JMP	_00029_DS_
;	::->op : LABEL
;	::->op : SEND
;	::->op : CALL
_00032_DS_
;	.line	59; "../Led.c"	delay_ms(2);
	MOV	R0,# 0x02
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : =
;	.line	60; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x102C
	MOV	r0x102C, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00033_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x102C
	SUB	R0, r0x102C
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00036_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	62; "../Led.c"	SPI_Write_2Byte(3,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102C
	MOVZ	R0, r0x102C
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	63; "../Led.c"	SPI_Write_2Byte(3,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	64; "../Led.c"	delay_ms(5);
	MOV	R0,# 0x05
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	60; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x102C
	INC	r0x102C
;	::->op : GOTO
	JMP	_00033_DS_
;	::->op : LABEL
;	::->op : =
_00036_DS_
;	.line	66; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x102C
	MOV	r0x102C, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00037_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x102C
	SUB	R0, r0x102C
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00041_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	68; "../Led.c"	SPI_Write_2Byte(4,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102C
	MOVZ	R0, r0x102C
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	69; "../Led.c"	SPI_Write_2Byte(4,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	70; "../Led.c"	delay_ms(5);
	MOV	R0,# 0x05
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : +
;	.line	66; "../Led.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x102C
	INC	r0x102C
;	::->op : GOTO
	JMP	_00037_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00041_DS_
	CRET	
; exit point of _Led_RT_WaterOpen



func._Led_RT_AllOpen	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_RT_AllOpen	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;3 compiler assigned registers:
;   r0x102D
;   STK01
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_RT_AllOpen	;Function start
; 2 exit points
;	::->op : =
;	.line	35; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x102D
	MOV	r0x102D, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00007_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x102D
	SUB	R0, r0x102D
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00010_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	37; "../Led.c"	SPI_Write_2Byte(3,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102D
	MOVZ	R0, r0x102D
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	38; "../Led.c"	SPI_Write_2Byte(3,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	35; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x102D
	DEC	r0x102D
;	::->op : GOTO
	JMP	_00007_DS_
;	::->op : LABEL
;	::->op : =
_00010_DS_
;	.line	40; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x102D
	MOV	r0x102D, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00011_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x102D
	SUB	R0, r0x102D
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00015_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	42; "../Led.c"	SPI_Write_2Byte(4,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x102D
	MOVZ	R0, r0x102D
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	43; "../Led.c"	SPI_Write_2Byte(4,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : -
;	.line	40; "../Led.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x102D
	DEC	r0x102D
;	::->op : GOTO
	JMP	_00011_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00015_DS_
	CRET	
; exit point of _Led_RT_AllOpen



func._LED_Stop_AllClose	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _LED_Stop_AllClose	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_LED_Stop_AllClose	;Function start
; 2 exit points
;	::->op : =
;	.line	29; "../Led.c"	Stop_High_Addr=0xFFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : =
;	.line	30; "../Led.c"	Stop_Low_Addr=0;
	BANKSEL	_Stop_Low_Addr
	CLR	_Stop_Low_Addr
	BANKSEL	_Stop_Low_Addr
	CLR	(_Stop_Low_Addr + 1)
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _LED_Stop_AllClose



func._LED_Stop_PWMOpen	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _LED_Stop_PWMOpen	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_LED_Stop_PWMOpen	;Function start
; 2 exit points
;	::->op : =
;	.line	24; "../Led.c"	Stop_High_Addr=0xFFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_High_Addr
	MOV	_Stop_High_Addr, R0
	BANKSEL	_Stop_High_Addr
	MOV	(_Stop_High_Addr + 1), R0
;	::->op : =
;	.line	25; "../Led.c"	Stop_Low_Addr=0xFFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _LED_Stop_PWMOpen



func._LED_Stop_AllOpen	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _LED_Stop_AllOpen	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_LED_Stop_AllOpen	;Function start
; 2 exit points
;	::->op : =
;	.line	19; "../Led.c"	Stop_High_Addr=0;
	BANKSEL	_Stop_High_Addr
	CLR	_Stop_High_Addr
	BANKSEL	_Stop_High_Addr
	CLR	(_Stop_High_Addr + 1)
;	::->op : =
;	.line	20; "../Led.c"	Stop_Low_Addr=0xFFFF;
	MOV	R0,# 0xff
	BANKSEL	_Stop_Low_Addr
	MOV	_Stop_Low_Addr, R0
	BANKSEL	_Stop_Low_Addr
	MOV	(_Stop_Low_Addr + 1), R0
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _LED_Stop_AllOpen


;	code size estimation:
;	 1999+  610 =  2609 instructions ( 6438 byte)


	.end
