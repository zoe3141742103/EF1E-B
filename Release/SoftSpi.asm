;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
;	.file	"../SoftSpi.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_spi_read
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
	.global	_Tail_Two_Init
	.global	_Tail_One_Init
	.global	_IS31FL3265B_Init
	.global	_SPI_Write_2Byte
	.global	_spi_init
	.global	_Spi_CS_High
	.global	_Spi_CS_Low
	.global	_spidata
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
UD_SoftSpi_0	.udata
_spidata	.res	2

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_SoftSpi_0	.udata
r0x1004	.res	1
UDL_SoftSpi_1	.udata
r0x1005	.res	1
UDL_SoftSpi_2	.udata
r0x1006	.res	1
UDL_SoftSpi_3	.udata
r0x1009	.res	1
UDL_SoftSpi_4	.udata
r0x100A	.res	1
UDL_SoftSpi_5	.udata
r0x1007	.res	1
UDL_SoftSpi_6	.udata
r0x1008	.res	1
UDL_SoftSpi_7	.udata
_SPI_Write_2Byte_SPI_adr_1_1	.res	1
UDL_SoftSpi_8	.udata
_SPI_Write_2Byte_SPI_data_1_1	.res	1
UDL_SoftSpi_9	.udata
_SPI_Write_2Byte_buf_1_1	.res	2
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr


func._Tail_Two_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_Two_Init	;Function start
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
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;4 compiler assigned registers:
;   STK01
;   STK00
;   r0x1007
;   r0x1008
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail_Two_Init	;Function start
; 2 exit points
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	99; "../SoftSpi.c"	SPI_Write_2Byte(2,0x00,0x01);
	MOV	R0,# 0x01
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x00
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
;	::->op : =
;	.line	101; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	MOV	R0,# 0x02
	BANKSEL	r0x1007
	MOV	r0x1007, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x14=20), size=1, mask=ff
_00053_DS_
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	ADD	R0,# 0x80
	ADD	R0,# 0x6c
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00056_DS_
;	::->op : CAST
;;109	MOVZ	R0, r0x1007
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	103; "../SoftSpi.c"	SPI_Write_2Byte(2,i,0xFF);//SL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
;;108	MOVZ	R0, r0x1008
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	r0x1008
	MOV	r0x1008, R0
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
;	::->op : +
;	.line	101; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	BANKSEL	r0x1007
	INC	r0x1007
;	::->op : GOTO
	JMP	_00053_DS_
;	::->op : LABEL
;	::->op : =
_00056_DS_
;	.line	106; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1007
	MOV	r0x1007, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=1, mask=ff
_00057_DS_
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	ADD	R0,# 0x80
	ADD	R0,# 0x4f
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00060_DS_
;	::->op : CAST
;;105	MOVZ	R0, r0x1007
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	108; "../SoftSpi.c"	SPI_Write_2Byte(2,i,InitBright);//PWM
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
;;104	MOVZ	R0, r0x1008
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	r0x1008
	MOV	r0x1008, R0
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
;	::->op : +
;	.line	106; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1007
	INC	r0x1007
;	::->op : GOTO
	JMP	_00057_DS_
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00060_DS_
;	.line	111; "../SoftSpi.c"	SPI_Write_2Byte(2,0x36,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x36
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
;	.line	112; "../SoftSpi.c"	SPI_Write_2Byte(2,0x37,0x00);//update
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
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	113; "../SoftSpi.c"	SPI_Write_2Byte(2,0x01,0x20);
	MOV	R0,# 0x20
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x01
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
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Tail_Two_Init



func._Tail_One_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_One_Init	;Function start
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
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;4 compiler assigned registers:
;   STK01
;   STK00
;   r0x1009
;   r0x100A
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail_One_Init	;Function start
; 2 exit points
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	80; "../SoftSpi.c"	SPI_Write_2Byte(1,0x00,0x01);
	MOV	R0,# 0x01
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x00
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
;	::->op : =
;	.line	82; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	MOV	R0,# 0x02
	BANKSEL	r0x1009
	MOV	r0x1009, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x14=20), size=1, mask=ff
