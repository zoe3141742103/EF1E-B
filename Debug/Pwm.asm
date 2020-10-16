;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
	.file	"../Pwm.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_Timer0_Init
	.extern	_Timer1_Init
	.extern	_Timer2_Init
	.extern	_Timer3_Init
	.extern	_Timer5_Init
	.extern	_Timer8_Init
	.extern	_Timer10_Init
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
	.global	_PWM_Init
	.global	_PWM34_Init
	.global	_PWM5_Init
	.global	_PWM67_Init
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
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr


func._PWM_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _PWM_Init	;Function start
; 2 exit points
;has an exit
;functions called:
;   _PWM67_Init
;   _PWM67_Init
;; Starting PostCode block
	.def _PWM_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_PWM_Init	;Function start
; 2 exit points
;	::->op : CALL
	.line	126; "../Pwm.c"	PWM67_Init();
	TRAPPC1	_PWM67_Init
	TRAPPC2	_PWM67_Init
	PAGESEL	_PWM67_Init
	CALL	_PWM67_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _PWM_Init_function_end, debug, value=$

; exit point of _PWM_Init



func._PWM67_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _PWM67_Init	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
	.def _PWM67_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_PWM67_Init	;Function start
; 2 exit points
;	::->op : =
	.line	73; "../Pwm.c"	APFCTL2 = 0x64;
	MOV	R0,# 0x64
	BANKSEL	_APFCTL2
	MOV	_APFCTL2, R0
;	::->op :*  =
	.line	74; "../Pwm.c"	TR20 = 1;
	BANKSEL	_TR2_bits
	SET	_TR2_bits, 0
;	::->op :*  =
	.line	75; "../Pwm.c"	TR21 = 1;
	BANKSEL	_TR2_bits
	SET	_TR2_bits, 1
;	::->op :*  =
	.line	76; "../Pwm.c"	TR23 = 1;
	BANKSEL	_TR2_bits
	SET	_TR2_bits, 3
;	::->op :*  =
	.line	77; "../Pwm.c"	TR61 = 1;
	BANKSEL	_TR6_bits
	SET	_TR6_bits, 1
;	::->op :*  =
	.line	78; "../Pwm.c"	TR65 = 1;
	BANKSEL	_TR6_bits
	SET	_TR6_bits, 5
;	::->op :*  =
	.line	79; "../Pwm.c"	TR94 = 1;
	BANKSEL	_TR9_bits
	SET	_TR9_bits, 4
;	::->op : =
	.line	80; "../Pwm.c"	PWM6L0=1;	PWM6H0=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM6L0
	MOV	_PWM6L0, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM6H0
	MOV	_PWM6H0, R0
;	::->op : =
	.line	81; "../Pwm.c"	PWM6L1=1;	PWM6H1=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM6L1
	MOV	_PWM6L1, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM6H1
	MOV	_PWM6H1, R0
;	::->op : =
	.line	82; "../Pwm.c"	PWM6L0=1;	PWM6H2=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM6L0
	MOV	_PWM6L0, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM6H2
	MOV	_PWM6H2, R0
;	::->op : =
	.line	83; "../Pwm.c"	PWM6L3=1;	PWM6H3=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM6L3
	MOV	_PWM6L3, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM6H3
	MOV	_PWM6H3, R0
;	::->op : =
	.line	84; "../Pwm.c"	PWM7L0=1;	PWM7H0=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM7L0
	MOV	_PWM7L0, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM7H0
	MOV	_PWM7H0, R0
;	::->op : =
	.line	85; "../Pwm.c"	PWM7L1=1;	PWM7H1=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM7L1
	MOV	_PWM7L1, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM7H1
	MOV	_PWM7H1, R0
;	::->op : =
	.line	86; "../Pwm.c"	PWM7L2=1;	PWM7H2=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM7L2
	MOV	_PWM7L2, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM7H2
	MOV	_PWM7H2, R0
