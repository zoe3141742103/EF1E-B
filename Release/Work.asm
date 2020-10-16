;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
;	.file	"../Work.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_LED_Water
	.extern	_LED_Stop_Open
	.extern	_LED_Stop_AllOpen
	.extern	_LED_Stop_AllClose
	.extern	_LED_Stop_PWM5Open
	.extern	_LED_Stop_PWM10Open
	.extern	_Led_RT_AllOpen
	.extern	_Led_RT_AllClose
	.extern	_Led_RT_PWMOpen
	.extern	_Led_RT_Water100
	.extern	_Led_RT_Water55
	.extern	_Led_Tail_AllOpen
	.extern	_Led_Tail_55Open
	.extern	_Led_Tail_AllClose
	.extern	_Tail12_Breath_Open
	.extern	_Tail12_Breath_Close
	.extern	_Tail12_Breath_CloseTo10
	.extern	_Tail_LowWater_Open
	.extern	_Tail_HighWater_Open
	.extern	_Stop_HighBackWater_Open
	.extern	_Tail1_FullBackWater_Open
	.extern	_Tail2_Stop_FullWater_Open
	.extern	_Tail_LowWater_Blinky
	.extern	_Tail1_2_Stop_BackWater_Close
	.extern	_Tail1_2_Stop_FullWater_Close
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
	.global	_Led_Hello_Check
	.global	_RT_Timer_PWM_Callback
	.global	_Timer_PWM_Callback
	.global	_Mode_Act
	.global	_Tail_Stop_Check_Input
	.global	_RT_Mode_Act
	.global	_RT_Water_Act
	.global	_RT_Check_Input
	.global	_delay_us
	.global	_delay_ms
	.global	_Init_IO
	.global	_Led_Hello
	.global	_Led_Bye
	.global	_PastMode
	.global	_NowMode
	.global	_ActMode
	.global	_RT_PastMode
	.global	_RT_NowMode
	.global	_RT_ActMode
	.global	_LED_Stop_PWM_Flag
	.global	_PWM_Timer_Flag
	.global	_RT_Timer_Flag
	.global	_RT_Timer_PWM_Flag
	.global	_Stop_High_Addr
	.global	_Stop_Low_Addr
	.global	_RT_High_Addr
	.global	_RT_Low_Addr
	.global	_RT_Water_Flag
	.global	_RT_WATER_FULL
	.global	_RT_CNT
	.global	_Tail_Status
	.global	_Stop_Status
	.global	_RT_Status
	.global	_RT_EN_Status
	.global	_LOW_EN_Status
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
UD_Work_0	.udata
_LED_Stop_PWM_Flag	.res	1

UD_Work_1	.udata
_PWM_Timer_Flag	.res	1

UD_Work_2	.udata
_RT_Timer_Flag	.res	1

UD_Work_3	.udata
_Stop_High_Addr	.res	2

UD_Work_4	.udata
_RT_High_Addr	.res	2

UD_Work_5	.udata
_RT_Low_Addr	.res	2

UD_Work_6	.udata
_RT_Water_Flag	.res	2

UD_Work_7	.udata
_Tail_Status	.res	1

UD_Work_8	.udata
_Stop_Status	.res	1

UD_Work_9	.udata
_RT_Status	.res	1

UD_Work_10	.udata
_RT_EN_Status	.res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_Work_0	.udata
r0x102B	.res	1
UDL_Work_1	.udata
r0x102A	.res	1
UDL_Work_2	.udata
r0x102C	.res	1
UDL_Work_3	.udata
r0x102D	.res	1
UDL_Work_4	.udata
r0x1037	.res	1
UDL_Work_5	.udata
r0x1036	.res	1
UDL_Work_6	.udata
r0x1034	.res	1
UDL_Work_7	.udata
r0x1035	.res	1
UDL_Work_8	.udata
r0x1030	.res	1
UDL_Work_9	.udata
r0x1031	.res	1
UDL_Work_10	.udata
r0x1032	.res	1
UDL_Work_11	.udata
r0x1033	.res	1
UDL_Work_12	.udata
r0x102F	.res	1
UDL_Work_13	.udata
r0x102E	.res	1
UDL_Work_14	.udata
_delay_ms_i_1_1	.res	2
UDL_Work_15	.udata
_delay_ms_j_1_1	.res	2
UDL_Work_16	.udata
_delay_us_i_1_1	.res	2
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_Work_0	.idata
_PastMode
	.db	0x00, 0x00


ID_Work_1	.idata
_NowMode
	.db	0x00, 0x00


ID_Work_2	.idata
_ActMode
	.db	0x00, 0x00


ID_Work_3	.idata
_RT_PastMode
	.db	0x00, 0x00


ID_Work_4	.idata
_RT_NowMode
	.db	0x00, 0x00


ID_Work_5	.idata
_RT_ActMode
	.db	0x00, 0x00


ID_Work_6	.idata
_RT_Timer_PWM_Flag
	.db	0x00


ID_Work_7	.idata
_Stop_Low_Addr
	.db	0x00, 0x00


ID_Work_8	.idata
_RT_WATER_FULL
	.db	0x00, 0x00


ID_Work_9	.idata
_RT_CNT
	.db	0x00, 0x00, 0x00, 0x00


ID_Work_10	.idata
_LOW_EN_Status
	.db	0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr


func._Led_Hello_Check	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_Hello_Check	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Led_Hello
;   _Led_Bye
;   _Led_Hello
;   _Led_Bye
;1 compiler assigned register :
;   r0x102E
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_Hello_Check	;Function start
; 2 exit points
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	424; "../Work.c"	Tail_Status = Tail;
	BANKSEL	r0x102E
	CLR	r0x102E
	BANKSEL	_P7_bits
	JB	_P7_bits, 1
	JMP	_00298_DS_
	BANKSEL	r0x102E
	INC	r0x102E
;	::->op : =
_00298_DS_
	BANKSEL	r0x102E
	MOVZ	R0, r0x102E
	BANKSEL	_Tail_Status
	MOV	_Tail_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	425; "../Work.c"	Stop_Status = Stop;
	BANKSEL	r0x102E
	CLR	r0x102E
	BANKSEL	_P7_bits
	JB	_P7_bits, 2
	JMP	_00299_DS_
	BANKSEL	r0x102E
	INC	r0x102E
;	::->op : =
_00299_DS_
	BANKSEL	r0x102E
	MOVZ	R0, r0x102E
	BANKSEL	_Stop_Status
	MOV	_Stop_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	426; "../Work.c"	RT_Status = RT;
	BANKSEL	r0x102E
	CLR	r0x102E
	BANKSEL	_PA_bits
	JB	_PA_bits, 0
	JMP	_00300_DS_
	BANKSEL	r0x102E
	INC	r0x102E
;	::->op : =
_00300_DS_
	BANKSEL	r0x102E
	MOVZ	R0, r0x102E
	BANKSEL	_RT_Status
	MOV	_RT_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	427; "../Work.c"	RT_EN_Status = RT_EN;
	BANKSEL	r0x102E
	CLR	r0x102E
	BANKSEL	_P5_bits
	JB	_P5_bits, 1
	JMP	_00301_DS_
	BANKSEL	r0x102E
	INC	r0x102E
;	::->op : =
_00301_DS_
	BANKSEL	r0x102E
	MOVZ	R0, r0x102E
	BANKSEL	_RT_EN_Status
	MOV	_RT_EN_Status, R0
;	::->op : EQ_OP
;	.line	428; "../Work.c"	if(Tail_Status==1&&Stop_Status==1&&RT_Status==1&&RT_EN_Status==0)
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00279_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00279_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00279_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_RT_EN_Status
	ORL	R0, _RT_EN_Status
	JB	PSW, 2
	JMP	_00279_DS_
;	::->op : CALL
;	.line	430; "../Work.c"	Led_Hello();
	TRAPPC1	_Led_Hello
	TRAPPC2	_Led_Hello
	PAGESEL	_Led_Hello
	CALL	_Led_Hello
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : EQ_OP
_00279_DS_
;	.line	432; "../Work.c"	if(Tail_Status==1&&Stop_Status==1&&RT_Status==1&&RT_EN_Status==1)
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00288_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00288_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00288_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_EN_Status
	MOVZ	R0, _RT_EN_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00288_DS_
;	::->op : CALL
;	.line	434; "../Work.c"	Led_Bye();
	TRAPPC1	_Led_Bye
	TRAPPC2	_Led_Bye
	PAGESEL	_Led_Bye
	CALL	_Led_Bye
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00288_DS_
	CRET	
; exit point of _Led_Hello_Check



