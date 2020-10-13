;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
	.file	"../Work.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_LED_Water
	.extern	_LED_Stop_Open
	.extern	_LED_Stop_AllOpen
	.extern	_LED_Stop_AllClose
	.extern	_LED_Stop_PWMOpen
	.extern	_Led_RT_AllOpen
	.extern	_Led_RT_AllClose
	.extern	_Led_RT_WaterOpen
	.extern	_Led_Tail_AllOpen
	.extern	_Led_Tail_AllClose
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
	.global	_Mode_Act
	.global	_Tail_Stop_Check_Input
	.global	_RT_Mode_Act
	.global	_RT_Check_Input
	.global	_delay_us
	.global	_delay_ms
	.global	_Init_IO
	.global	_PastMode
	.global	_NowMode
	.global	_ActMode
	.global	_RT_PastMode
	.global	_RT_NowMode
	.global	_RT_ActMode
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
UDL_Work_0	.udata
r0x1019	.res	1
UDL_Work_1	.udata
r0x1018	.res	1
UDL_Work_2	.udata
r0x101A	.res	1
UDL_Work_3	.udata
r0x101B	.res	1
UDL_Work_4	.udata
r0x1017	.res	1
UDL_Work_5	.udata
r0x1016	.res	1
UDL_Work_6	.udata
r0x1014	.res	1
UDL_Work_7	.udata
r0x1015	.res	1
UDL_Work_8	.udata
r0x1012	.res	1
UDL_Work_9	.udata
r0x1013	.res	1
UDL_Work_10	.udata
_delay_ms_i_1_1	.res	2
UDL_Work_11	.udata
_delay_ms_j_1_1	.res	2
UDL_Work_12	.udata
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

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr


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
;   _Led_Tail_AllOpen
;   _LED_Stop_PWMOpen
;   _Led_Tail_AllClose
;   _LED_Stop_AllOpen
;   _Led_Tail_AllOpen
;   _LED_Stop_AllOpen
;   _Led_Tail_AllClose
;   _LED_Stop_AllClose
;   _Led_Tail_AllOpen
;   _LED_Stop_PWMOpen
;   _Led_Tail_AllClose
;   _LED_Stop_AllOpen
;   _Led_Tail_AllOpen
;   _LED_Stop_AllOpen
;; Starting PostCode block
	.def _Mode_Act_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Mode_Act	;Function start
; 2 exit points
;	::->op : EQ_OP
	.line	205; "../Work.c"	switch(ActMode)
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00118_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00118_DS_
	JMP	_00106_DS_
;	::->op : EQ_OP
_00118_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00119_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00119_DS_
	JMP	_00107_DS_
;	::->op : EQ_OP
_00119_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00120_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00120_DS_
	JMP	_00108_DS_
;	::->op : EQ_OP
_00120_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00121_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00121_DS_
	JMP	_00109_DS_
;	::->op : GOTO
_00121_DS_
	JMP	_00112_DS_
;	::->op : LABEL
;	::->op : CALL
_00106_DS_
	.line	208; "../Work.c"	Led_Tail_AllClose();	//位置灯全关闭
	TRAPPC1	_Led_Tail_AllClose
	TRAPPC2	_Led_Tail_AllClose
	PAGESEL	_Led_Tail_AllClose
	CALL	_Led_Tail_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	209; "../Work.c"	LED_Stop_AllClose();	//制动灯全关闭
	TRAPPC1	_LED_Stop_AllClose
	TRAPPC2	_LED_Stop_AllClose
	PAGESEL	_LED_Stop_AllClose
	CALL	_LED_Stop_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
	.line	210; "../Work.c"	break;
	JMP	_00112_DS_