_00035_DS_
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	ADD	R0,# 0x80
	ADD	R0,# 0x6c
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00038_DS_
;	::->op : CAST
;;107	MOVZ	R0, r0x1009
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	84; "../SoftSpi.c"	SPI_Write_2Byte(1,i,0xFF);//SL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
;;106	MOVZ	R0, r0x100A
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	BANKSEL	r0x100A
	MOV	r0x100A, R0
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
;	::->op : +
;	.line	82; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	BANKSEL	r0x1009
	INC	r0x1009
;	::->op : GOTO
	JMP	_00035_DS_
;	::->op : LABEL
;	::->op : =
_00038_DS_
;	.line	87; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1009
	MOV	r0x1009, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=1, mask=ff
_00039_DS_
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	ADD	R0,# 0x80
	ADD	R0,# 0x4f
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00042_DS_
;	::->op : CAST
;;103	MOVZ	R0, r0x1009
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	89; "../SoftSpi.c"	SPI_Write_2Byte(1,i,InitBright);//PWM
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
;;102	MOVZ	R0, r0x100A
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	BANKSEL	r0x100A
	MOV	r0x100A, R0
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
;	::->op : +
;	.line	87; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1009
	INC	r0x1009
;	::->op : GOTO
	JMP	_00039_DS_
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00042_DS_
;	.line	92; "../SoftSpi.c"	SPI_Write_2Byte(1,0x36,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x36
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
;	.line	93; "../SoftSpi.c"	SPI_Write_2Byte(1,0x37,0x00);//update
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
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
;	.line	94; "../SoftSpi.c"	SPI_Write_2Byte(1,0x01,0x20);
	MOV	R0,# 0x20
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x01
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
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Tail_One_Init



func._IS31FL3265B_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _IS31FL3265B_Init	;Function start
; 2 exit points
;has an exit
;functions called:
;   _spi_init
;   _Tail_One_Init
;   _Tail_Two_Init
;   _spi_init
;   _Tail_One_Init
;   _Tail_Two_Init
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_IS31FL3265B_Init	;Function start
; 2 exit points
;	::->op : CALL
;	.line	73; "../SoftSpi.c"	spi_init();
	TRAPPC1	_spi_init
	TRAPPC2	_spi_init
	PAGESEL	_spi_init
	CALL	_spi_init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	74; "../SoftSpi.c"	Tail_One_Init();
	TRAPPC1	_Tail_One_Init
	TRAPPC2	_Tail_One_Init
	PAGESEL	_Tail_One_Init
	CALL	_Tail_One_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	75; "../SoftSpi.c"	Tail_Two_Init();
	TRAPPC1	_Tail_Two_Init
	TRAPPC2	_Tail_Two_Init
	PAGESEL	_Tail_Two_Init
	CALL	_Tail_Two_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _IS31FL3265B_Init



func._SPI_Write_2Byte	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _SPI_Write_2Byte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Spi_CS_Low
;   _Spi_CS_High
;   _Spi_CS_Low
;   _Spi_CS_High
;4 compiler assigned registers:
;   r0x1005
;   STK00
;   STK01
;   r0x1006
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_SPI_Write_2Byte	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	52; "../SoftSpi.c"	void SPI_Write_2Byte(unsigned char id,unsigned char addr,unsigned char dat)
	BANKSEL	r0x1005
	MOV	r0x1005, R0
	BANKSEL	r0x1006
	MOV	r0x1006, R0
;	::->op : RECEIVE
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	_SPI_Write_2Byte_SPI_adr_1_1
	MOV	_SPI_Write_2Byte_SPI_adr_1_1, R0
;	::->op : RECEIVE
	BANKSEL	STK01
	MOVZ	R0, STK01
	BANKSEL	_SPI_Write_2Byte_SPI_data_1_1
	MOV	_SPI_Write_2Byte_SPI_data_1_1, R0
;	::->op : CAST
;;99	MOVZ	R0, r0x1005
;	::->op : SEND
;	::->op : CALL
;	.line	59; "../SoftSpi.c"	Spi_CS_Low(id);
	BANKSEL	r0x1006
	MOVZ	R0, r0x1006
	TRAPPC1	_Spi_CS_Low
	TRAPPC2	_Spi_CS_Low
	PAGESEL	_Spi_CS_Low
	CALL	_Spi_CS_Low
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : =
;	.line	60; "../SoftSpi.c"	SSCI2BUFR=SPI_adr; //将待发送的字节放入发送缓存中
	BANKSEL	_SPI_Write_2Byte_SPI_adr_1_1
	MOVZ	R0, _SPI_Write_2Byte_SPI_adr_1_1
	BANKSEL	_SSCI2BUFR
	MOV	_SSCI2BUFR, R0
;	::->op : LABEL
;	::->op : GET_VALUE_AT_ADDRESS
_00021_DS_
;	.line	61; "../SoftSpi.c"	while(!SSCI2IF); //等待发送完毕后SSCIIF置位，
	BANKSEL	_EIF6_bits
	JB	_EIF6_bits, 4
	JMP	_00021_DS_
;	::->op :*  =
;	.line	62; "../SoftSpi.c"	SSCI2IF=0;
	BANKSEL	_EIF6_bits
	CLR	_EIF6_bits, 4
;	::->op : CAST
;	.line	63; "../SoftSpi.c"	buf =SSCI2BUFR;
	BANKSEL	_SSCI2BUFR
	MOVZ	R0, _SSCI2BUFR
	BANKSEL	_SPI_Write_2Byte_buf_1_1
	MOV	_SPI_Write_2Byte_buf_1_1, R0
	BANKSEL	_SPI_Write_2Byte_buf_1_1
	CLR	(_SPI_Write_2Byte_buf_1_1 + 1)
;	::->op : =
;	.line	65; "../SoftSpi.c"	SSCI2BUFR=SPI_data; //将待发送的字节放入发送缓存中
	BANKSEL	_SPI_Write_2Byte_SPI_data_1_1
	MOVZ	R0, _SPI_Write_2Byte_SPI_data_1_1
	BANKSEL	_SSCI2BUFR
	MOV	_SSCI2BUFR, R0
;	::->op : LABEL
;	::->op : GET_VALUE_AT_ADDRESS
_00024_DS_
;	.line	66; "../SoftSpi.c"	while(!SSCI2IF); //等待发送完毕后SSCIIF置位，
	BANKSEL	_EIF6_bits
	JB	_EIF6_bits, 4
	JMP	_00024_DS_
;	::->op :*  =
;	.line	67; "../SoftSpi.c"	SSCI2IF=0;
	BANKSEL	_EIF6_bits
	CLR	_EIF6_bits, 4
;	::->op : CAST
;	.line	68; "../SoftSpi.c"	buf =SSCI2BUFR;
	BANKSEL	_SSCI2BUFR
	MOVZ	R0, _SSCI2BUFR
	BANKSEL	_SPI_Write_2Byte_buf_1_1
	MOV	_SPI_Write_2Byte_buf_1_1, R0
	BANKSEL	_SPI_Write_2Byte_buf_1_1
	CLR	(_SPI_Write_2Byte_buf_1_1 + 1)
;	::->op : CAST
;;101	MOVZ	R0, r0x1005
;	::->op : SEND
;	::->op : CALL
;;100	MOVZ	R0, r0x1006
;	.line	69; "../SoftSpi.c"	Spi_CS_High(id);
	BANKSEL	r0x1005
	MOVZ	R0, r0x1005
	BANKSEL	r0x1006
	MOV	r0x1006, R0
	TRAPPC1	_Spi_CS_High
	TRAPPC2	_Spi_CS_High
	PAGESEL	_Spi_CS_High
	CALL	_Spi_CS_High
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _SPI_Write_2Byte



func._Spi_CS_Low	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Spi_CS_Low	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1004
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Spi_CS_Low	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	44; "../SoftSpi.c"	void Spi_CS_Low(char id)
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : EQ_OP
;	.line	46; "../SoftSpi.c"	switch(id)
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	XOR	R0,# 0x01
	JNB	PSW, 2
	JMP	_00012_DS_
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	XOR	R0,# 0x02
	JNB	PSW, 2
	JMP	_00013_DS_
	JMP	_00015_DS_
_00012_DS_
;	.line	48; "../SoftSpi.c"	case 1:CS1LOW;break;
	BANKSEL	_P0LR_bits
	CLR	_P0LR_bits, 4
;	::->op : GOTO
	JMP	_00015_DS_
;	::->op : LABEL
;	::->op :*  =
_00013_DS_
;	.line	49; "../SoftSpi.c"	case 2:CS2LOW;break;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 2
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00015_DS_
;	.line	50; "../SoftSpi.c"	}
	CRET	