;	::->op : =
	.line	87; "../Pwm.c"	PWM7L3=1;	PWM7H3=10;
	MOV	R0,# 0x01
	BANKSEL	_PWM7L3
	MOV	_PWM7L3, R0
;	::->op : =
	MOV	R0,# 0x0a
	BANKSEL	_PWM7H3
	MOV	_PWM7H3, R0
;	::->op : =
	.line	88; "../Pwm.c"	PP60H=99;	PP60L=1;
	MOV	R0,# 0x63
	BANKSEL	_PP60H
	MOV	_PP60H, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PP60L
	MOV	_PP60L, R0
;	::->op : =
	.line	89; "../Pwm.c"	PP70H=99;	PP70L=1;
	MOV	R0,# 0x63
	BANKSEL	_PP70H
	MOV	_PP70H, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PP70L
	MOV	_PP70L, R0
;	::->op : =
	.line	90; "../Pwm.c"	PP61H=99;	PP61L=1;
	MOV	R0,# 0x63
	BANKSEL	_PP61H
	MOV	_PP61H, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PP61L
	MOV	_PP61L, R0
;	::->op : =
	.line	91; "../Pwm.c"	PP71H=99;	PP71L=1;
	MOV	R0,# 0x63
	BANKSEL	_PP71H
	MOV	_PP71H, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PP71L
	MOV	_PP71L, R0
;	::->op : =
	.line	92; "../Pwm.c"	PWM6CTL0 = 0xC;
	MOV	R0,# 0x0c
	BANKSEL	_PWM6CTL0
	MOV	_PWM6CTL0, R0
;	::->op : =
	.line	93; "../Pwm.c"	PWM7CTL0 = 0xC;
	MOV	R0,# 0x0c
	BANKSEL	_PWM7CTL0
	MOV	_PWM7CTL0, R0
;	::->op : =
	.line	94; "../Pwm.c"	T2CTL0 = 0x00;
	BANKSEL	_T2CTL0
	CLR	_T2CTL0
;	::->op : =
	.line	95; "../Pwm.c"	T2CTL1 = T2CLK_SEL_HFCLK|T2CLK_Prescale2_DIV_1;
	MOV	R0,# 0x04
	BANKSEL	_T2CTL1
	MOV	_T2CTL1, R0
;	::->op : =
	.line	96; "../Pwm.c"	T4CTL0 = 0x00;
	BANKSEL	_T4CTL0
	CLR	_T4CTL0
;	::->op : =
	.line	97; "../Pwm.c"	T4CTL1 = T2CLK_SEL_HFCLK|T2CLK_Prescale2_DIV_1;
	MOV	R0,# 0x04
	BANKSEL	_T4CTL1
	MOV	_T4CTL1, R0
;	::->op : =
	.line	98; "../Pwm.c"	T5CTL0 = 0x00;
	BANKSEL	_T5CTL0
	CLR	_T5CTL0
;	::->op : =
	.line	99; "../Pwm.c"	T5CTL1 = T5CLK_SEL_HFCLK|T5CLK_Prescale2_DIV_1;
	MOV	R0,# 0x04
	BANKSEL	_T5CTL1
	MOV	_T5CTL1, R0
;	::->op : =
	.line	100; "../Pwm.c"	T6CTL0 = 0x00;
	BANKSEL	_T6CTL0
	CLR	_T6CTL0
;	::->op : =
	.line	101; "../Pwm.c"	T6CTL1 = T5CLK_SEL_HFCLK|T5CLK_Prescale2_DIV_1;
	MOV	R0,# 0x04
	BANKSEL	_T6CTL1
	MOV	_T6CTL1, R0
;	::->op : =
	.line	102; "../Pwm.c"	T2H = 0;
	BANKSEL	_T2H
	CLR	_T2H
;	::->op : =
	.line	103; "../Pwm.c"	T2L = 0;
	BANKSEL	_T2L
	CLR	_T2L
;	::->op : =
	.line	104; "../Pwm.c"	T5H = 0;
	BANKSEL	_T5H
	CLR	_T5H