;	::->op : LABEL
;	::->op : CALL
_00107_DS_
	.line	212; "../Work.c"	Led_Tail_AllOpen();		//位置灯全开启
	TRAPPC1	_Led_Tail_AllOpen
	TRAPPC2	_Led_Tail_AllOpen
	PAGESEL	_Led_Tail_AllOpen
	CALL	_Led_Tail_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	213; "../Work.c"	LED_Stop_PWMOpen();		//制动灯5%PWM开启
	TRAPPC1	_LED_Stop_PWMOpen
	TRAPPC2	_LED_Stop_PWMOpen
	PAGESEL	_LED_Stop_PWMOpen
	CALL	_LED_Stop_PWMOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
	.line	214; "../Work.c"	break;
	JMP	_00112_DS_
;	::->op : LABEL
;	::->op : CALL
_00108_DS_
	.line	216; "../Work.c"	Led_Tail_AllClose();	//位置灯全关闭
	TRAPPC1	_Led_Tail_AllClose
	TRAPPC2	_Led_Tail_AllClose
	PAGESEL	_Led_Tail_AllClose
	CALL	_Led_Tail_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	217; "../Work.c"	LED_Stop_AllOpen();		//制动灯全开启
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
	.line	218; "../Work.c"	break;
	JMP	_00112_DS_
;	::->op : LABEL
;	::->op : CALL
_00109_DS_
	.line	220; "../Work.c"	Led_Tail_AllOpen();		//位置灯全开启
	TRAPPC1	_Led_Tail_AllOpen
	TRAPPC2	_Led_Tail_AllOpen
	PAGESEL	_Led_Tail_AllOpen
	CALL	_Led_Tail_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	221; "../Work.c"	LED_Stop_AllOpen();		//制动灯全开启
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00112_DS_
	.line	224; "../Work.c"	}
	CRET	
	.def _Mode_Act_function_end, debug, value=$

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
;2 compiler assigned registers:
;   r0x1012
;   r0x1013
;; Starting PostCode block
	.def _Tail_Stop_Check_Input_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Tail_Stop_Check_Input	;Function start
; 2 exit points
;	::->op : =
	.line	146; "../Work.c"	TR7=0x06;
	MOV	R0,# 0x06
	BANKSEL	_TR7
	MOV	_TR7, R0
;	::->op : =
	.line	147; "../Work.c"	ANS7=0;
	BANKSEL	_ANS7
	CLR	_ANS7
;	::->op : =
	.line	148; "../Work.c"	P7LR=0;
	BANKSEL	_P7LR
	CLR	_P7LR
;	::->op : =
	.line	149; "../Work.c"	PUR7=0;
	BANKSEL	_PUR7
	CLR	_PUR7
;	::->op : GET_VALUE_AT_ADDRESS
	.line	150; "../Work.c"	Tail_Status = Tail;
	BANKSEL	r0x1012
	CLR	r0x1012
	BANKSEL	_P7_bits
	JB	_P7_bits, 1
	JMP	_00122_DS_
	BANKSEL	r0x1012
	INC	r0x1012
;	::->op : =
;	::->op : GET_VALUE_AT_ADDRESS
_00122_DS_
	.line	151; "../Work.c"	Stop_Status = Stop;
	BANKSEL	r0x1013
	CLR	r0x1013
	BANKSEL	_P7_bits
	JB	_P7_bits, 2
	JMP	_00123_DS_
	BANKSEL	r0x1013
	INC	r0x1013
;	::->op : =
;	::->op : IFX
_00123_DS_
	.line	153; "../Work.c"	if(Tail_Status==0&&Stop_Status==0)//位置低，制动低
	MOV	R0,# 0x00
	BANKSEL	r0x1012
	ORL	R0, r0x1012
	JB	PSW, 2
	JMP	_00072_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	r0x1013
	ORL	R0, r0x1013
	JB	PSW, 2
	JMP	_00072_DS_
;	::->op : =
	.line	155; "../Work.c"	PastMode = NowMode;NowMode = Mode1_Status;
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
	.line	156; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00069_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00069_DS_