; exit point of _Spi_CS_Low



func._Spi_CS_High	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Spi_CS_High	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1004
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Spi_CS_High	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	36; "../SoftSpi.c"	void Spi_CS_High(char id)
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : EQ_OP
;	.line	38; "../SoftSpi.c"	switch(id)
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	XOR	R0,# 0x01
	JNB	PSW, 2
	JMP	_00003_DS_
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	XOR	R0,# 0x02
	JNB	PSW, 2
	JMP	_00004_DS_
	JMP	_00006_DS_
_00003_DS_
;	.line	40; "../SoftSpi.c"	case 1:CS1HIGH;break;
	BANKSEL	_P0LR_bits
	SET	_P0LR_bits, 4
;	::->op : GOTO
	JMP	_00006_DS_
;	::->op : LABEL
;	::->op :*  =
_00004_DS_
;	.line	41; "../SoftSpi.c"	case 2:CS2HIGH;break;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 2
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00006_DS_
;	.line	42; "../SoftSpi.c"	}
	CRET	
; exit point of _Spi_CS_High



func._spi_init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _spi_init	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_spi_init	;Function start
; 2 exit points
;	::->op :*  =
;	.line	16; "../SoftSpi.c"	TR92 =1;
	BANKSEL	_TR9_bits
	SET	_TR9_bits, 2