;	::->op : =
	.line	105; "../Pwm.c"	T5L = 0;
	BANKSEL	_T5L
	CLR	_T5L
;	::->op : =
	.line	106; "../Pwm.c"	T4H = 0;
	BANKSEL	_T4H
	CLR	_T4H
;	::->op : =
	.line	107; "../Pwm.c"	T4L = 0;
	BANKSEL	_T4L
	CLR	_T4L
;	::->op : =
	.line	108; "../Pwm.c"	T6H = 0;
	BANKSEL	_T6H
	CLR	_T6H
;	::->op : =
	.line	109; "../Pwm.c"	T6L = 0;
	BANKSEL	_T6L
	CLR	_T6L
;	::->op :*  =
	.line	110; "../Pwm.c"	T2ON = 1;
	BANKSEL	_T2CTL0_bits
	SET	_T2CTL0_bits, 2
;	::->op :*  =
	.line	111; "../Pwm.c"	T5ON = 1;
	BANKSEL	_T5CTL0_bits
	SET	_T5CTL0_bits, 2
;	::->op :*  =
	.line	112; "../Pwm.c"	T4ON = 1;
	BANKSEL	_T4CTL0_bits
	SET	_T4CTL0_bits, 2
;	::->op :*  =
	.line	113; "../Pwm.c"	T6ON = 1;
	BANKSEL	_T6CTL0_bits
	SET	_T6CTL0_bits, 2
;	::->op :*  =
	.line	115; "../Pwm.c"	TR20 = 0;
	BANKSEL	_TR2_bits
	CLR	_TR2_bits, 0
;	::->op :*  =
	.line	116; "../Pwm.c"	TR21 = 0;
	BANKSEL	_TR2_bits
	CLR	_TR2_bits, 1
;	::->op :*  =
	.line	117; "../Pwm.c"	TR23 = 0;
	BANKSEL	_TR2_bits
	CLR	_TR2_bits, 3
;	::->op :*  =
	.line	118; "../Pwm.c"	TR61 = 0;
	BANKSEL	_TR6_bits
	CLR	_TR6_bits, 1
;	::->op :*  =
	.line	119; "../Pwm.c"	TR65 = 0;
	BANKSEL	_TR6_bits
	CLR	_TR6_bits, 5
;	::->op :*  =
	.line	120; "../Pwm.c"	TR94 = 0;
	BANKSEL	_TR9_bits
	CLR	_TR9_bits, 4
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _PWM67_Init_function_end, debug, value=$

; exit point of _PWM67_Init



func._PWM5_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _PWM5_Init	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
	.def _PWM5_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_PWM5_Init	;Function start
; 2 exit points
;	::->op : =
	.line	49; "../Pwm.c"	APFCTL5 = 0xE0;
	MOV	R0,# 0xe0
	BANKSEL	_APFCTL5
	MOV	_APFCTL5, R0
;	::->op :*  =
	.line	50; "../Pwm.c"	TR24 = 1;
	BANKSEL	_TR2_bits
	SET	_TR2_bits, 4
;	::->op :*  =
	.line	51; "../Pwm.c"	TR66 = 1;
	BANKSEL	_TR6_bits
	SET	_TR6_bits, 6
;	::->op :*  =
	.line	52; "../Pwm.c"	TR45 = 1;
	BANKSEL	_TR4_bits
	SET	_TR4_bits, 5
;	::->op : =
	.line	53; "../Pwm.c"	PWM5L0=1;	PWM5H0=1;
	MOV	R0,# 0x01
	BANKSEL	_PWM5L0
	MOV	_PWM5L0, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PWM5H0
	MOV	_PWM5H0, R0
;	::->op : =
	.line	54; "../Pwm.c"	PWM5L1=1;	PWM5H1=1;
	MOV	R0,# 0x01
	BANKSEL	_PWM5L1
	MOV	_PWM5L1, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PWM5H1
	MOV	_PWM5H1, R0