;	::->op : =
	.line	158; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00072_DS_
;	::->op : LABEL
;	::->op : =
_00069_DS_
	.line	162; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x01
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00072_DS_
	.line	165; "../Work.c"	if(Tail_Status==1&&Stop_Status==0)//位置高，制动低
	BANKSEL	r0x1012
	MOVZ	R0, r0x1012
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00078_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	r0x1013
	ORL	R0, r0x1013
	JB	PSW, 2
	JMP	_00078_DS_
;	::->op : =
	.line	167; "../Work.c"	PastMode = NowMode;NowMode = Mode2_Status;
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
	.line	168; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00075_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00075_DS_
;	::->op : =
	.line	170; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00078_DS_
;	::->op : LABEL
;	::->op : =
_00075_DS_
	.line	174; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x02
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : IFX
_00078_DS_
	.line	177; "../Work.c"	if(Tail_Status==0&&Stop_Status==1)//位置低，制动高
	MOV	R0,# 0x00
	BANKSEL	r0x1012
	ORL	R0, r0x1012
	JB	PSW, 2
	JMP	_00084_DS_
;	::->op : EQ_OP
	BANKSEL	r0x1013
	MOVZ	R0, r0x1013
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00084_DS_
;	::->op : =
	.line	179; "../Work.c"	PastMode = NowMode;NowMode = Mode3_Status;
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
	.line	180; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00081_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00081_DS_
;	::->op : =
	.line	182; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00084_DS_
;	::->op : LABEL
;	::->op : =
_00081_DS_
	.line	186; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x04
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00084_DS_
	.line	189; "../Work.c"	if(Tail_Status==1&&Stop_Status==1)//位置高，制动高
	BANKSEL	r0x1012
	MOVZ	R0, r0x1012
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00090_DS_
;	::->op : EQ_OP
	BANKSEL	r0x1013
	MOVZ	R0, r0x1013
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00090_DS_
;	::->op : =
	.line	191; "../Work.c"	PastMode = NowMode;NowMode = Mode4_Status;
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
	.line	192; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00087_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00087_DS_
;	::->op : =
	.line	194; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00090_DS_
;	::->op : LABEL
;	::->op : =
_00087_DS_
	.line	198; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x08
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : CALL
_00090_DS_
	.line	201; "../Work.c"	Mode_Act();
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
	.def _Tail_Stop_Check_Input_function_end, debug, value=$

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
;   _Led_RT_WaterOpen
;   _Led_RT_AllClose
;   _Led_RT_AllOpen
;   _Led_RT_WaterOpen
;; Starting PostCode block
	.def _RT_Mode_Act_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_RT_Mode_Act	;Function start
; 2 exit points
;	::->op : EQ_OP
	.line	129; "../Work.c"	switch(RT_ActMode)
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00065_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00065_DS_
	JMP	_00055_DS_
;	::->op : EQ_OP
_00065_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00066_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00066_DS_
	JMP	_00056_DS_
;	::->op : EQ_OP
_00066_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00067_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00067_DS_
	JMP	_00057_DS_
;	::->op : GOTO
_00067_DS_
	JMP	_00060_DS_
;	::->op : LABEL
;	::->op : CALL
_00055_DS_
	.line	132; "../Work.c"	Led_RT_AllClose();		//转向低，转向使能低，关灯
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
	.line	133; "../Work.c"	break;
	JMP	_00060_DS_
;	::->op : LABEL
;	::->op : CALL
_00056_DS_
	.line	135; "../Work.c"	Led_RT_AllOpen();		//转向高，转向使能高，常亮
	TRAPPC1	_Led_RT_AllOpen
	TRAPPC2	_Led_RT_AllOpen
	PAGESEL	_Led_RT_AllOpen
	CALL	_Led_RT_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
	.line	136; "../Work.c"	break;
	JMP	_00060_DS_