;	::->op :*  =
;	.line	17; "../SoftSpi.c"	TR91 =0;
	BANKSEL	_TR9_bits
	CLR	_TR9_bits, 1
;	::->op :*  =
;	.line	18; "../SoftSpi.c"	TR03 =0;
	BANKSEL	_TR0_bits
	CLR	_TR0_bits, 3
;	::->op :*  =
;	.line	19; "../SoftSpi.c"	TR04 =0;
	BANKSEL	_TR0_bits
	CLR	_TR0_bits, 4
;	::->op :*  =
;	.line	20; "../SoftSpi.c"	TR62 =0;
	BANKSEL	_TR6_bits
	CLR	_TR6_bits, 2
;	::->op : =
;	.line	21; "../SoftSpi.c"	APFCTL9 =0x6E;
	MOV	R0,# 0x6e
	BANKSEL	_APFCTL9
	MOV	_APFCTL9, R0
;	::->op :*  =
;	.line	23; "../SoftSpi.c"	SSCI2EN=0;				//关闭SPI模块，初始化完之后再打开
	BANKSEL	_SSCI2CTL0_bits
	CLR	_SSCI2CTL0_bits, 5
;	::->op : =
;	.line	25; "../SoftSpi.c"	SSCI2CTL0=0X01;			//SPI 主控模式，时钟 = 工作时钟/64
	MOV	R0,# 0x01
	BANKSEL	_SSCI2CTL0
	MOV	_SSCI2CTL0, R0
;	::->op : =
;	.line	26; "../SoftSpi.c"	SSCI2CTL1=0X00;
	BANKSEL	_SSCI2CTL1
	CLR	_SSCI2CTL1
;	::->op : =
;	.line	27; "../SoftSpi.c"	SSCI2CTL2=0X00;
	BANKSEL	_SSCI2CTL2
	CLR	_SSCI2CTL2
;	::->op : =
;	.line	28; "../SoftSpi.c"	SSCI2STA=0X40;  //空闲时为低电平，在SCL下降沿发送数据
	MOV	R0,# 0x40
	BANKSEL	_SSCI2STA
	MOV	_SSCI2STA, R0
;	::->op :*  =
;	.line	30; "../SoftSpi.c"	SSCI2EN=1;
	BANKSEL	_SSCI2CTL0_bits
	SET	_SSCI2CTL0_bits, 5
;	::->op :*  =
;	.line	32; "../SoftSpi.c"	SDB1=1;
	BANKSEL	_P1LR_bits
	SET	_P1LR_bits, 2
;	::->op :*  =
;	.line	33; "../SoftSpi.c"	CS1HIGH;
	BANKSEL	_P0LR_bits
	SET	_P0LR_bits, 4
;	::->op :*  =
;	.line	34; "../SoftSpi.c"	CS2HIGH;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 2
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _spi_init


;	code size estimation:
;	  295+   92 =   387 instructions (  958 byte)


	.end