;	::->op : =
	.line	55; "../Pwm.c"	PWM5L2=1;	PWM5H2=1;
	MOV	R0,# 0x01
	BANKSEL	_PWM5L2
	MOV	_PWM5L2, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PWM5H2
	MOV	_PWM5H2, R0
;	::->op : =
	.line	56; "../Pwm.c"	PP5H=99;	PP5L=1;
	MOV	R0,# 0x63
	BANKSEL	_PP5H
	MOV	_PP5H, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PP5L
	MOV	_PP5L, R0
;	::->op : =
	.line	57; "../Pwm.c"	PWM5CTL0 = 0xC;
	MOV	R0,# 0x0c
	BANKSEL	_PWM5CTL0
	MOV	_PWM5CTL0, R0
;	::->op : =
	.line	58; "../Pwm.c"	PWM5CTL2 = 0;
	BANKSEL	_PWM5CTL2
	CLR	_PWM5CTL2
;	::->op : =
	.line	59; "../Pwm.c"	P5STRCTL0 = 0x1F;
	MOV	R0,# 0x1f
	BANKSEL	_P5STRCTL0
	MOV	_P5STRCTL0, R0
;	::->op : =
	.line	60; "../Pwm.c"	P5STRCTL1 = 0xF;
	MOV	R0,# 0x0f
	BANKSEL	_P5STRCTL1
	MOV	_P5STRCTL1, R0
;	::->op : =
	.line	61; "../Pwm.c"	T10CTL0 = 0x00;
	BANKSEL	_T10CTL0
	CLR	_T10CTL0
;	::->op : =
	.line	62; "../Pwm.c"	T10CTL1 = T10CLK_SEL_HFCLK|T10CLK_Prescale2_DIV_1;		//16/4/4
	MOV	R0,# 0x08
	BANKSEL	_T10CTL1
	MOV	_T10CTL1, R0
;	::->op : =
	.line	63; "../Pwm.c"	T10H = 0;
	BANKSEL	_T10H
	CLR	_T10H
;	::->op : =
	.line	64; "../Pwm.c"	T10L = 0;
	BANKSEL	_T10L
	CLR	_T10L
;	::->op :*  =
	.line	65; "../Pwm.c"	T10ON = 1;
	BANKSEL	_T10CTL1_bits
	SET	_T10CTL1_bits, 2
;	::->op :*  =
	.line	67; "../Pwm.c"	TR24 = 0;
	BANKSEL	_TR2_bits
	CLR	_TR2_bits, 4
;	::->op :*  =
	.line	68; "../Pwm.c"	TR66 = 0;
	BANKSEL	_TR6_bits
	CLR	_TR6_bits, 6
;	::->op :*  =
	.line	69; "../Pwm.c"	TR45 = 0;
	BANKSEL	_TR4_bits
	CLR	_TR4_bits, 5
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _PWM5_Init_function_end, debug, value=$

; exit point of _PWM5_Init



func._PWM34_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _PWM34_Init	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
	.def _PWM34_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_PWM34_Init	;Function start
; 2 exit points
;	::->op : =
	.line	22; "../Pwm.c"	APFCTL4 = 0xCD;
	MOV	R0,# 0xcd
	BANKSEL	_APFCTL4
	MOV	_APFCTL4, R0
;	::->op : =
	.line	23; "../Pwm.c"	APFCTL3 = 0x8;
	MOV	R0,# 0x08
	BANKSEL	_APFCTL3
	MOV	_APFCTL3, R0
;	::->op :*  =
	.line	24; "../Pwm.c"	TR43 = 1;
	BANKSEL	_TR4_bits
	SET	_TR4_bits, 3
;	::->op :*  =
	.line	25; "../Pwm.c"	TR63 = 1;
	BANKSEL	_TR6_bits
	SET	_TR6_bits, 3
;	::->op : =
	.line	26; "../Pwm.c"	PWM3L0=1;	PWM3L1=1;
	MOV	R0,# 0x01
	BANKSEL	_PWM3L0
	MOV	_PWM3L0, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PWM3L1
	MOV	_PWM3L1, R0