;	::->op : LABEL
;	::->op : CALL
_00057_DS_
	.line	138; "../Work.c"	Led_RT_WaterOpen();		//转向高，转向使能低，流水
	TRAPPC1	_Led_RT_WaterOpen
	TRAPPC2	_Led_RT_WaterOpen
	PAGESEL	_Led_RT_WaterOpen
	CALL	_Led_RT_WaterOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00060_DS_
	.line	141; "../Work.c"	}
	CRET	
	.def _RT_Mode_Act_function_end, debug, value=$

; exit point of _RT_Mode_Act



func._RT_Check_Input	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _RT_Check_Input	;Function start
; 2 exit points
;has an exit
;functions called:
;   _RT_Mode_Act
;   _RT_Mode_Act
;2 compiler assigned registers:
;   r0x1014
;   r0x1015
;; Starting PostCode block
	.def _RT_Check_Input_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_RT_Check_Input	;Function start
; 2 exit points
;	::->op : GET_VALUE_AT_ADDRESS
	.line	87; "../Work.c"	RT_Status = RT;
	BANKSEL	r0x1014
	CLR	r0x1014
	BANKSEL	_PA_bits
	JB	_PA_bits, 0
	JMP	_00124_DS_
	BANKSEL	r0x1014
	INC	r0x1014
;	::->op : =
;	::->op : GET_VALUE_AT_ADDRESS
_00124_DS_
	.line	88; "../Work.c"	RT_EN_Status = RT_EN;
	BANKSEL	r0x1015
	CLR	r0x1015
	BANKSEL	_P5_bits
	JB	_P5_bits, 1
	JMP	_00125_DS_
	BANKSEL	r0x1015
	INC	r0x1015
;	::->op : =
;	::->op : IFX
_00125_DS_
	.line	89; "../Work.c"	if(RT_Status==0&&RT_EN_Status==0)		//转向低，转向使能低，关灯
	MOV	R0,# 0x00
	BANKSEL	r0x1014
	ORL	R0, r0x1014
	JB	PSW, 2
	JMP	_00030_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	r0x1015
	ORL	R0, r0x1015
	JB	PSW, 2
	JMP	_00030_DS_
;	::->op : =
	.line	91; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode1_Status;
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
	.line	92; "../Work.c"	if(RT_NowMode==RT_PastMode)
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
	.line	94; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00030_DS_
;	::->op : LABEL
;	::->op : =
_00027_DS_
	.line	98; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x01
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00030_DS_
	.line	101; "../Work.c"	if(RT_Status==1&&RT_EN_Status==1)		//转向高，转向使能高，常亮
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00036_DS_
;	::->op : EQ_OP
	BANKSEL	r0x1015
	MOVZ	R0, r0x1015
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00036_DS_
;	::->op : =
	.line	103; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode2_Status;
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
	.line	104; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00033_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00033_DS_
;	::->op : =
	.line	106; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00036_DS_
;	::->op : LABEL
;	::->op : =
_00033_DS_
	.line	110; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x02
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00036_DS_
	.line	113; "../Work.c"	if(RT_Status==1&&RT_EN_Status==0)		//转向高，转向使能低，流水
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00042_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	r0x1015
	ORL	R0, r0x1015
	JB	PSW, 2
	JMP	_00042_DS_
;	::->op : =
	.line	115; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode3_Status;
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
	.line	116; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00039_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00039_DS_
;	::->op : =
	.line	118; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00042_DS_
;	::->op : LABEL
;	::->op : =
_00039_DS_
	.line	122; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x04
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : LABEL
;	::->op : CALL
_00042_DS_
	.line	125; "../Work.c"	RT_Mode_Act();
	TRAPPC1	_RT_Mode_Act
	TRAPPC2	_RT_Mode_Act
	PAGESEL	_RT_Mode_Act
	CALL	_RT_Mode_Act
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _RT_Check_Input_function_end, debug, value=$