func._Led_Bye	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_Bye	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Led_Tail_AllOpen
;   _LED_Stop_AllOpen
;   _delay_ms
;   _Led_RT_Water100
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail_LowWater_Blinky
;   _delay_ms
;   _Tail1_2_Stop_BackWater_Close
;   _Tail12_Breath_CloseTo10
;   _Tail1_2_Stop_FullWater_Close
;   _delay_ms
;   _Tail12_Breath_Close
;   _Led_Tail_AllOpen
;   _LED_Stop_AllOpen
;   _delay_ms
;   _Led_RT_Water100
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail_LowWater_Blinky
;   _delay_ms
;   _Tail1_2_Stop_BackWater_Close
;   _Tail12_Breath_CloseTo10
;   _Tail1_2_Stop_FullWater_Close
;   _delay_ms
;   _Tail12_Breath_Close
;1 compiler assigned register :
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_Bye	;Function start
; 2 exit points
;	::->op : CALL
;	.line	406; "../Work.c"	Led_Tail_AllOpen();
	TRAPPC1	_Led_Tail_AllOpen
	TRAPPC2	_Led_Tail_AllOpen
	PAGESEL	_Led_Tail_AllOpen
	CALL	_Led_Tail_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	407; "../Work.c"	LED_Stop_AllOpen();
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	408; "../Work.c"	delay_ms(1000);
	MOV	R0,# 0xe8
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x03
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	409; "../Work.c"	Led_RT_Water100();
	TRAPPC1	_Led_RT_Water100
	TRAPPC2	_Led_RT_Water100
	PAGESEL	_Led_RT_Water100
	CALL	_Led_RT_Water100
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	410; "../Work.c"	delay_ms(200);
	MOV	R0,# 0xc8
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
;	::->op : CALL
;	.line	411; "../Work.c"	Led_RT_AllClose();
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	412; "../Work.c"	delay_ms(200);
	MOV	R0,# 0xc8
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
;	::->op : CALL
;	.line	413; "../Work.c"	Tail_LowWater_Blinky();
	TRAPPC1	_Tail_LowWater_Blinky
	TRAPPC2	_Tail_LowWater_Blinky
	PAGESEL	_Tail_LowWater_Blinky
	CALL	_Tail_LowWater_Blinky
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	414; "../Work.c"	delay_ms(200);
	MOV	R0,# 0xc8
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
;	::->op : CALL
;	.line	415; "../Work.c"	Tail1_2_Stop_BackWater_Close();
	TRAPPC1	_Tail1_2_Stop_BackWater_Close
	TRAPPC2	_Tail1_2_Stop_BackWater_Close
	PAGESEL	_Tail1_2_Stop_BackWater_Close
	CALL	_Tail1_2_Stop_BackWater_Close
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	416; "../Work.c"	Tail12_Breath_CloseTo10();
	TRAPPC1	_Tail12_Breath_CloseTo10
	TRAPPC2	_Tail12_Breath_CloseTo10
	PAGESEL	_Tail12_Breath_CloseTo10
	CALL	_Tail12_Breath_CloseTo10
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	417; "../Work.c"	Tail1_2_Stop_FullWater_Close();
	TRAPPC1	_Tail1_2_Stop_FullWater_Close
	TRAPPC2	_Tail1_2_Stop_FullWater_Close
	PAGESEL	_Tail1_2_Stop_FullWater_Close
	CALL	_Tail1_2_Stop_FullWater_Close
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	418; "../Work.c"	delay_ms(2000);
	MOV	R0,# 0xd0
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x07
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	419; "../Work.c"	Tail12_Breath_Close();
	TRAPPC1	_Tail12_Breath_Close
	TRAPPC2	_Tail12_Breath_Close
	PAGESEL	_Tail12_Breath_Close
	CALL	_Tail12_Breath_Close
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : GOTO
_00273_DS_
	JMP	_00273_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Led_Bye



func._Led_Hello	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Led_Hello	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Led_RT_Water100
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Led_RT_Water100
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail12_Breath_Open
;   _delay_ms
;   _Tail_LowWater_Open
;   _delay_ms
;   _Tail_HighWater_Open
;   _Stop_HighBackWater_Open
;   _Tail1_FullBackWater_Open
;   _Tail2_Stop_FullWater_Open
;   _Led_RT_Water100
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Led_RT_Water100
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail12_Breath_Open
;   _delay_ms
;   _Tail_LowWater_Open
;   _delay_ms
;   _Tail_HighWater_Open
;   _Stop_HighBackWater_Open
;   _Tail1_FullBackWater_Open
;   _Tail2_Stop_FullWater_Open
;1 compiler assigned register :
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_Hello	;Function start
; 2 exit points
;	::->op : CALL
;	.line	386; "../Work.c"	Led_RT_Water100();
	TRAPPC1	_Led_RT_Water100
	TRAPPC2	_Led_RT_Water100
	PAGESEL	_Led_RT_Water100
	CALL	_Led_RT_Water100
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	387; "../Work.c"	delay_ms(200);
	MOV	R0,# 0xc8
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
;	::->op : CALL
;	.line	388; "../Work.c"	Led_RT_AllClose();
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	389; "../Work.c"	delay_ms(300);
	MOV	R0,# 0x2c
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	390; "../Work.c"	Led_RT_Water100();
	TRAPPC1	_Led_RT_Water100
	TRAPPC2	_Led_RT_Water100
	PAGESEL	_Led_RT_Water100
	CALL	_Led_RT_Water100
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	391; "../Work.c"	delay_ms(200);
	MOV	R0,# 0xc8
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
;	::->op : CALL
;	.line	392; "../Work.c"	Led_RT_AllClose();
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	393; "../Work.c"	delay_ms(300);
	MOV	R0,# 0x2c
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	394; "../Work.c"	Tail12_Breath_Open();
	TRAPPC1	_Tail12_Breath_Open
	TRAPPC2	_Tail12_Breath_Open
	PAGESEL	_Tail12_Breath_Open
	CALL	_Tail12_Breath_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	395; "../Work.c"	delay_ms(200);
	MOV	R0,# 0xc8
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
;	::->op : CALL
;	.line	396; "../Work.c"	Tail_LowWater_Open();
	TRAPPC1	_Tail_LowWater_Open
	TRAPPC2	_Tail_LowWater_Open
	PAGESEL	_Tail_LowWater_Open
	CALL	_Tail_LowWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	397; "../Work.c"	delay_ms(300);
	MOV	R0,# 0x2c
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x01
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	398; "../Work.c"	Tail_HighWater_Open();
	TRAPPC1	_Tail_HighWater_Open
	TRAPPC2	_Tail_HighWater_Open
	PAGESEL	_Tail_HighWater_Open
	CALL	_Tail_HighWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	399; "../Work.c"	Stop_HighBackWater_Open();
	TRAPPC1	_Stop_HighBackWater_Open
	TRAPPC2	_Stop_HighBackWater_Open
	PAGESEL	_Stop_HighBackWater_Open
	CALL	_Stop_HighBackWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	400; "../Work.c"	Tail1_FullBackWater_Open();
	TRAPPC1	_Tail1_FullBackWater_Open
	TRAPPC2	_Tail1_FullBackWater_Open
	PAGESEL	_Tail1_FullBackWater_Open
	CALL	_Tail1_FullBackWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	401; "../Work.c"	Tail2_Stop_FullWater_Open();
	TRAPPC1	_Tail2_Stop_FullWater_Open
	TRAPPC2	_Tail2_Stop_FullWater_Open
	PAGESEL	_Tail2_Stop_FullWater_Open
	CALL	_Tail2_Stop_FullWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : GOTO
_00267_DS_
	JMP	_00267_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Led_Hello



func._RT_Timer_PWM_Callback	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _RT_Timer_PWM_Callback	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_RT_Timer_PWM_Callback	;Function start
; 2 exit points
;	::->op : IFX
;	.line	355; "../Work.c"	if(RT_Timer_Flag)
	MOV	R0,# 0x00
	BANKSEL	_RT_Timer_Flag
	ORL	R0, _RT_Timer_Flag
	JNB	PSW, 2
	JMP	_00255_DS_
;	::->op : =
;	.line	357; "../Work.c"	RT_Timer_Flag =0;
	BANKSEL	_RT_Timer_Flag
	CLR	_RT_Timer_Flag
;	::->op :*  =
;	.line	358; "../Work.c"	T2ON =0;
	BANKSEL	_T2CTL0_bits
	CLR	_T2CTL0_bits, 2
;	::->op : =
;	.line	359; "../Work.c"	PP60H =0x02;
	MOV	R0,# 0x02
	BANKSEL	_PP60H
	MOV	_PP60H, R0