;	::->op : =
	.line	27; "../Pwm.c"	PP3H=99;	PP3L=1;
	MOV	R0,# 0x63
	BANKSEL	_PP3H
	MOV	_PP3H, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PP3L
	MOV	_PP3L, R0
;	::->op : =
	.line	28; "../Pwm.c"	PWM4L0=1;	PWM4L1=1;
	MOV	R0,# 0x01
	BANKSEL	_PWM4L0
	MOV	_PWM4L0, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PWM4L1
	MOV	_PWM4L1, R0
;	::->op : =
	.line	29; "../Pwm.c"	PP4H=99;	PP4L=1;
	MOV	R0,# 0x63
	BANKSEL	_PP4H
	MOV	_PP4H, R0
;	::->op : =
	MOV	R0,# 0x01
	BANKSEL	_PP4L
	MOV	_PP4L, R0
;	::->op : =
	.line	30; "../Pwm.c"	PWM4CTL0 = 0xc;
	MOV	R0,# 0x0c
	BANKSEL	_PWM4CTL0
	MOV	_PWM4CTL0, R0
;	::->op : =
	.line	31; "../Pwm.c"	P4ATRCTL = 0x18;
	MOV	R0,# 0x18
	BANKSEL	_P4ATRCTL
	MOV	_P4ATRCTL, R0
;	::->op : =
	.line	32; "../Pwm.c"	PWM3CTL0 = 0xc;
	MOV	R0,# 0x0c
	BANKSEL	_PWM3CTL0
	MOV	_PWM3CTL0, R0
;	::->op : =
	.line	33; "../Pwm.c"	P3ATRCTL = 0x12;
	MOV	R0,# 0x12
	BANKSEL	_P3ATRCTL
	MOV	_P3ATRCTL, R0
;	::->op : =
	.line	34; "../Pwm.c"	T8CTL = 0x00;									//默认4分频
	BANKSEL	_T8CTL
	CLR	_T8CTL
;	::->op : =
	.line	35; "../Pwm.c"	T8CTL1 = T8CLK_SEL_HFCLK|T8CLK_Prescale1_DIV_1;		//16/4/4
	MOV	R0,# 0x02
	BANKSEL	_T8CTL1
	MOV	_T8CTL1, R0
;	::->op : =
	.line	36; "../Pwm.c"	T8H = 0;
	BANKSEL	_T8H
	CLR	_T8H
;	::->op : =
	.line	37; "../Pwm.c"	T8L = 0;
	BANKSEL	_T8L
	CLR	_T8L
;	::->op :*  =
	.line	38; "../Pwm.c"	T8ON = 1;
	BANKSEL	_T8CTL_bits
	SET	_T8CTL_bits, 2
;	::->op : =
	.line	39; "../Pwm.c"	T9CTL = 0x00;									//默认4分频
	BANKSEL	_T9CTL
	CLR	_T9CTL
;	::->op : =
	.line	40; "../Pwm.c"	T9CTL1 = T8CLK_SEL_HFCLK|T8CLK_Prescale2_DIV_1;		//16/4/4
	MOV	R0,# 0x02
	BANKSEL	_T9CTL1
	MOV	_T9CTL1, R0
;	::->op : =
	.line	41; "../Pwm.c"	T9H = 0;
	BANKSEL	_T9H
	CLR	_T9H
;	::->op : =
	.line	42; "../Pwm.c"	T9L = 0;
	BANKSEL	_T9L
	CLR	_T9L
;	::->op :*  =
	.line	43; "../Pwm.c"	T9ON = 1;
	BANKSEL	_T9CTL_bits
	SET	_T9CTL_bits, 2
;	::->op :*  =
	.line	44; "../Pwm.c"	TR43 = 0;
	BANKSEL	_TR4_bits
	CLR	_TR4_bits, 3
;	::->op :*  =
	.line	45; "../Pwm.c"	TR63 = 0;
	BANKSEL	_TR6_bits
	CLR	_TR6_bits, 3
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _PWM34_Init_function_end, debug, value=$