; exit point of _RT_Check_Input



func._delay_us	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _delay_us	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1016
;   STK00
;   r0x1017
;; Starting PostCode block
	.def _delay_us_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_delay_us	;Function start
; 2 exit points
;	::->op : RECEIVE
	.line	78; "../Work.c"	void delay_us(uint16 num)
	BANKSEL	r0x1016
	MOV	r0x1016, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x1017
	MOV	r0x1017, R0
;	::->op : =
	.line	81; "../Work.c"	for(i=0;i<num;i++);
	BANKSEL	_delay_us_i_1_1
	CLR	_delay_us_i_1_1
	BANKSEL	_delay_us_i_1_1
	CLR	(_delay_us_i_1_1 + 1)
;	::->op : LABEL
;	::->op : <
_00017_DS_
	BANKSEL	r0x1016
	MOVZ	R0, r0x1016
	BANKSEL	_delay_us_i_1_1
	SUB	R0, (_delay_us_i_1_1 + 1)
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00025_DS_
	BANKSEL	r0x1017
	MOVZ	R0, r0x1017
	BANKSEL	_delay_us_i_1_1
	SUB	R0, _delay_us_i_1_1
_00025_DS_
	JNB	PSW, 0
	JMP	_00021_DS_
;	::->op : +
	BANKSEL	_delay_us_i_1_1
	INC	_delay_us_i_1_1
	JB	PSW, 2
	JMP	_00126_DS_
	BANKSEL	_delay_us_i_1_1
	INC	(_delay_us_i_1_1 + 1)
;	::->op : GOTO
_00126_DS_
	JMP	_00017_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00021_DS_
	CRET	
	.def _delay_us_function_end, debug, value=$

; exit point of _delay_us



func._delay_ms	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _delay_ms	;Function start
; 2 exit points
;has an exit
;5 compiler assigned registers:
;   r0x1018
;   STK00
;   r0x1019
;   r0x101A
;   r0x101B
;; Starting PostCode block
	.def _delay_ms_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_delay_ms	;Function start
; 2 exit points
;	::->op : RECEIVE
	.line	69; "../Work.c"	void delay_ms(uint16 num)
	BANKSEL	r0x1018
	MOV	r0x1018, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x1019
	MOV	r0x1019, R0
;	::->op : =
	.line	72; "../Work.c"	for(i=0;i<num;i++)
	BANKSEL	_delay_ms_i_1_1
	CLR	_delay_ms_i_1_1
	BANKSEL	_delay_ms_i_1_1
	CLR	(_delay_ms_i_1_1 + 1)
;	::->op : LABEL
;	::->op : <
_00006_DS_
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	BANKSEL	_delay_ms_i_1_1
	SUB	R0, (_delay_ms_i_1_1 + 1)
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00016_DS_
	BANKSEL	r0x1019
	MOVZ	R0, r0x1019
	BANKSEL	_delay_ms_i_1_1
	SUB	R0, _delay_ms_i_1_1
_00016_DS_
	JNB	PSW, 0
	JMP	_00010_DS_
;	::->op : =
	.line	74; "../Work.c"	j=250;
	MOV	R0,# 0xfa
	BANKSEL	_delay_ms_j_1_1
	MOV	_delay_ms_j_1_1, R0
	BANKSEL	_delay_ms_j_1_1
	CLR	(_delay_ms_j_1_1 + 1)
;	::->op : LABEL
;	::->op : =
_00003_DS_
	.line	75; "../Work.c"	while(j--);
	BANKSEL	_delay_ms_j_1_1
	MOVZ	R0, _delay_ms_j_1_1
	BANKSEL	r0x101A
	MOV	r0x101A, R0
	BANKSEL	_delay_ms_j_1_1
	MOVZ	R0, (_delay_ms_j_1_1 + 1)
	BANKSEL	r0x101B
	MOV	r0x101B, R0