;	::->op : =
;	.line	360; "../Work.c"	PP60L =0x26;
	MOV	R0,# 0x26
	BANKSEL	_PP60L
	MOV	_PP60L, R0
;	::->op :*  =
;	.line	361; "../Work.c"	T2ON =1;
	BANKSEL	_T2CTL0_bits
	SET	_T2CTL0_bits, 2
;	.line	362; "../Work.c"	if(RT_High_Addr & RT_1_ADDR)
	BANKSEL	_RT_High_Addr
	JB	_RT_High_Addr, 0
	JMP	_00302_DS_
;	.line	363; "../Work.c"	RT_1=0;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 6
_00302_DS_
;	.line	364; "../Work.c"	if(RT_High_Addr & RT_2_ADDR)
	BANKSEL	_RT_High_Addr
	JB	_RT_High_Addr, 1
	JMP	_00303_DS_
;	.line	365; "../Work.c"	RT_2=0;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 5
_00303_DS_
;	.line	366; "../Work.c"	if(RT_High_Addr & RT_3_ADDR)
	BANKSEL	_RT_High_Addr
	JB	_RT_High_Addr, 2
	JMP	_00257_DS_
;	::->op :*  =
;	.line	367; "../Work.c"	RT_3=0;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 3
;	::->op : GOTO
	JMP	_00257_DS_
;	::->op : LABEL
;	::->op : =
_00255_DS_
;	.line	371; "../Work.c"	RT_Timer_Flag =1;
	MOV	R0,# 0x01
	BANKSEL	_RT_Timer_Flag
	MOV	_RT_Timer_Flag, R0
;	::->op :*  =
;	.line	372; "../Work.c"	T2ON =0;
	BANKSEL	_T2CTL0_bits
	CLR	_T2CTL0_bits, 2
;	::->op : =
;	.line	373; "../Work.c"	PP60H =0x01;
	MOV	R0,# 0x01
	BANKSEL	_PP60H
	MOV	_PP60H, R0
;	::->op : =
;	.line	374; "../Work.c"	PP60L =0xc2;
	MOV	R0,# 0xc2
	BANKSEL	_PP60L
	MOV	_PP60L, R0
;	::->op :*  =
;	.line	375; "../Work.c"	T2ON =1;
	BANKSEL	_T2CTL0_bits
	SET	_T2CTL0_bits, 2
;	.line	376; "../Work.c"	if(RT_Low_Addr & RT_1_ADDR)
	BANKSEL	_RT_Low_Addr
	JB	_RT_Low_Addr, 0
	JMP	_00304_DS_
;	.line	377; "../Work.c"	RT_1=1;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 6
_00304_DS_
;	.line	378; "../Work.c"	if(RT_Low_Addr & RT_2_ADDR)
	BANKSEL	_RT_Low_Addr
	JB	_RT_Low_Addr, 1
	JMP	_00305_DS_
;	.line	379; "../Work.c"	RT_2=1;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 5
_00305_DS_
;	.line	380; "../Work.c"	if(RT_Low_Addr & RT_3_ADDR)
	BANKSEL	_RT_Low_Addr
	JB	_RT_Low_Addr, 2
	JMP	_00257_DS_
;	::->op :*  =
;	.line	381; "../Work.c"	RT_3=1;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 3
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00257_DS_
	CRET	
; exit point of _RT_Timer_PWM_Callback



func._Timer_PWM_Callback	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Timer_PWM_Callback	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Timer_PWM_Callback	;Function start
; 2 exit points
;	::->op : IFX
;	.line	308; "../Work.c"	if(PWM_Timer_Flag)
	MOV	R0,# 0x00
	BANKSEL	_PWM_Timer_Flag
	ORL	R0, _PWM_Timer_Flag
	JNB	PSW, 2
	JMP	_00227_DS_
;	::->op : =
;	.line	310; "../Work.c"	PWM_Timer_Flag =0;
	BANKSEL	_PWM_Timer_Flag
	CLR	_PWM_Timer_Flag
;	::->op : IFX
;	.line	311; "../Work.c"	if(RT_Timer_PWM_Flag)//5%
	MOV	R0,# 0x00
	BANKSEL	_RT_Timer_PWM_Flag
	ORL	R0, _RT_Timer_PWM_Flag
	JNB	PSW, 2
	JMP	_00205_DS_
;	::->op : =
;	.line	313; "../Work.c"	T1H = 0xBC;
	MOV	R0,# 0xbc
	BANKSEL	_T1H
	MOV	_T1H, R0
;	::->op : =
;	.line	314; "../Work.c"	T1L = 0x58;
	MOV	R0,# 0x58
	BANKSEL	_T1L
	MOV	_T1L, R0
;	::->op : GOTO
	JMP	_00206_DS_
;	::->op : LABEL
;	::->op : =
_00205_DS_
;	.line	318; "../Work.c"	T1H = 0xB9;
	MOV	R0,# 0xb9
	BANKSEL	_T1H
	MOV	_T1H, R0
;	::->op : =
;	.line	319; "../Work.c"	T1L = 0xB0;
	MOV	R0,# 0xb0
	BANKSEL	_T1L
	MOV	_T1L, R0