; exit point of _PWM34_Init


;	code size estimation:
;	  182+  111 =   293 instructions (  808 byte)

	.type _PWM34_Init,  32
	.dim _PWM34_Init, 1, (_PWM34_Init_function_end&0xFF00)>>8, _PWM34_Init_function_end&0xFF,0,20,0,46 , 1, 1
	.type _PWM5_Init,  32
	.dim _PWM5_Init, 1, (_PWM5_Init_function_end&0xFF00)>>8, _PWM5_Init_function_end&0xFF,0,47,0,70 , 1, 1
	.type _PWM67_Init,  32
	.dim _PWM67_Init, 1, (_PWM67_Init_function_end&0xFF00)>>8, _PWM67_Init_function_end&0xFF,0,71,0,121 , 1, 1
	.type _PWM_Init,  32
	.dim _PWM_Init, 1, (_PWM_Init_function_end&0xFF00)>>8, _PWM_Init_function_end&0xFF,0,122,0,127 , 1, 1
	.def __00010000, debug, type = 8, class = 10, value = 1
	.def _0, debug, value = 1, type = 26, class = 8
	.def _1, debug, value = 1, type = 26, class = 8
	.def _2, debug, value = 1, type = 26, class = 8
	.def _3, debug, value = 1, type = 26, class = 8
	.def _4, debug, value = 1, type = 26, class = 8
	.def _5, debug, value = 1, type = 26, class = 8
	.def _6, debug, value = 1, type = 26, class = 8
	.def _7, debug, value = 1, type = 26, class = 8
	.def __00010010, debug, type = 9, class = 12, value = 2
	.def bytes, debug, value = 2, type = 12, class = 11
	.def id, debug, value = 2, type = 12, class = 11
	.def type, debug, value = 2, type = 12, class = 11
	.def product, debug, value = 2, type = 12, class = 11
	.def index, debug, value = 2, type = 12, class = 11
	.def reservation, debug, value = 2, type = 12, class = 11
	.def __00010001, debug, type = 9, class = 12, value = 3
	.def byte0, debug, value = 3, type = 12, class = 11
	.def byte1, debug, value = 3, type = 12, class = 11
	.def byte2, debug, value = 3, type = 12, class = 11
	.def byte3, debug, value = 3, type = 12, class = 11
	.def bytes, debug, value = 3, type = 12, class = 11
	.def value, debug, value = 3, type = 15, class = 11
	.def __00010012, debug, type = 9, class = 12, value = 4
	.def bytes, debug, value = 4, type = 12, class = 11
	.def i2cDevAddrL, debug, value = 4, type = 12, class = 11
	.def i2cDevAddrH, debug, value = 4, type = 12, class = 11
	.def flag, debug, value = 4, type = 8, class = 11
	.def length, debug, value = 4, type = 12, class = 11
	.def Command, debug, value = 4, type = 12, class = 11
	.def buffer, debug, value = 4, type = 12, class = 11
	.def __00020011, debug, type = 8, class = 10, value = 5
	.def id, debug, value = 5, type = 12, class = 8
	.def type, debug, value = 5, type = 12, class = 8
	.def product, debug, value = 5, type = 12, class = 8
	.def index, debug, value = 5, type = 12, class = 8
	.def reservation, debug, value = 5, type = 12, class = 8
	.def __00010003, debug, type = 9, class = 12, value = 6
	.def byte0, debug, value = 6, type = 12, class = 11
	.def byte1, debug, value = 6, type = 12, class = 11
	.def byte, debug, value = 6, type = 12, class = 11
	.def value, debug, value = 6, type = 14, class = 11
	.def __00020002, debug, type = 8, class = 10, value = 7
	.def byte0, debug, value = 7, type = 12, class = 8
	.def byte1, debug, value = 7, type = 12, class = 8
	.def byte2, debug, value = 7, type = 12, class = 8
	.def byte3, debug, value = 7, type = 12, class = 8
	.def __00010014, debug, type = 9, class = 12, value = 8
	.def bytes, debug, value = 8, type = 12, class = 11
	.def head, debug, value = 8, type = 12, class = 11
	.def Command, debug, value = 8, type = 12, class = 11
	.def flag, debug, value = 8, type = 8, class = 11
	.def length, debug, value = 8, type = 12, class = 11
	.def buffer, debug, value = 8, type = 12, class = 11
	.def checkvalue, debug, value = 8, type = 12, class = 11
	.def assistant, debug, value = 8, type = 12, class = 11
	.def __00020013, debug, type = 8, class = 10, value = 9
	.def i2cDevAddrL, debug, value = 9, type = 12, class = 8
	.def i2cDevAddrH, debug, value = 9, type = 12, class = 8
	.def flag, debug, value = 9, type = 8, class = 8
	.def length, debug, value = 9, type = 12, class = 8
	.def Command, debug, value = 9, type = 12, class = 8
	.def buffer, debug, value = 9, type = 12, class = 8
	.def __00010005, debug, type = 9, class = 12, value = 10
	.def value, debug, value = 10, type = 12, class = 11
	.def bit0, debug, value = 10, type = 26, class = 11
	.def bit1, debug, value = 10, type = 26, class = 11
	.def bit2, debug, value = 10, type = 26, class = 11
	.def bit3, debug, value = 10, type = 26, class = 11
	.def bit4, debug, value = 10, type = 26, class = 11
	.def bit5, debug, value = 10, type = 26, class = 11
	.def bit6, debug, value = 10, type = 26, class = 11
	.def bit7, debug, value = 10, type = 26, class = 11
	.def __00020004, debug, type = 8, class = 10, value = 11
	.def byte0, debug, value = 11, type = 12, class = 8
	.def byte1, debug, value = 11, type = 12, class = 8
	.def __00020015, debug, type = 8, class = 10, value = 12
	.def head, debug, value = 12, type = 12, class = 8
	.def Command, debug, value = 12, type = 12, class = 8
	.def flag, debug, value = 12, type = 8, class = 8
	.def length, debug, value = 12, type = 12, class = 8
	.def buffer, debug, value = 12, type = 12, class = 8
	.def checkvalue, debug, value = 12, type = 12, class = 8
	.def assistant, debug, value = 12, type = 12, class = 8
	.def __00010007, debug, type = 9, class = 12, value = 13
	.def byte0, debug, value = 13, type = 12, class = 11
	.def byte1, debug, value = 13, type = 12, class = 11
	.def byte2, debug, value = 13, type = 12, class = 11
	.def byte3, debug, value = 13, type = 12, class = 11
	.def bytes, debug, value = 13, type = 12, class = 11
	.def __00020006, debug, type = 8, class = 10, value = 14
	.def bit0, debug, value = 14, type = 26, class = 8
	.def bit1, debug, value = 14, type = 26, class = 8
	.def bit2, debug, value = 14, type = 26, class = 8
	.def bit3, debug, value = 14, type = 26, class = 8
	.def bit4, debug, value = 14, type = 26, class = 8
	.def bit5, debug, value = 14, type = 26, class = 8
	.def bit6, debug, value = 14, type = 26, class = 8
	.def bit7, debug, value = 14, type = 26, class = 8
	.def __00010009, debug, type = 8, class = 10, value = 15
	.def id, debug, value = 15, type = 12, class = 8
	.def type, debug, value = 15, type = 12, class = 8
	.def product, debug, value = 15, type = 12, class = 8
	.def index, debug, value = 15, type = 12, class = 8
	.def reservation, debug, value = 15, type = 12, class = 8
	.def __00020008, debug, type = 8, class = 10, value = 16
	.def byte0, debug, value = 16, type = 12, class = 8
	.def byte1, debug, value = 16, type = 12, class = 8
	.def byte2, debug, value = 16, type = 12, class = 8
	.def byte3, debug, value = 16, type = 12, class = 8

	.end