;	::->op : -
	MOV	R0,# 0xff
	BANKSEL	_delay_ms_j_1_1
	ADD	_delay_ms_j_1_1, R0
	JNB	PSW, 0
	JMP	_00127_DS_
	BANKSEL	_delay_ms_j_1_1
	DEC	(_delay_ms_j_1_1 + 1)
;	::->op : IFX
_00127_DS_
	BANKSEL	r0x101A
	MOVZ	R0, r0x101A
	BANKSEL	r0x101B
	ORL	R0, r0x101B
	JB	PSW, 2
	JMP	_00003_DS_
;	::->op : +
	.line	72; "../Work.c"	for(i=0;i<num;i++)
	BANKSEL	_delay_ms_i_1_1
	INC	_delay_ms_i_1_1
	JB	PSW, 2
	JMP	_00128_DS_
	BANKSEL	_delay_ms_i_1_1
	INC	(_delay_ms_i_1_1 + 1)
;	::->op : GOTO
_00128_DS_
	JMP	_00006_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00010_DS_
	CRET	
	.def _delay_ms_function_end, debug, value=$

; exit point of _delay_ms



func._Init_IO	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Init_IO	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
	.def _Init_IO_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Init_IO	;Function start
; 2 exit points
;	::->op : =
	.line	24; "../Work.c"	TR0 =0xFF;//仿真口设置为输入
	MOV	R0,# 0xff
	BANKSEL	_TR0
	MOV	_TR0, R0
;	::->op : =
	.line	25; "../Work.c"	ANS0 =0;
	BANKSEL	_ANS0
	CLR	_ANS0
;	::->op : =
	.line	27; "../Work.c"	TR1=0x02;
	MOV	R0,# 0x02
	BANKSEL	_TR1
	MOV	_TR1, R0
;	::->op : =
	.line	28; "../Work.c"	ANS1=0;
	BANKSEL	_ANS1
	CLR	_ANS1
;	::->op : =
	.line	29; "../Work.c"	P1LR=0;
	BANKSEL	_P1LR
	CLR	_P1LR
;	::->op : =
	.line	31; "../Work.c"	TR2=0;
	BANKSEL	_TR2
	CLR	_TR2
;	::->op : =
	.line	32; "../Work.c"	ANS2=0;
	BANKSEL	_ANS2
	CLR	_ANS2
;	::->op : =
	.line	33; "../Work.c"	P2LR=0;
	BANKSEL	_P2LR
	CLR	_P2LR
;	::->op : =
	.line	35; "../Work.c"	TR3=0;
	BANKSEL	_TR3
	CLR	_TR3
;	::->op : =
	.line	36; "../Work.c"	ANS3=0;
	BANKSEL	_ANS3
	CLR	_ANS3
;	::->op : =
	.line	37; "../Work.c"	P3LR=0;
	BANKSEL	_P3LR
	CLR	_P3LR
;	::->op : =
	.line	39; "../Work.c"	TR4=0X10; //lin_rxd设置为输入、lin_txd设置为输出
	MOV	R0,# 0x10
	BANKSEL	_TR4
	MOV	_TR4, R0
;	::->op : =
	.line	40; "../Work.c"	ANS4=0;
	BANKSEL	_ANS4
	CLR	_ANS4
;	::->op : =
	.line	41; "../Work.c"	P4LR=0;
	BANKSEL	_P4LR
	CLR	_P4LR
;	::->op : =
	.line	43; "../Work.c"	TR5=0x02;
	MOV	R0,# 0x02
	BANKSEL	_TR5
	MOV	_TR5, R0
;	::->op : =
	.line	44; "../Work.c"	ANS5=0;
	BANKSEL	_ANS5
	CLR	_ANS5
;	::->op : =
	.line	45; "../Work.c"	P5LR=0;
	BANKSEL	_P5LR
	CLR	_P5LR