;	::->op : LABEL
;	::->op : BITWISEAND
_00206_DS_
;	.line	321; "../Work.c"	if(Stop_High_Addr & LED1ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 0
	JMP	_00208_DS_
;	::->op :*  =
;	.line	322; "../Work.c"	LED1LOW;
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 3
;	::->op : LABEL
;	::->op : BITWISEAND
_00208_DS_
;	.line	323; "../Work.c"	if(Stop_High_Addr & LED2ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 1
	JMP	_00210_DS_
;	::->op :*  =
;	.line	324; "../Work.c"	LED2LOW;
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 4
;	::->op : LABEL
;	::->op : BITWISEAND
_00210_DS_
;	.line	325; "../Work.c"	if(Stop_High_Addr & LED3ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 2
	JMP	_00212_DS_
;	::->op :*  =
;	.line	326; "../Work.c"	LED3LOW;
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 0
;	::->op : LABEL
;	::->op : BITWISEAND
_00212_DS_
;	.line	327; "../Work.c"	if(Stop_High_Addr & LED4ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 3
	JMP	_00229_DS_
;	::->op :*  =
;	.line	328; "../Work.c"	LED4LOW;
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 1
;	::->op : GOTO
	JMP	_00229_DS_
;	::->op : LABEL
;	::->op : =
_00227_DS_
;	.line	332; "../Work.c"	PWM_Timer_Flag =1;
	MOV	R0,# 0x01
	BANKSEL	_PWM_Timer_Flag
	MOV	_PWM_Timer_Flag, R0
;	::->op : IFX
;	.line	333; "../Work.c"	if(RT_Timer_PWM_Flag)//5%
	MOV	R0,# 0x00
	BANKSEL	_RT_Timer_PWM_Flag
	ORL	R0, _RT_Timer_PWM_Flag
	JNB	PSW, 2
	JMP	_00216_DS_
;	::->op : =
;	.line	335; "../Work.c"	T1H = 0xFC;
	MOV	R0,# 0xfc
	BANKSEL	_T1H
	MOV	_T1H, R0
;	::->op : =
;	.line	336; "../Work.c"	T1L = 0x18;
	MOV	R0,# 0x18
	BANKSEL	_T1L
	MOV	_T1L, R0
;	::->op : GOTO
	JMP	_00217_DS_
;	::->op : LABEL
;	::->op : =
_00216_DS_
;	.line	340; "../Work.c"	T1H = 0xF8;
	MOV	R0,# 0xf8
	BANKSEL	_T1H
	MOV	_T1H, R0
;	::->op : =
;	.line	341; "../Work.c"	T1L = 0x30;
	MOV	R0,# 0x30
	BANKSEL	_T1L
	MOV	_T1L, R0
;	::->op : LABEL
;	::->op : BITWISEAND
_00217_DS_
;	.line	343; "../Work.c"	if(Stop_Low_Addr & LED1ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 0
	JMP	_00219_DS_
;	::->op :*  =
;	.line	344; "../Work.c"	LED1HIGH;
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 3
;	::->op : LABEL
;	::->op : BITWISEAND
_00219_DS_
;	.line	345; "../Work.c"	if(Stop_Low_Addr & LED2ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 1
	JMP	_00221_DS_
;	::->op :*  =
;	.line	346; "../Work.c"	LED2HIGH;
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 4
;	::->op : LABEL
;	::->op : BITWISEAND
_00221_DS_
;	.line	347; "../Work.c"	if(Stop_Low_Addr & LED3ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 2
	JMP	_00223_DS_
;	::->op :*  =
;	.line	348; "../Work.c"	LED3HIGH;
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 0
;	::->op : LABEL
;	::->op : BITWISEAND
_00223_DS_
;	.line	349; "../Work.c"	if(Stop_Low_Addr & LED4ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 3
	JMP	_00229_DS_
;	::->op :*  =
;	.line	350; "../Work.c"	LED4HIGH;
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 1
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00229_DS_
	CRET	
; exit point of _Timer_PWM_Callback



func._Mode_Act	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Mode_Act	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Led_Tail_AllClose
;   _LED_Stop_AllClose
;   _Led_Tail_55Open
;   _LED_Stop_PWM5Open
;   _Led_Tail_55Open
;   _LED_Stop_PWM10Open
;   _Led_Tail_AllClose
;   _LED_Stop_AllOpen
;   _Led_Tail_55Open
;   _LED_Stop_AllOpen
;   _Led_Tail_AllClose
;   _LED_Stop_AllClose
;   _Led_Tail_55Open
;   _LED_Stop_PWM5Open
;   _Led_Tail_55Open
;   _LED_Stop_PWM10Open
;   _Led_Tail_AllClose
;   _LED_Stop_AllOpen
;   _Led_Tail_55Open
;   _LED_Stop_AllOpen
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Mode_Act	;Function start
; 2 exit points
;	::->op : EQ_OP
;	.line	281; "../Work.c"	switch(ActMode)
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00199_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00185_DS_
_00199_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00200_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00186_DS_
_00200_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00201_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00187_DS_
_00201_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00202_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00188_DS_
_00202_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x10
	JB	PSW, 2
	JMP	_00203_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00189_DS_
_00203_DS_
	JMP	_00192_DS_
_00185_DS_
;	.line	284; "../Work.c"	Led_Tail_AllClose();	//位置灯全关闭
	TRAPPC1	_Led_Tail_AllClose
	TRAPPC2	_Led_Tail_AllClose
	PAGESEL	_Led_Tail_AllClose
	CALL	_Led_Tail_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	285; "../Work.c"	LED_Stop_AllClose();	//制动灯全关闭
	TRAPPC1	_LED_Stop_AllClose
	TRAPPC2	_LED_Stop_AllClose
	PAGESEL	_LED_Stop_AllClose
	CALL	_LED_Stop_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	286; "../Work.c"	break;
	JMP	_00192_DS_
;	::->op : LABEL
;	::->op : CALL
_00186_DS_
;	.line	288; "../Work.c"	Led_Tail_55Open();		//位置灯55%开启
	TRAPPC1	_Led_Tail_55Open
	TRAPPC2	_Led_Tail_55Open
	PAGESEL	_Led_Tail_55Open
	CALL	_Led_Tail_55Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	289; "../Work.c"	LED_Stop_PWM5Open();	//制动灯5%PWM开启
	TRAPPC1	_LED_Stop_PWM5Open
	TRAPPC2	_LED_Stop_PWM5Open
	PAGESEL	_LED_Stop_PWM5Open
	CALL	_LED_Stop_PWM5Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	290; "../Work.c"	break;
	JMP	_00192_DS_
;	::->op : LABEL
;	::->op : CALL
_00187_DS_
;	.line	292; "../Work.c"	Led_Tail_55Open();		//位置灯55%开启
	TRAPPC1	_Led_Tail_55Open
	TRAPPC2	_Led_Tail_55Open
	PAGESEL	_Led_Tail_55Open
	CALL	_Led_Tail_55Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	293; "../Work.c"	LED_Stop_PWM10Open();	//制动灯10%PWM开启
	TRAPPC1	_LED_Stop_PWM10Open
	TRAPPC2	_LED_Stop_PWM10Open
	PAGESEL	_LED_Stop_PWM10Open
	CALL	_LED_Stop_PWM10Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	294; "../Work.c"	break;
	JMP	_00192_DS_
;	::->op : LABEL
;	::->op : CALL
_00188_DS_
;	.line	296; "../Work.c"	Led_Tail_AllClose();	//位置灯全关闭
	TRAPPC1	_Led_Tail_AllClose
	TRAPPC2	_Led_Tail_AllClose
	PAGESEL	_Led_Tail_AllClose
	CALL	_Led_Tail_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	297; "../Work.c"	LED_Stop_AllOpen();		//制动灯全开启
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	298; "../Work.c"	break;
	JMP	_00192_DS_
;	::->op : LABEL
;	::->op : CALL
_00189_DS_
;	.line	300; "../Work.c"	Led_Tail_55Open();		//位置灯55%开启
	TRAPPC1	_Led_Tail_55Open
	TRAPPC2	_Led_Tail_55Open
	PAGESEL	_Led_Tail_55Open
	CALL	_Led_Tail_55Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	301; "../Work.c"	LED_Stop_AllOpen();		//制动灯全开启
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00192_DS_
;	.line	304; "../Work.c"	}
	CRET	
; exit point of _Mode_Act



func._Tail_Stop_Check_Input	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_Stop_Check_Input	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Mode_Act
;   _Mode_Act
;1 compiler assigned register :
;   r0x102F
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail_Stop_Check_Input	;Function start
; 2 exit points
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	212; "../Work.c"	Tail_Status = Tail;
	BANKSEL	r0x102F
	CLR	r0x102F
	BANKSEL	_P7_bits
	JB	_P7_bits, 1
	JMP	_00306_DS_
	BANKSEL	r0x102F
	INC	r0x102F
;	::->op : =
_00306_DS_
	BANKSEL	r0x102F
	MOVZ	R0, r0x102F
	BANKSEL	_Tail_Status
	MOV	_Tail_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	213; "../Work.c"	Stop_Status = Stop;
	BANKSEL	r0x102F
	CLR	r0x102F
	BANKSEL	_P7_bits
	JB	_P7_bits, 2
	JMP	_00307_DS_
	BANKSEL	r0x102F
	INC	r0x102F
;	::->op : =
_00307_DS_
	BANKSEL	r0x102F
	MOVZ	R0, r0x102F
	BANKSEL	_Stop_Status
	MOV	_Stop_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	214; "../Work.c"	LOW_EN_Status = Open_EN;
	BANKSEL	r0x102F
	CLR	r0x102F
	BANKSEL	_P1_bits
	JB	_P1_bits, 0
	JMP	_00308_DS_
	BANKSEL	r0x102F
	INC	r0x102F
;	::->op : =
_00308_DS_
	BANKSEL	r0x102F
	MOVZ	R0, r0x102F
	BANKSEL	_LOW_EN_Status
	MOV	_LOW_EN_Status, R0
;	::->op : IFX
;	.line	216; "../Work.c"	if(Tail_Status==0&&Stop_Status==0)//位置低，制动低,无低亮使能
	MOV	R0,# 0x00
	BANKSEL	_Tail_Status
	ORL	R0, _Tail_Status
	JB	PSW, 2
	JMP	_00163_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_Stop_Status
	ORL	R0, _Stop_Status
	JB	PSW, 2
	JMP	_00163_DS_
;	::->op : =
;	.line	218; "../Work.c"	PastMode = NowMode;NowMode = Mode1_Status;
	BANKSEL	_NowMode
	MOVZ	R0, _NowMode
	BANKSEL	_PastMode
	MOV	_PastMode, R0
	BANKSEL	_NowMode
	MOVZ	R0, (_NowMode + 1)
	BANKSEL	_PastMode
	MOV	(_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_NowMode
	MOV	_NowMode, R0
	BANKSEL	_NowMode
	CLR	(_NowMode + 1)
;	::->op : EQ_OP
;	.line	219; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00131_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00131_DS_
;	::->op : =
;	.line	221; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : =
_00131_DS_
;	.line	225; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x01
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : EQ_OP
_00163_DS_
;	.line	228; "../Work.c"	else if(Tail_Status==1&&Stop_Status==0&&LOW_EN_Status==1)//位置高，制动低,低亮使能高
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00158_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_Stop_Status
	ORL	R0, _Stop_Status
	JB	PSW, 2
	JMP	_00158_DS_
;	::->op : EQ_OP
	BANKSEL	_LOW_EN_Status
	MOVZ	R0, _LOW_EN_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00158_DS_
;	::->op : =
;	.line	230; "../Work.c"	PastMode = NowMode;NowMode = Mode2_Status;
	BANKSEL	_NowMode
	MOVZ	R0, _NowMode
	BANKSEL	_PastMode
	MOV	_PastMode, R0
	BANKSEL	_NowMode
	MOVZ	R0, (_NowMode + 1)
	BANKSEL	_PastMode
	MOV	(_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x02
	BANKSEL	_NowMode
	MOV	_NowMode, R0
	BANKSEL	_NowMode
	CLR	(_NowMode + 1)
;	::->op : EQ_OP
;	.line	231; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00134_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00134_DS_
;	::->op : =
;	.line	233; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : =
_00134_DS_
;	.line	237; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x02
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : EQ_OP
_00158_DS_
;	.line	240; "../Work.c"	else if(Tail_Status==1&&Stop_Status==0&&LOW_EN_Status==0)//位置高，制动低,低亮使能低
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00153_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_Stop_Status
	ORL	R0, _Stop_Status
	JB	PSW, 2
	JMP	_00153_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_LOW_EN_Status
	ORL	R0, _LOW_EN_Status
	JB	PSW, 2
	JMP	_00153_DS_
;	::->op : =
;	.line	242; "../Work.c"	PastMode = NowMode;NowMode = Mode3_Status;
	BANKSEL	_NowMode
	MOVZ	R0, _NowMode
	BANKSEL	_PastMode
	MOV	_PastMode, R0
	BANKSEL	_NowMode
	MOVZ	R0, (_NowMode + 1)
	BANKSEL	_PastMode
	MOV	(_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x04
	BANKSEL	_NowMode
	MOV	_NowMode, R0
	BANKSEL	_NowMode
	CLR	(_NowMode + 1)
;	::->op : EQ_OP
;	.line	243; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00137_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00137_DS_
;	::->op : =
;	.line	245; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : =
_00137_DS_
;	.line	249; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x04
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : IFX
_00153_DS_
;	.line	252; "../Work.c"	else if(Tail_Status==0&&Stop_Status==1)//位置低，制动高
	MOV	R0,# 0x00
	BANKSEL	_Tail_Status
	ORL	R0, _Tail_Status
	JB	PSW, 2
	JMP	_00149_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00149_DS_
;	::->op : =
;	.line	254; "../Work.c"	PastMode = NowMode;NowMode = Mode4_Status;
	BANKSEL	_NowMode
	MOVZ	R0, _NowMode
	BANKSEL	_PastMode
	MOV	_PastMode, R0
	BANKSEL	_NowMode
	MOVZ	R0, (_NowMode + 1)
	BANKSEL	_PastMode
	MOV	(_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x08
	BANKSEL	_NowMode
	MOV	_NowMode, R0
	BANKSEL	_NowMode
	CLR	(_NowMode + 1)
;	::->op : EQ_OP
;	.line	255; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00140_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00140_DS_
;	::->op : =
;	.line	257; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : =
_00140_DS_
;	.line	261; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x08
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : EQ_OP
_00149_DS_
;	.line	264; "../Work.c"	else if(Tail_Status==1&&Stop_Status==1)//位置高，制动高
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00164_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00164_DS_
;	::->op : =
;	.line	266; "../Work.c"	PastMode = NowMode;NowMode = Mode5_Status;
	BANKSEL	_NowMode
	MOVZ	R0, _NowMode
	BANKSEL	_PastMode
	MOV	_PastMode, R0
	BANKSEL	_NowMode
	MOVZ	R0, (_NowMode + 1)
	BANKSEL	_PastMode
	MOV	(_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x10
	BANKSEL	_NowMode
	MOV	_NowMode, R0
	BANKSEL	_NowMode
	CLR	(_NowMode + 1)
;	::->op : EQ_OP
;	.line	267; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x10
	JB	PSW, 2
	JMP	_00143_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00143_DS_
;	::->op : =
;	.line	269; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00164_DS_
;	::->op : LABEL
;	::->op : =
_00143_DS_
;	.line	273; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x10
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : CALL
_00164_DS_
;	.line	276; "../Work.c"	Mode_Act();
	TRAPPC1	_Mode_Act
	TRAPPC2	_Mode_Act
	PAGESEL	_Mode_Act
	CALL	_Mode_Act
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Tail_Stop_Check_Input



func._RT_Mode_Act	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _RT_Mode_Act	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Led_RT_AllClose
;   _Led_RT_AllOpen
;   _Led_RT_PWMOpen
;   _Led_RT_Water100
;   _Led_RT_Water55
;   _Led_RT_AllClose
;   _Led_RT_AllOpen
;   _Led_RT_PWMOpen
;   _Led_RT_Water100
;   _Led_RT_Water55
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_RT_Mode_Act	;Function start
; 2 exit points
;	::->op : EQ_OP
;	.line	186; "../Work.c"	switch(RT_ActMode)
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00125_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00111_DS_
_00125_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00126_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00112_DS_
_00126_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00127_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00113_DS_
_00127_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00128_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00114_DS_
_00128_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x10
	JB	PSW, 2
	JMP	_00129_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00115_DS_
_00129_DS_
	JMP	_00118_DS_
_00111_DS_
;	.line	189; "../Work.c"	Led_RT_AllClose();		//关灯
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	190; "../Work.c"	break;
	JMP	_00118_DS_
;	::->op : LABEL
;	::->op : CALL
_00112_DS_
;	.line	192; "../Work.c"	Led_RT_AllOpen();		//100%全亮
	TRAPPC1	_Led_RT_AllOpen
	TRAPPC2	_Led_RT_AllOpen
	PAGESEL	_Led_RT_AllOpen
	CALL	_Led_RT_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	193; "../Work.c"	break;
	JMP	_00118_DS_
;	::->op : LABEL
;	::->op : CALL
_00113_DS_
;	.line	195; "../Work.c"	Led_RT_PWMOpen();		//55%全亮
	TRAPPC1	_Led_RT_PWMOpen
	TRAPPC2	_Led_RT_PWMOpen
	PAGESEL	_Led_RT_PWMOpen
	CALL	_Led_RT_PWMOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	196; "../Work.c"	break;
	JMP	_00118_DS_
;	::->op : LABEL
;	::->op : =
_00114_DS_
;	.line	198; "../Work.c"	RT_WATER_FULL = 1;
	MOV	R0,# 0x01
	BANKSEL	_RT_WATER_FULL
	MOV	_RT_WATER_FULL, R0
	BANKSEL	_RT_WATER_FULL
	CLR	(_RT_WATER_FULL + 1)
;	::->op : CALL
;	.line	199; "../Work.c"	Led_RT_Water100();		//100%流水
	TRAPPC1	_Led_RT_Water100
	TRAPPC2	_Led_RT_Water100
	PAGESEL	_Led_RT_Water100
	CALL	_Led_RT_Water100
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	201; "../Work.c"	break;
	JMP	_00118_DS_
;	::->op : LABEL
;	::->op : =
_00115_DS_
;	.line	203; "../Work.c"	RT_WATER_FULL = 0;
	BANKSEL	_RT_WATER_FULL
	CLR	_RT_WATER_FULL
	BANKSEL	_RT_WATER_FULL
	CLR	(_RT_WATER_FULL + 1)
;	::->op : CALL
;	.line	204; "../Work.c"	Led_RT_Water55();		//55%流水
	TRAPPC1	_Led_RT_Water55
	TRAPPC2	_Led_RT_Water55
	PAGESEL	_Led_RT_Water55
	CALL	_Led_RT_Water55
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00118_DS_
;	.line	208; "../Work.c"	}
	CRET	
; exit point of _RT_Mode_Act



func._RT_Water_Act	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _RT_Water_Act	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1030
;   r0x1031
;   r0x1032
;   r0x1033
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_RT_Water_Act	;Function start
; 2 exit points
;	::->op : IFX
;	.line	162; "../Work.c"	if(RT_Water_Flag)
	BANKSEL	_RT_Water_Flag
	MOVZ	R0, _RT_Water_Flag
	BANKSEL	_RT_Water_Flag
	ORL	R0, (_RT_Water_Flag + 1)
	JNB	PSW, 2
	JMP	_00099_DS_
;	::->op : +
;	.line	164; "../Work.c"	RT_CNT++;
	BANKSEL	_RT_CNT
	INC	_RT_CNT
	JB	PSW, 2
	JMP	_00309_DS_
	BANKSEL	_RT_CNT
	INC	(_RT_CNT + 1)
_00309_DS_
	JB	PSW, 2
	JMP	_00310_DS_
	BANKSEL	_RT_CNT
	INC	(_RT_CNT + 2)
_00310_DS_
	JB	PSW, 2
	JMP	_00311_DS_
	BANKSEL	_RT_CNT
	INC	(_RT_CNT + 3)
;	::->op : =
_00311_DS_
;	.line	165; "../Work.c"	switch(RT_CNT)
	BANKSEL	_RT_CNT
	MOVZ	R0, _RT_CNT
	BANKSEL	r0x1030
	MOV	r0x1030, R0
	BANKSEL	_RT_CNT
	MOVZ	R0, (_RT_CNT + 1)
	BANKSEL	r0x1031
	MOV	r0x1031, R0
	BANKSEL	_RT_CNT
	MOVZ	R0, (_RT_CNT + 2)
	BANKSEL	r0x1032
	MOV	r0x1032, R0
	BANKSEL	_RT_CNT
	MOVZ	R0, (_RT_CNT + 3)
	BANKSEL	r0x1033
	MOV	r0x1033, R0
;	::->op : EQ_OP
	BANKSEL	r0x1030
	MOVZ	R0, r0x1030
	XOR	R0,# 0xf4
	JB	PSW, 2
	JMP	_00108_DS_
	BANKSEL	r0x1031
	MOVZ	R0, r0x1031
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00108_DS_
	BANKSEL	r0x1032
	MOVZ	R0, r0x1032
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00108_DS_
	BANKSEL	r0x1033
	MOVZ	R0, r0x1033
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00083_DS_
_00108_DS_
	BANKSEL	r0x1030
	MOVZ	R0, r0x1030
	XOR	R0,# 0xe8
	JB	PSW, 2
	JMP	_00109_DS_
	BANKSEL	r0x1031
	MOVZ	R0, r0x1031
	XOR	R0,# 0x03
	JB	PSW, 2
	JMP	_00109_DS_
	BANKSEL	r0x1032
	MOVZ	R0, r0x1032
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00109_DS_
	BANKSEL	r0x1033
	MOVZ	R0, r0x1033
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00087_DS_
_00109_DS_
	BANKSEL	r0x1030
	MOVZ	R0, r0x1030
	XOR	R0,# 0xdc
	JB	PSW, 2
	JMP	_00110_DS_
	BANKSEL	r0x1031
	MOVZ	R0, r0x1031
	XOR	R0,# 0x05
	JB	PSW, 2
	JMP	_00110_DS_
	BANKSEL	r0x1032
	MOVZ	R0, r0x1032
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00110_DS_
	BANKSEL	r0x1033
	MOVZ	R0, r0x1033
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00091_DS_
_00110_DS_
	JMP	_00099_DS_
_00083_DS_
;	.line	168; "../Work.c"	RT_High_Addr=1;
	MOV	R0,# 0x01
	BANKSEL	_RT_High_Addr
	MOV	_RT_High_Addr, R0
	BANKSEL	_RT_High_Addr
	CLR	(_RT_High_Addr + 1)
;	::->op : IFX
;	.line	169; "../Work.c"	if(RT_WATER_FULL==0)RT_Low_Addr=1;else RT_Low_Addr=0;
	BANKSEL	_RT_WATER_FULL
	MOVZ	R0, _RT_WATER_FULL
	BANKSEL	_RT_WATER_FULL
	ORL	R0, (_RT_WATER_FULL + 1)
	JB	PSW, 2
	JMP	_00085_DS_
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_RT_Low_Addr
	MOV	_RT_Low_Addr, R0
	BANKSEL	_RT_Low_Addr
	CLR	(_RT_Low_Addr + 1)
;	::->op : GOTO
	JMP	_00099_DS_
;	::->op : LABEL
;	::->op : =
_00085_DS_
	BANKSEL	_RT_Low_Addr
	CLR	_RT_Low_Addr
	BANKSEL	_RT_Low_Addr
	CLR	(_RT_Low_Addr + 1)
;	::->op : GOTO
;	.line	170; "../Work.c"	break;
	JMP	_00099_DS_
;	::->op : LABEL
;	::->op : =
_00087_DS_
;	.line	172; "../Work.c"	RT_High_Addr=3;
	MOV	R0,# 0x03
	BANKSEL	_RT_High_Addr
	MOV	_RT_High_Addr, R0
	BANKSEL	_RT_High_Addr
	CLR	(_RT_High_Addr + 1)
;	::->op : IFX
;	.line	173; "../Work.c"	if(RT_WATER_FULL==0)RT_Low_Addr=3;else RT_Low_Addr=0;
	BANKSEL	_RT_WATER_FULL
	MOVZ	R0, _RT_WATER_FULL
	BANKSEL	_RT_WATER_FULL
	ORL	R0, (_RT_WATER_FULL + 1)
	JB	PSW, 2
	JMP	_00089_DS_
;	::->op : =
	MOV	R0,# 0x03
	BANKSEL	_RT_Low_Addr
	MOV	_RT_Low_Addr, R0
	BANKSEL	_RT_Low_Addr
	CLR	(_RT_Low_Addr + 1)
;	::->op : GOTO
	JMP	_00099_DS_
;	::->op : LABEL
;	::->op : =
_00089_DS_
	BANKSEL	_RT_Low_Addr
	CLR	_RT_Low_Addr
	BANKSEL	_RT_Low_Addr
	CLR	(_RT_Low_Addr + 1)
;	::->op : GOTO
;	.line	174; "../Work.c"	break;
	JMP	_00099_DS_
;	::->op : LABEL
;	::->op : =
_00091_DS_
;	.line	176; "../Work.c"	RT_High_Addr=7;
	MOV	R0,# 0x07
	BANKSEL	_RT_High_Addr
	MOV	_RT_High_Addr, R0
	BANKSEL	_RT_High_Addr
	CLR	(_RT_High_Addr + 1)
;	::->op : IFX
;	.line	177; "../Work.c"	if(RT_WATER_FULL==0)RT_Low_Addr=7;else RT_Low_Addr=0;
	BANKSEL	_RT_WATER_FULL
	MOVZ	R0, _RT_WATER_FULL
	BANKSEL	_RT_WATER_FULL
	ORL	R0, (_RT_WATER_FULL + 1)
	JB	PSW, 2
	JMP	_00093_DS_
;	::->op : =
	MOV	R0,# 0x07
	BANKSEL	_RT_Low_Addr
	MOV	_RT_Low_Addr, R0
	BANKSEL	_RT_Low_Addr
	CLR	(_RT_Low_Addr + 1)
;	::->op : GOTO
	JMP	_00094_DS_
;	::->op : LABEL
;	::->op : =
_00093_DS_
	BANKSEL	_RT_Low_Addr
	CLR	_RT_Low_Addr
	BANKSEL	_RT_Low_Addr
	CLR	(_RT_Low_Addr + 1)
;	::->op : LABEL
;	::->op : =
_00094_DS_
;	.line	178; "../Work.c"	RT_Water_Flag=0;
	BANKSEL	_RT_Water_Flag
	CLR	_RT_Water_Flag
	BANKSEL	_RT_Water_Flag
	CLR	(_RT_Water_Flag + 1)
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00099_DS_
;	.line	181; "../Work.c"	}
	CRET	
; exit point of _RT_Water_Act



func._RT_Check_Input	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _RT_Check_Input	;Function start
; 2 exit points
;has an exit
;functions called:
;   _RT_Mode_Act
;   _RT_Water_Act
;   _RT_Mode_Act
;   _RT_Water_Act
;2 compiler assigned registers:
;   r0x1034
;   r0x1035
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_RT_Check_Input	;Function start
; 2 exit points
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	93; "../Work.c"	RT_Status = RT;
	BANKSEL	r0x1034
	CLR	r0x1034
	BANKSEL	_PA_bits
	JB	_PA_bits, 0
	JMP	_00312_DS_
	BANKSEL	r0x1034
	INC	r0x1034
;	::->op : =
_00312_DS_
	BANKSEL	r0x1034
	MOVZ	R0, r0x1034
	BANKSEL	_RT_Status
	MOV	_RT_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	94; "../Work.c"	RT_EN_Status = RT_EN;
	BANKSEL	r0x1034
	CLR	r0x1034
	BANKSEL	_P5_bits
	JB	_P5_bits, 1
	JMP	_00313_DS_
	BANKSEL	r0x1034
	INC	r0x1034
;	::->op : =
_00313_DS_
	BANKSEL	r0x1034
	MOVZ	R0, r0x1034
	BANKSEL	_RT_EN_Status
	MOV	_RT_EN_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	95; "../Work.c"	LOW_EN_Status = Open_EN;
	BANKSEL	r0x1034
	CLR	r0x1034
	BANKSEL	_P1_bits
	JB	_P1_bits, 0
	JMP	_00314_DS_
	BANKSEL	r0x1034
	INC	r0x1034
;	::->op : =
_00314_DS_
	BANKSEL	r0x1034
	MOVZ	R0, r0x1034
	BANKSEL	_LOW_EN_Status
	MOV	_LOW_EN_Status, R0
;	::->op : IFX
;	.line	97; "../Work.c"	if(RT_Status==0)		//转向低关灯
	MOV	R0,# 0x00
	BANKSEL	_RT_Status
	ORL	R0, _RT_Status
	JB	PSW, 2
	JMP	_00061_DS_
;	::->op : =
;	.line	99; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode1_Status;
	BANKSEL	_RT_NowMode
	MOVZ	R0, _RT_NowMode
	BANKSEL	_RT_PastMode
	MOV	_RT_PastMode, R0
	BANKSEL	_RT_NowMode
	MOVZ	R0, (_RT_NowMode + 1)
	BANKSEL	_RT_PastMode
	MOV	(_RT_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_RT_NowMode
	MOV	_RT_NowMode, R0
	BANKSEL	_RT_NowMode
	CLR	(_RT_NowMode + 1)
;	::->op : EQ_OP
;	.line	100; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00027_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00027_DS_
;	::->op : =
;	.line	102; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : =
_00027_DS_
;	.line	106; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x01
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : EQ_OP
_00061_DS_
;	.line	109; "../Work.c"	else if(RT_Status==1&&RT_EN_Status==1&&Open_EN==0)		//转向高，转向使能高，低亮使能低,100%全亮
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00056_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_EN_Status
	MOVZ	R0, _RT_EN_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00056_DS_
;	::->op : GET_VALUE_AT_ADDRESS
	BANKSEL	_P1_bits
	JNB	_P1_bits, 0
	JMP	_00056_DS_
;	::->op : =
;	.line	111; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode2_Status;
	BANKSEL	_RT_NowMode
	MOVZ	R0, _RT_NowMode
	BANKSEL	_RT_PastMode
	MOV	_RT_PastMode, R0
	BANKSEL	_RT_NowMode
	MOVZ	R0, (_RT_NowMode + 1)
	BANKSEL	_RT_PastMode
	MOV	(_RT_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x02
	BANKSEL	_RT_NowMode
	MOV	_RT_NowMode, R0
	BANKSEL	_RT_NowMode
	CLR	(_RT_NowMode + 1)
;	::->op : EQ_OP
;	.line	112; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00030_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00030_DS_
;	::->op : =
;	.line	114; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : =
_00030_DS_
;	.line	118; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x02
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : EQ_OP
_00056_DS_
;	.line	121; "../Work.c"	else if(RT_Status==1&&RT_EN_Status==1&&Open_EN==1)		//转向高，转向使能高，低亮使能高,55%全亮
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00051_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_EN_Status
	MOVZ	R0, _RT_EN_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00051_DS_
;	::->op : GET_VALUE_AT_ADDRESS
;	::->op : CAST
	MOV	R0,# 0x00
	BANKSEL	_P1_bits
	JNB	_P1_bits, 0
	MOV	R0,# 0x01
	BANKSEL	r0x1035
	MOV	r0x1035, R0
;	::->op : EQ_OP
	BANKSEL	r0x1035
	MOVZ	R0, r0x1035
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00051_DS_
;	::->op : =
;	.line	123; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode3_Status;
	BANKSEL	_RT_NowMode
	MOVZ	R0, _RT_NowMode
	BANKSEL	_RT_PastMode
	MOV	_RT_PastMode, R0
	BANKSEL	_RT_NowMode
	MOVZ	R0, (_RT_NowMode + 1)
	BANKSEL	_RT_PastMode
	MOV	(_RT_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x04
	BANKSEL	_RT_NowMode
	MOV	_RT_NowMode, R0
	BANKSEL	_RT_NowMode
	CLR	(_RT_NowMode + 1)
;	::->op : EQ_OP
;	.line	124; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00033_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00033_DS_
;	::->op : =
;	.line	126; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : =
_00033_DS_
;	.line	130; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x04
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : EQ_OP
_00051_DS_
;	.line	133; "../Work.c"	else if(RT_Status==1&&RT_EN_Status==0&&Open_EN==0)		//转向高，转向使能低，低亮使能低,100%流水
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00046_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_RT_EN_Status
	ORL	R0, _RT_EN_Status
	JB	PSW, 2
	JMP	_00046_DS_
;	::->op : GET_VALUE_AT_ADDRESS
	BANKSEL	_P1_bits
	JNB	_P1_bits, 0
	JMP	_00046_DS_
;	::->op : =
;	.line	135; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode4_Status;
	BANKSEL	_RT_NowMode
	MOVZ	R0, _RT_NowMode
	BANKSEL	_RT_PastMode
	MOV	_RT_PastMode, R0
	BANKSEL	_RT_NowMode
	MOVZ	R0, (_RT_NowMode + 1)
	BANKSEL	_RT_PastMode
	MOV	(_RT_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x08
	BANKSEL	_RT_NowMode
	MOV	_RT_NowMode, R0
	BANKSEL	_RT_NowMode
	CLR	(_RT_NowMode + 1)
;	::->op : EQ_OP
;	.line	136; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00036_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00036_DS_
;	::->op : =
;	.line	138; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : =
_00036_DS_
;	.line	142; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x08
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : EQ_OP
_00046_DS_
;	.line	145; "../Work.c"	else if(RT_Status==1&&RT_EN_Status==0&&Open_EN==1)		//转向高，转向使能低，低亮使能高,55%流水
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00062_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_RT_EN_Status
	ORL	R0, _RT_EN_Status
	JB	PSW, 2
	JMP	_00062_DS_
;	::->op : GET_VALUE_AT_ADDRESS
;	::->op : CAST
	MOV	R0,# 0x00
	BANKSEL	_P1_bits
	JNB	_P1_bits, 0
	MOV	R0,# 0x01
	BANKSEL	r0x1035
	MOV	r0x1035, R0
;	::->op : EQ_OP
	BANKSEL	r0x1035
	MOVZ	R0, r0x1035
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00062_DS_
;	::->op : =
;	.line	147; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode5_Status;
	BANKSEL	_RT_NowMode
	MOVZ	R0, _RT_NowMode
	BANKSEL	_RT_PastMode
	MOV	_RT_PastMode, R0
	BANKSEL	_RT_NowMode
	MOVZ	R0, (_RT_NowMode + 1)
	BANKSEL	_RT_PastMode
	MOV	(_RT_PastMode + 1), R0
;	::->op : =
	MOV	R0,# 0x10
	BANKSEL	_RT_NowMode
	MOV	_RT_NowMode, R0
	BANKSEL	_RT_NowMode
	CLR	(_RT_NowMode + 1)
;	::->op : EQ_OP
;	.line	148; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x10
	JB	PSW, 2
	JMP	_00039_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00039_DS_
;	::->op : =
;	.line	150; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00062_DS_
;	::->op : LABEL
;	::->op : =
_00039_DS_
;	.line	154; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x10
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : LABEL
;	::->op : CALL
_00062_DS_
;	.line	157; "../Work.c"	RT_Mode_Act();
	TRAPPC1	_RT_Mode_Act
	TRAPPC2	_RT_Mode_Act
	PAGESEL	_RT_Mode_Act
	CALL	_RT_Mode_Act
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	158; "../Work.c"	RT_Water_Act();
	TRAPPC1	_RT_Water_Act
	TRAPPC2	_RT_Water_Act
	PAGESEL	_RT_Water_Act
	CALL	_RT_Water_Act
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _RT_Check_Input



func._delay_us	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _delay_us	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1036
;   STK00
;   r0x1037
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_delay_us	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	86; "../Work.c"	void delay_us(uint16 num)
	BANKSEL	r0x1036
	MOV	r0x1036, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x1037
	MOV	r0x1037, R0
;	::->op : =
;	.line	89; "../Work.c"	for(i=0;i<num;i++);
	BANKSEL	_delay_us_i_1_1
	CLR	_delay_us_i_1_1
	BANKSEL	_delay_us_i_1_1
	CLR	(_delay_us_i_1_1 + 1)
;	::->op : LABEL
;	::->op : <
_00017_DS_
	BANKSEL	r0x1036
	MOVZ	R0, r0x1036
	BANKSEL	_delay_us_i_1_1
	SUB	R0, (_delay_us_i_1_1 + 1)
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00025_DS_
	BANKSEL	r0x1037
	MOVZ	R0, r0x1037
	BANKSEL	_delay_us_i_1_1
	SUB	R0, _delay_us_i_1_1
_00025_DS_
	JNB	PSW, 0
	JMP	_00021_DS_
;	::->op : +
	BANKSEL	_delay_us_i_1_1
	INC	_delay_us_i_1_1
	JB	PSW, 2
	JMP	_00315_DS_
	BANKSEL	_delay_us_i_1_1
	INC	(_delay_us_i_1_1 + 1)
;	::->op : GOTO
_00315_DS_
	JMP	_00017_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00021_DS_
	CRET	
; exit point of _delay_us



func._delay_ms	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _delay_ms	;Function start
; 2 exit points
;has an exit
;5 compiler assigned registers:
;   r0x102A
;   STK00
;   r0x102B
;   r0x102C
;   r0x102D
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_delay_ms	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	77; "../Work.c"	void delay_ms(uint16 num)
	BANKSEL	r0x102A
	MOV	r0x102A, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x102B
	MOV	r0x102B, R0
;	::->op : =
;	.line	80; "../Work.c"	for(i=0;i<num;i++)
	BANKSEL	_delay_ms_i_1_1
	CLR	_delay_ms_i_1_1
	BANKSEL	_delay_ms_i_1_1
	CLR	(_delay_ms_i_1_1 + 1)
;	::->op : LABEL
;	::->op : <
_00006_DS_
	BANKSEL	r0x102A
	MOVZ	R0, r0x102A
	BANKSEL	_delay_ms_i_1_1
	SUB	R0, (_delay_ms_i_1_1 + 1)
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00016_DS_
	BANKSEL	r0x102B
	MOVZ	R0, r0x102B
	BANKSEL	_delay_ms_i_1_1
	SUB	R0, _delay_ms_i_1_1
_00016_DS_
	JNB	PSW, 0
	JMP	_00010_DS_
;	::->op : =
;	.line	82; "../Work.c"	j=250;
	MOV	R0,# 0xfa
	BANKSEL	_delay_ms_j_1_1
	MOV	_delay_ms_j_1_1, R0
	BANKSEL	_delay_ms_j_1_1
	CLR	(_delay_ms_j_1_1 + 1)
;	::->op : LABEL
;	::->op : =
_00003_DS_
;	.line	83; "../Work.c"	while(j--);
	BANKSEL	_delay_ms_j_1_1
	MOVZ	R0, _delay_ms_j_1_1
	BANKSEL	r0x102C
	MOV	r0x102C, R0
	BANKSEL	_delay_ms_j_1_1
	MOVZ	R0, (_delay_ms_j_1_1 + 1)
	BANKSEL	r0x102D
	MOV	r0x102D, R0
;	::->op : -
	MOV	R0,# 0xff
	BANKSEL	_delay_ms_j_1_1
	ADD	_delay_ms_j_1_1, R0
	JNB	PSW, 0
	JMP	_00316_DS_
	BANKSEL	_delay_ms_j_1_1
	DEC	(_delay_ms_j_1_1 + 1)
;	::->op : IFX
_00316_DS_
	BANKSEL	r0x102C
	MOVZ	R0, r0x102C
	BANKSEL	r0x102D
	ORL	R0, r0x102D
	JB	PSW, 2
	JMP	_00003_DS_
;	::->op : +
;	.line	80; "../Work.c"	for(i=0;i<num;i++)
	BANKSEL	_delay_ms_i_1_1
	INC	_delay_ms_i_1_1
	JB	PSW, 2
	JMP	_00317_DS_
	BANKSEL	_delay_ms_i_1_1
	INC	(_delay_ms_i_1_1 + 1)
;	::->op : GOTO
_00317_DS_
	JMP	_00006_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00010_DS_
	CRET	
; exit point of _delay_ms



func._Init_IO	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Init_IO	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Init_IO	;Function start
; 2 exit points
;	::->op : =
;	.line	30; "../Work.c"	TR0 =0xFF;//仿真口设置为输入
	MOV	R0,# 0xff
	BANKSEL	_TR0
	MOV	_TR0, R0
;	::->op : =
;	.line	31; "../Work.c"	ANS0 =0;
	BANKSEL	_ANS0
	CLR	_ANS0
;	::->op : =
;	.line	33; "../Work.c"	TR1=0x03;
	MOV	R0,# 0x03
	BANKSEL	_TR1
	MOV	_TR1, R0
;	::->op : =
;	.line	34; "../Work.c"	ANS1=0;
	BANKSEL	_ANS1
	CLR	_ANS1
;	::->op : =
;	.line	35; "../Work.c"	P1LR=0;
	BANKSEL	_P1LR
	CLR	_P1LR
;	::->op :*  =
;	.line	36; "../Work.c"	PUR10=1;
	BANKSEL	_PUR1_bits
	SET	_PUR1_bits, 0
;	::->op : =
;	.line	38; "../Work.c"	TR2=0;
	BANKSEL	_TR2
	CLR	_TR2
;	::->op : =
;	.line	39; "../Work.c"	ANS2=0;
	BANKSEL	_ANS2
	CLR	_ANS2
;	::->op : =
;	.line	40; "../Work.c"	P2LR=0;
	BANKSEL	_P2LR
	CLR	_P2LR
;	::->op : =
;	.line	42; "../Work.c"	TR3=0;
	BANKSEL	_TR3
	CLR	_TR3
;	::->op : =
;	.line	43; "../Work.c"	ANS3=0;
	BANKSEL	_ANS3
	CLR	_ANS3
;	::->op : =
;	.line	44; "../Work.c"	P3LR=0;
	BANKSEL	_P3LR
	CLR	_P3LR
;	::->op : =
;	.line	46; "../Work.c"	TR4=0X10; //lin_rxd设置为输入、lin_txd设置为输出
	MOV	R0,# 0x10
	BANKSEL	_TR4
	MOV	_TR4, R0
;	::->op : =
;	.line	47; "../Work.c"	ANS4=0;
	BANKSEL	_ANS4
	CLR	_ANS4
;	::->op : =
;	.line	48; "../Work.c"	P4LR=0;
	BANKSEL	_P4LR
	CLR	_P4LR
;	::->op : =
;	.line	50; "../Work.c"	TR5=0x02;
	MOV	R0,# 0x02
	BANKSEL	_TR5
	MOV	_TR5, R0
;	::->op : =
;	.line	51; "../Work.c"	ANS5=0;
	BANKSEL	_ANS5
	CLR	_ANS5
;	::->op : =
;	.line	52; "../Work.c"	P5LR=0;
	BANKSEL	_P5LR
	CLR	_P5LR
;	::->op :*  =
;	.line	53; "../Work.c"	PUR51=1;
	BANKSEL	_PUR5_bits
	SET	_PUR5_bits, 1
;	::->op : =
;	.line	55; "../Work.c"	TR6=0;//按键检测口也设置为输入
	BANKSEL	_TR6
	CLR	_TR6
;	::->op : =
;	.line	56; "../Work.c"	ANS6=0;
	BANKSEL	_ANS6
	CLR	_ANS6
;	::->op : =
;	.line	57; "../Work.c"	P6LR=0;
	BANKSEL	_P6LR
	CLR	_P6LR
;	::->op : =
;	.line	59; "../Work.c"	TR7=0x06;
	MOV	R0,# 0x06
	BANKSEL	_TR7
	MOV	_TR7, R0
;	::->op : =
;	.line	60; "../Work.c"	ANS7=0;
	BANKSEL	_ANS7
	CLR	_ANS7
;	::->op : =
;	.line	61; "../Work.c"	P7LR=0;
	BANKSEL	_P7LR
	CLR	_P7LR
;	::->op : =
;	.line	62; "../Work.c"	PUR7=0;
	BANKSEL	_PUR7
	CLR	_PUR7
;	::->op : =
;	.line	64; "../Work.c"	TR9=0X0E;
	MOV	R0,# 0x0e
	BANKSEL	_TR9
	MOV	_TR9, R0
;	::->op : =
;	.line	65; "../Work.c"	ANS9=0;
	BANKSEL	_ANS9
	CLR	_ANS9
;	::->op : =
;	.line	66; "../Work.c"	P9LR=0;
	BANKSEL	_P9LR
	CLR	_P9LR
;	::->op : =
;	.line	68; "../Work.c"	TRA=0x01;
	MOV	R0,# 0x01
	BANKSEL	_TRA
	MOV	_TRA, R0
;	::->op : =
;	.line	69; "../Work.c"	ANSA=0;
	BANKSEL	_ANSA
	CLR	_ANSA
;	::->op : =
;	.line	70; "../Work.c"	PALR=0;
	BANKSEL	_PALR
	CLR	_PALR
;	::->op : =
;	.line	71; "../Work.c"	PURA=0;
	BANKSEL	_PURA
	CLR	_PURA
;	::->op : =
;	.line	73; "../Work.c"	TRB=0;
	BANKSEL	_TRB
	CLR	_TRB
;	::->op : =
;	.line	74; "../Work.c"	ANSB=0;
	BANKSEL	_ANSB
	CLR	_ANSB
;	::->op : =
;	.line	75; "../Work.c"	PBLR=0;
	BANKSEL	_PBLR
	CLR	_PBLR
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Init_IO


;	code size estimation:
;	 1212+  414 =  1626 instructions ( 4080 byte)


	.end