;	::->op : =
	.line	47; "../Work.c"	TR6=0;//按键检测口也设置为输入
	BANKSEL	_TR6
	CLR	_TR6
;	::->op : =
	.line	48; "../Work.c"	ANS6=0;
	BANKSEL	_ANS6
	CLR	_ANS6
;	::->op : =
	.line	49; "../Work.c"	P6LR=0;
	BANKSEL	_P6LR
	CLR	_P6LR
;	::->op : =
	.line	51; "../Work.c"	TR7=0x06;
	MOV	R0,# 0x06
	BANKSEL	_TR7
	MOV	_TR7, R0
;	::->op : =
	.line	52; "../Work.c"	ANS7=0;
	BANKSEL	_ANS7
	CLR	_ANS7
;	::->op : =
	.line	53; "../Work.c"	P7LR=0;
	BANKSEL	_P7LR
	CLR	_P7LR
;	::->op : =
	.line	55; "../Work.c"	TR9=0X0E;
	MOV	R0,# 0x0e
	BANKSEL	_TR9
	MOV	_TR9, R0
;	::->op : =
	.line	56; "../Work.c"	ANS9=0;
	BANKSEL	_ANS9
	CLR	_ANS9
;	::->op : =
	.line	57; "../Work.c"	P9LR=0;
	BANKSEL	_P9LR
	CLR	_P9LR
;	::->op : =
	.line	59; "../Work.c"	TRA=0x01;
	MOV	R0,# 0x01
	BANKSEL	_TRA
	MOV	_TRA, R0
;	::->op : =
	.line	60; "../Work.c"	ANSA=0;
	BANKSEL	_ANSA
	CLR	_ANSA
;	::->op : =
	.line	61; "../Work.c"	PALR=0;
	BANKSEL	_PALR
	CLR	_PALR
;	::->op : =
	.line	63; "../Work.c"	TRB=0;
	BANKSEL	_TRB
	CLR	_TRB
;	::->op : =
	.line	64; "../Work.c"	ANSB=0;
	BANKSEL	_ANSB
	CLR	_ANSB
;	::->op : =
	.line	65; "../Work.c"	PBLR=0;
	BANKSEL	_PBLR
	CLR	_PBLR
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _Init_IO_function_end, debug, value=$

; exit point of _Init_IO


;	code size estimation:
;	  483+  192 =   675 instructions ( 1734 byte)

	.type _Init_IO,  32
	.dim _Init_IO, 1, (_Init_IO_function_end&0xFF00)>>8, _Init_IO_function_end&0xFF,0,22,0,67 , 1, 1
	.type _delay_ms,  32
	.dim _delay_ms, 1, (_delay_ms_function_end&0xFF00)>>8, _delay_ms_function_end&0xFF,0,69,0,77 , 1, 1
	.type _delay_us,  32
	.dim _delay_us, 1, (_delay_us_function_end&0xFF00)>>8, _delay_us_function_end&0xFF,0,78,0,82 , 1, 1
	.type _RT_Check_Input,  32
	.dim _RT_Check_Input, 1, (_RT_Check_Input_function_end&0xFF00)>>8, _RT_Check_Input_function_end&0xFF,0,84,0,126 , 1, 1
	.type _RT_Mode_Act,  32
	.dim _RT_Mode_Act, 1, (_RT_Mode_Act_function_end&0xFF00)>>8, _RT_Mode_Act_function_end&0xFF,0,127,0,142 , 1, 1
	.type _Tail_Stop_Check_Input,  32
	.dim _Tail_Stop_Check_Input, 1, (_Tail_Stop_Check_Input_function_end&0xFF00)>>8, _Tail_Stop_Check_Input_function_end&0xFF,0,143,0,202 , 1, 1
	.type _Mode_Act,  32
	.dim _Mode_Act, 1, (_Mode_Act_function_end&0xFF00)>>8, _Mode_Act_function_end&0xFF,0,203,0,225 , 1, 1
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
