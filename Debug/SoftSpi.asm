;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
	.file	"../SoftSpi.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_spi_read
	.extern	_Init_IO
	.extern	_LED_Water
	.extern	_LED_Stop_Open
	.extern	_RT_Check_Input
	.extern	_Tail_Stop_Check_Input
	.extern	_Mode_Act
	.extern	_RT_Mode_Act
	.extern	_delay_ms
	.extern	_delay_us
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
	.global	_Rt_Two_Work
	.global	_Rt_One_Work
	.global	_Tail_Two_Work
	.global	_Tail_One_Work
	.global	_Rt_Two_Init
	.global	_Rt_One_Init
	.global	_Tail_Two_Init
	.global	_Tail_One_Init
	.global	_IS31FL3265B_Init
	.global	_SPI_Write_2Byte
	.global	_spi_init
	.global	_Spi_CS_High
	.global	_Spi_CS_Low
	.global	_breathtest
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
r0x101A	.res	1
UDL_SoftSpi_4	.udata
r0x101B	.res	1
UDL_SoftSpi_5	.udata
r0x1018	.res	1
UDL_SoftSpi_6	.udata
r0x1019	.res	1
UDL_SoftSpi_7	.udata
r0x1016	.res	1
UDL_SoftSpi_8	.udata
r0x1017	.res	1
UDL_SoftSpi_9	.udata
r0x1014	.res	1
UDL_SoftSpi_10	.udata
r0x1015	.res	1
UDL_SoftSpi_11	.udata
r0x1012	.res	1
UDL_SoftSpi_12	.udata
r0x1013	.res	1
UDL_SoftSpi_13	.udata
r0x1010	.res	1
UDL_SoftSpi_14	.udata
r0x1011	.res	1
UDL_SoftSpi_15	.udata
r0x100F	.res	1
UDL_SoftSpi_16	.udata
r0x100D	.res	1
UDL_SoftSpi_17	.udata
r0x100E	.res	1
UDL_SoftSpi_18	.udata
r0x1007	.res	1
UDL_SoftSpi_19	.udata
r0x1008	.res	1
UDL_SoftSpi_20	.udata
r0x1009	.res	1
UDL_SoftSpi_21	.udata
r0x100A	.res	1
UDL_SoftSpi_22	.udata
r0x100B	.res	1
UDL_SoftSpi_23	.udata
r0x100C	.res	1
UDL_SoftSpi_24	.udata
_SPI_Write_2Byte_SPI_adr_1_1	.res	1
UDL_SoftSpi_25	.udata
_SPI_Write_2Byte_SPI_data_1_1	.res	1
UDL_SoftSpi_26	.udata
_SPI_Write_2Byte_buf_1_1	.res	2
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr


func._breathtest	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _breathtest	;Function start
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
;8 compiler assigned registers:
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   STK01
;   STK00
;; Starting PostCode block
	.def _breathtest_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_breathtest	;Function start
; 2 exit points
;	::->op : =
	.line	255; "../SoftSpi.c"	for(k=1;k<=4;k++)
	MOV	R0,# 0x01
	BANKSEL	r0x1007
	MOV	r0x1007, R0
	BANKSEL	r0x1008
	CLR	r0x1008
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x5=5), size=2, mask=ffff
_00193_DS_
	BANKSEL	r0x1008
	MOVZ	R0, r0x1008
	ADD	R0,# 0x80
	ADD	R0,# 0x80
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00208_DS_
	MOV	R0,# 0x05
	BANKSEL	r0x1007
	SUB	R0, r0x1007
_00208_DS_
	JNB	PSW, 0
	JMP	_00197_DS_
;	::->op : =
	.line	257; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1009
	MOV	r0x1009, R0
	BANKSEL	r0x100A
	CLR	r0x100A
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=2, mask=ffff
_00185_DS_
	BANKSEL	r0x100A
	MOVZ	R0, r0x100A
	ADD	R0,# 0x80
	ADD	R0,# 0x80
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00209_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x1009
	SUB	R0, r0x1009
_00209_DS_
	JNB	PSW, 0
	JMP	_00188_DS_
;	::->op : CAST
;;129	MOVZ	R0, r0x1007
;	::->op : CAST
;;125	MOVZ	R0, r0x1009
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	261; "../SoftSpi.c"	SPI_Write_2Byte(k,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
;;124	MOVZ	R0, r0x100C
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	BANKSEL	r0x100C
	MOV	r0x100C, R0
	BANKSEL	STK00
	MOV	STK00, R0
;;128	MOVZ	R0, r0x100B
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	r0x100B
	MOV	r0x100B, R0
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CAST
;;127	MOVZ	R0, r0x1007
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	262; "../SoftSpi.c"	SPI_Write_2Byte(k,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
;;126	MOVZ	R0, r0x100B
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	r0x100B
	MOV	r0x100B, R0
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
	.line	263; "../SoftSpi.c"	delay_ms(5);
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
	.line	257; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1009
	INC	r0x1009
	JB	PSW, 2
	JMP	_00211_DS_
	BANKSEL	r0x100A
	INC	r0x100A
;	::->op : GOTO
_00211_DS_
	JMP	_00185_DS_
;	::->op : LABEL
;	::->op : =
_00188_DS_
	.line	266; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1009
	MOV	r0x1009, R0
	BANKSEL	r0x100A
	CLR	r0x100A
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=2, mask=ffff
_00189_DS_
	BANKSEL	r0x100A
	MOVZ	R0, r0x100A
	ADD	R0,# 0x80
	ADD	R0,# 0x80
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00210_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x1009
	SUB	R0, r0x1009
_00210_DS_
	JNB	PSW, 0
	JMP	_00195_DS_
;	::->op : CAST
;;123	MOVZ	R0, r0x1007
;	::->op : CAST
;;113	MOVZ	R0, r0x1009
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	270; "../SoftSpi.c"	SPI_Write_2Byte(k,i,0);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
;;112	MOVZ	R0, r0x100C
	BANKSEL	r0x1009
	MOVZ	R0, r0x1009
	BANKSEL	r0x100C
	MOV	r0x100C, R0
	BANKSEL	STK00
	MOV	STK00, R0
;;122	MOVZ	R0, r0x100B
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	r0x100B
	MOV	r0x100B, R0
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CAST
;;111	MOVZ	R0, r0x1007
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	271; "../SoftSpi.c"	SPI_Write_2Byte(k,0x37,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x37
	BANKSEL	STK00
	MOV	STK00, R0
;;110	MOVZ	R0, r0x100B
	BANKSEL	r0x1007
	MOVZ	R0, r0x1007
	BANKSEL	r0x100B
	MOV	r0x100B, R0
	TRAPPC1	_SPI_Write_2Byte
	TRAPPC2	_SPI_Write_2Byte
	PAGESEL	_SPI_Write_2Byte
	CALL	_SPI_Write_2Byte
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
	.line	272; "../SoftSpi.c"	delay_ms(5);
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
	.line	266; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1009
	INC	r0x1009
	JB	PSW, 2
	JMP	_00212_DS_
	BANKSEL	r0x100A
	INC	r0x100A
;	::->op : GOTO
_00212_DS_
	JMP	_00189_DS_
;	::->op : LABEL
;	::->op : +
_00195_DS_
	.line	255; "../SoftSpi.c"	for(k=1;k<=4;k++)
	BANKSEL	r0x1007
	INC	r0x1007
	JB	PSW, 2
	JMP	_00213_DS_
	BANKSEL	r0x1008
	INC	r0x1008
;	::->op : GOTO
_00213_DS_
	JMP	_00193_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00197_DS_
	CRET	
	.def _breathtest_function_end, debug, value=$

; exit point of _breathtest



func._Rt_Two_Work	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Rt_Two_Work	;Function start
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
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;4 compiler assigned registers:
;   r0x100D
;   STK01
;   STK00
;   r0x100E
;; Starting PostCode block
	.def _Rt_Two_Work_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Rt_Two_Work	;Function start
; 2 exit points
;	::->op : =
	.line	239; "../SoftSpi.c"	for(i=0x2F;i>=0x1F;i-=3)
	MOV	R0,# 0x2f
	BANKSEL	r0x100D
	MOV	r0x100D, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00167_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x100D
	SUB	R0, r0x100D
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00170_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	241; "../SoftSpi.c"	SPI_Write_2Byte(4,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x100D
	MOVZ	R0, r0x100D
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
	.line	242; "../SoftSpi.c"	SPI_Write_2Byte(4,i-1,0xFF);
	BANKSEL	r0x100D
	DECR	r0x100D
	BANKSEL	r0x100E
	MOV	r0x100E, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x100E
	MOVZ	R0, r0x100E
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
	.line	243; "../SoftSpi.c"	SPI_Write_2Byte(4,0x37,0x00);//update
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
	.line	244; "../SoftSpi.c"	delay_ms(200);
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
;	::->op : -
	.line	239; "../SoftSpi.c"	for(i=0x2F;i>=0x1F;i-=3)
	MOV	R0,# 0xfd
	BANKSEL	r0x100D
	ADD	r0x100D, R0
;	::->op : GOTO
	JMP	_00167_DS_
;	::->op : LABEL
;	::->op : =
_00170_DS_
	.line	246; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x100D
	MOV	r0x100D, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00171_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x100D
	SUB	R0, r0x100D
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00175_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	248; "../SoftSpi.c"	SPI_Write_2Byte(4,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x100D
	MOVZ	R0, r0x100D
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
	.line	249; "../SoftSpi.c"	SPI_Write_2Byte(4,0x37,0x00);//update
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
	.line	246; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x100D
	INC	r0x100D
;	::->op : GOTO
	JMP	_00171_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00175_DS_
	CRET	
	.def _Rt_Two_Work_function_end, debug, value=$

; exit point of _Rt_Two_Work



func._Rt_One_Work	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Rt_One_Work	;Function start
; 2 exit points
;has an exit
;functions called:
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
;3 compiler assigned registers:
;   r0x100F
;   STK01
;   STK00
;; Starting PostCode block
	.def _Rt_One_Work_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Rt_One_Work	;Function start
; 2 exit points
;	::->op : =
	.line	224; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i+=3)
	MOV	R0,# 0x1f
	BANKSEL	r0x100F
	MOV	r0x100F, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00149_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x100F
	SUB	R0, r0x100F
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00152_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	226; "../SoftSpi.c"	SPI_Write_2Byte(3,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x100F
	MOVZ	R0, r0x100F
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
	.line	227; "../SoftSpi.c"	SPI_Write_2Byte(3,0x37,0x00);//update
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
	.line	228; "../SoftSpi.c"	delay_ms(200);
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
;	::->op : +
	.line	224; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i+=3)
	MOV	R0,# 0x03
	BANKSEL	r0x100F
	ADD	r0x100F, R0
;	::->op : GOTO
	JMP	_00149_DS_
;	::->op : LABEL
;	::->op : =
_00152_DS_
	.line	230; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x100F
	MOV	r0x100F, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;unsigned compare: left >= lit(0x31=49), size=1
_00153_DS_
	MOV	R0,# 0x31
	BANKSEL	r0x100F
	SUB	R0, r0x100F
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00157_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	232; "../SoftSpi.c"	SPI_Write_2Byte(3,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x100F
	MOVZ	R0, r0x100F
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
	.line	233; "../SoftSpi.c"	SPI_Write_2Byte(3,0x37,0x00);//update
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
	.line	230; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x100F
	INC	r0x100F
;	::->op : GOTO
	JMP	_00153_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00157_DS_
	CRET	
	.def _Rt_One_Work_function_end, debug, value=$

; exit point of _Rt_One_Work



func._Tail_Two_Work	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_Two_Work	;Function start
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
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;4 compiler assigned registers:
;   r0x1010
;   STK01
;   STK00
;   r0x1011
;; Starting PostCode block
	.def _Tail_Two_Work_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Tail_Two_Work	;Function start
; 2 exit points
;	::->op : =
	.line	208; "../SoftSpi.c"	for(i=0x2F;i>=0x1F;i-=3)
	MOV	R0,# 0x2f
	BANKSEL	r0x1010
	MOV	r0x1010, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00131_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1010
	SUB	R0, r0x1010
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00134_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	210; "../SoftSpi.c"	SPI_Write_2Byte(2,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1010
	MOVZ	R0, r0x1010
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
	.line	211; "../SoftSpi.c"	SPI_Write_2Byte(2,i-1,0xFF);
	BANKSEL	r0x1010
	DECR	r0x1010
	BANKSEL	r0x1011
	MOV	r0x1011, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1011
	MOVZ	R0, r0x1011
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
	.line	212; "../SoftSpi.c"	SPI_Write_2Byte(2,0x37,0x00);//update
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
	.line	213; "../SoftSpi.c"	delay_ms(50);
	MOV	R0,# 0x32
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
	.line	208; "../SoftSpi.c"	for(i=0x2F;i>=0x1F;i-=3)
	MOV	R0,# 0xfd
	BANKSEL	r0x1010
	ADD	r0x1010, R0
;	::->op : GOTO
	JMP	_00131_DS_
;	::->op : LABEL
;	::->op : =
_00134_DS_
	.line	215; "../SoftSpi.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x1010
	MOV	r0x1010, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00135_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1010
	SUB	R0, r0x1010
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00139_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	217; "../SoftSpi.c"	SPI_Write_2Byte(2,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1010
	MOVZ	R0, r0x1010
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
	.line	218; "../SoftSpi.c"	SPI_Write_2Byte(2,0x37,0x00);//update
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
	.line	215; "../SoftSpi.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x1010
	DEC	r0x1010
;	::->op : GOTO
	JMP	_00135_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00139_DS_
	CRET	
	.def _Tail_Two_Work_function_end, debug, value=$

; exit point of _Tail_Two_Work



func._Tail_One_Work	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Tail_One_Work	;Function start
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
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;   _delay_ms
;   _SPI_Write_2Byte
;   _SPI_Write_2Byte
;4 compiler assigned registers:
;   r0x1012
;   STK01
;   STK00
;   r0x1013
;; Starting PostCode block
	.def _Tail_One_Work_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Tail_One_Work	;Function start
; 2 exit points
;	::->op : =
	.line	192; "../SoftSpi.c"	for(i=0x2F;i>=0x1F;i-=3)
	MOV	R0,# 0x2f
	BANKSEL	r0x1012
	MOV	r0x1012, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00113_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1012
	SUB	R0, r0x1012
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00116_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	194; "../SoftSpi.c"	SPI_Write_2Byte(1,i,0xFF);
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1012
	MOVZ	R0, r0x1012
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
	.line	195; "../SoftSpi.c"	SPI_Write_2Byte(1,i-1,0xFF);
	BANKSEL	r0x1012
	DECR	r0x1012
	BANKSEL	r0x1013
	MOV	r0x1013, R0
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
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
	.line	196; "../SoftSpi.c"	SPI_Write_2Byte(1,0x37,0x00);//update
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
	.line	197; "../SoftSpi.c"	delay_ms(50);
	MOV	R0,# 0x32
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
	.line	192; "../SoftSpi.c"	for(i=0x2F;i>=0x1F;i-=3)
	MOV	R0,# 0xfd
	BANKSEL	r0x1012
	ADD	r0x1012, R0
;	::->op : GOTO
	JMP	_00113_DS_
;	::->op : LABEL
;	::->op : =
_00116_DS_
	.line	199; "../SoftSpi.c"	for(i=0x30;i>=0x1F;i--)
	MOV	R0,# 0x30
	BANKSEL	r0x1012
	MOV	r0x1012, R0
;	::->op : LABEL
;	::->op : <
;unsigned compare: left < lit(0x1F=31), size=1
_00117_DS_
	MOV	R0,# 0x1f
	BANKSEL	r0x1012
	SUB	R0, r0x1012
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00121_DS_
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	201; "../SoftSpi.c"	SPI_Write_2Byte(1,i,0x00);
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	BANKSEL	r0x1012
	MOVZ	R0, r0x1012
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
	.line	202; "../SoftSpi.c"	SPI_Write_2Byte(1,0x37,0x00);//update
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
	.line	199; "../SoftSpi.c"	for(i=0x30;i>=0x1F;i--)
	BANKSEL	r0x1012
	DEC	r0x1012
;	::->op : GOTO
	JMP	_00117_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00121_DS_
	CRET	
	.def _Tail_One_Work_function_end, debug, value=$

; exit point of _Tail_One_Work



func._Rt_Two_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Rt_Two_Init	;Function start
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
;   r0x1014
;   r0x1015
;; Starting PostCode block
	.def _Rt_Two_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Rt_Two_Init	;Function start
; 2 exit points
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	173; "../SoftSpi.c"	SPI_Write_2Byte(4,0x00,0x01);
	MOV	R0,# 0x01
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x00
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
;	::->op : =
	.line	175; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	MOV	R0,# 0x02
	BANKSEL	r0x1014
	MOV	r0x1014, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x14=20), size=1, mask=ff
_00095_DS_
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	ADD	R0,# 0x80
	ADD	R0,# 0x6c
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00098_DS_
;	::->op : CAST
;;121	MOVZ	R0, r0x1014
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	177; "../SoftSpi.c"	SPI_Write_2Byte(4,i,0xFF);//SL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
;;120	MOVZ	R0, r0x1015
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	BANKSEL	r0x1015
	MOV	r0x1015, R0
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
	.line	175; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	BANKSEL	r0x1014
	INC	r0x1014
;	::->op : GOTO
	JMP	_00095_DS_
;	::->op : LABEL
;	::->op : =
_00098_DS_
	.line	180; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1014
	MOV	r0x1014, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=1, mask=ff
_00099_DS_
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	ADD	R0,# 0x80
	ADD	R0,# 0x4f
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00102_DS_
;	::->op : CAST
;;109	MOVZ	R0, r0x1014
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	182; "../SoftSpi.c"	SPI_Write_2Byte(4,i,InitBright);//PWM
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
;;108	MOVZ	R0, r0x1015
	BANKSEL	r0x1014
	MOVZ	R0, r0x1014
	BANKSEL	r0x1015
	MOV	r0x1015, R0
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
	.line	180; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1014
	INC	r0x1014
;	::->op : GOTO
	JMP	_00099_DS_
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00102_DS_
	.line	185; "../SoftSpi.c"	SPI_Write_2Byte(4,0x36,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x36
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
	.line	186; "../SoftSpi.c"	SPI_Write_2Byte(4,0x37,0x00);//update
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
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	187; "../SoftSpi.c"	SPI_Write_2Byte(4,0x01,0x20);
	MOV	R0,# 0x20
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x01
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
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _Rt_Two_Init_function_end, debug, value=$

; exit point of _Rt_Two_Init



func._Rt_One_Init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Rt_One_Init	;Function start
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
;   r0x1016
;   r0x1017
;; Starting PostCode block
	.def _Rt_One_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Rt_One_Init	;Function start
; 2 exit points
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	154; "../SoftSpi.c"	SPI_Write_2Byte(3,0x00,0x01);
	MOV	R0,# 0x01
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x00
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
;	::->op : =
	.line	156; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	MOV	R0,# 0x02
	BANKSEL	r0x1016
	MOV	r0x1016, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x14=20), size=1, mask=ff
_00077_DS_
	BANKSEL	r0x1016
	MOVZ	R0, r0x1016
	ADD	R0,# 0x80
	ADD	R0,# 0x6c
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00080_DS_
;	::->op : CAST
;;119	MOVZ	R0, r0x1016
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	158; "../SoftSpi.c"	SPI_Write_2Byte(3,i,0xFF);//SL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
;;118	MOVZ	R0, r0x1017
	BANKSEL	r0x1016
	MOVZ	R0, r0x1016
	BANKSEL	r0x1017
	MOV	r0x1017, R0
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
	.line	156; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	BANKSEL	r0x1016
	INC	r0x1016
;	::->op : GOTO
	JMP	_00077_DS_
;	::->op : LABEL
;	::->op : =
_00080_DS_
	.line	161; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1016
	MOV	r0x1016, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=1, mask=ff
_00081_DS_
	BANKSEL	r0x1016
	MOVZ	R0, r0x1016
	ADD	R0,# 0x80
	ADD	R0,# 0x4f
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00084_DS_
;	::->op : CAST
;;107	MOVZ	R0, r0x1016
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	163; "../SoftSpi.c"	SPI_Write_2Byte(3,i,InitBright);//PWM
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
;;106	MOVZ	R0, r0x1017
	BANKSEL	r0x1016
	MOVZ	R0, r0x1016
	BANKSEL	r0x1017
	MOV	r0x1017, R0
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
	.line	161; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1016
	INC	r0x1016
;	::->op : GOTO
	JMP	_00081_DS_
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00084_DS_
	.line	166; "../SoftSpi.c"	SPI_Write_2Byte(3,0x36,0x00);//update
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x36
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
	.line	167; "../SoftSpi.c"	SPI_Write_2Byte(3,0x37,0x00);//update
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
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	168; "../SoftSpi.c"	SPI_Write_2Byte(3,0x01,0x20);
	MOV	R0,# 0x20
	BANKSEL	STK01
	MOV	STK01, R0
	MOV	R0,# 0x01
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
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _Rt_One_Init_function_end, debug, value=$

; exit point of _Rt_One_Init



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
;   r0x1018
;   r0x1019
;; Starting PostCode block
	.def _Tail_Two_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Tail_Two_Init	;Function start
; 2 exit points
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	135; "../SoftSpi.c"	SPI_Write_2Byte(2,0x00,0x01);
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
	.line	137; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	MOV	R0,# 0x02
	BANKSEL	r0x1018
	MOV	r0x1018, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x14=20), size=1, mask=ff
_00059_DS_
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	ADD	R0,# 0x80
	ADD	R0,# 0x6c
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00062_DS_
;	::->op : CAST
;;117	MOVZ	R0, r0x1018
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	139; "../SoftSpi.c"	SPI_Write_2Byte(2,i,0xFF);//SL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
;;116	MOVZ	R0, r0x1019
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	BANKSEL	r0x1019
	MOV	r0x1019, R0
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
	.line	137; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	BANKSEL	r0x1018
	INC	r0x1018
;	::->op : GOTO
	JMP	_00059_DS_
;	::->op : LABEL
;	::->op : =
_00062_DS_
	.line	142; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x1018
	MOV	r0x1018, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=1, mask=ff
_00063_DS_
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	ADD	R0,# 0x80
	ADD	R0,# 0x4f
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00066_DS_
;	::->op : CAST
;;105	MOVZ	R0, r0x1018
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	144; "../SoftSpi.c"	SPI_Write_2Byte(2,i,InitBright);//PWM
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
;;104	MOVZ	R0, r0x1019
	BANKSEL	r0x1018
	MOVZ	R0, r0x1018
	BANKSEL	r0x1019
	MOV	r0x1019, R0
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
	.line	142; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x1018
	INC	r0x1018
;	::->op : GOTO
	JMP	_00063_DS_
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00066_DS_
	.line	147; "../SoftSpi.c"	SPI_Write_2Byte(2,0x36,0x00);//update
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
	.line	148; "../SoftSpi.c"	SPI_Write_2Byte(2,0x37,0x00);//update
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
	.line	149; "../SoftSpi.c"	SPI_Write_2Byte(2,0x01,0x20);
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
	.def _Tail_Two_Init_function_end, debug, value=$

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
;   r0x101A
;   r0x101B
;; Starting PostCode block
	.def _Tail_One_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Tail_One_Init	;Function start
; 2 exit points
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	116; "../SoftSpi.c"	SPI_Write_2Byte(1,0x00,0x01);
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
	.line	118; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	MOV	R0,# 0x02
	BANKSEL	r0x101A
	MOV	r0x101A, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x14=20), size=1, mask=ff
_00041_DS_
	BANKSEL	r0x101A
	MOVZ	R0, r0x101A
	ADD	R0,# 0x80
	ADD	R0,# 0x6c
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00044_DS_
;	::->op : CAST
;;115	MOVZ	R0, r0x101A
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	120; "../SoftSpi.c"	SPI_Write_2Byte(1,i,0xFF);//SL
	MOV	R0,# 0xff
	BANKSEL	STK01
	MOV	STK01, R0
;;114	MOVZ	R0, r0x101B
	BANKSEL	r0x101A
	MOVZ	R0, r0x101A
	BANKSEL	r0x101B
	MOV	r0x101B, R0
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
	.line	118; "../SoftSpi.c"	for(i=0x02;i<=0x13;i++)
	BANKSEL	r0x101A
	INC	r0x101A
;	::->op : GOTO
	JMP	_00041_DS_
;	::->op : LABEL
;	::->op : =
_00044_DS_
	.line	123; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	MOV	R0,# 0x1f
	BANKSEL	r0x101A
	MOV	r0x101A, R0
;	::->op : LABEL
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x31=49), size=1, mask=ff
_00045_DS_
	BANKSEL	r0x101A
	MOVZ	R0, r0x101A
	ADD	R0,# 0x80
	ADD	R0,# 0x4f
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00048_DS_
;	::->op : CAST
;;103	MOVZ	R0, r0x101A
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
	.line	125; "../SoftSpi.c"	SPI_Write_2Byte(1,i,InitBright);//PWM
	MOV	R0,# 0x00
	BANKSEL	STK01
	MOV	STK01, R0
;;102	MOVZ	R0, r0x101B
	BANKSEL	r0x101A
	MOVZ	R0, r0x101A
	BANKSEL	r0x101B
	MOV	r0x101B, R0
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
	.line	123; "../SoftSpi.c"	for(i=0x1F;i<=0x30;i++)
	BANKSEL	r0x101A
	INC	r0x101A
;	::->op : GOTO
	JMP	_00045_DS_
;	::->op : LABEL
;	::->op : SEND
;	::->op : SEND
;	::->op : SEND
;	::->op : CALL
_00048_DS_
	.line	128; "../SoftSpi.c"	SPI_Write_2Byte(1,0x36,0x00);//update
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
	.line	129; "../SoftSpi.c"	SPI_Write_2Byte(1,0x37,0x00);//update
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
	.line	130; "../SoftSpi.c"	SPI_Write_2Byte(1,0x01,0x20);
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
	.def _Tail_One_Init_function_end, debug, value=$

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
;   _Rt_One_Init
;   _Rt_Two_Init
;   _spi_init
;   _Tail_One_Init
;   _Tail_Two_Init
;   _Rt_One_Init
;   _Rt_Two_Init
;; Starting PostCode block
	.def _IS31FL3265B_Init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_IS31FL3265B_Init	;Function start
; 2 exit points
;	::->op : CALL
	.line	107; "../SoftSpi.c"	spi_init();
	TRAPPC1	_spi_init
	TRAPPC2	_spi_init
	PAGESEL	_spi_init
	CALL	_spi_init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	108; "../SoftSpi.c"	Tail_One_Init();
	TRAPPC1	_Tail_One_Init
	TRAPPC2	_Tail_One_Init
	PAGESEL	_Tail_One_Init
	CALL	_Tail_One_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	109; "../SoftSpi.c"	Tail_Two_Init();
	TRAPPC1	_Tail_Two_Init
	TRAPPC2	_Tail_Two_Init
	PAGESEL	_Tail_Two_Init
	CALL	_Tail_Two_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	110; "../SoftSpi.c"	Rt_One_Init();
	TRAPPC1	_Rt_One_Init
	TRAPPC2	_Rt_One_Init
	PAGESEL	_Rt_One_Init
	CALL	_Rt_One_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
	.line	111; "../SoftSpi.c"	Rt_Two_Init();
	TRAPPC1	_Rt_Two_Init
	TRAPPC2	_Rt_Two_Init
	PAGESEL	_Rt_Two_Init
	CALL	_Rt_Two_Init
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _IS31FL3265B_Init_function_end, debug, value=$

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
	.def _SPI_Write_2Byte_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_SPI_Write_2Byte	;Function start
; 2 exit points
;	::->op : RECEIVE
	.line	59; "../SoftSpi.c"	void SPI_Write_2Byte(unsigned char id,unsigned char addr,unsigned char dat)
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
	.line	66; "../SoftSpi.c"	Spi_CS_Low(id);
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
	.line	67; "../SoftSpi.c"	SSCI2BUFR=SPI_adr; //将待发送的字节放入发送缓存中
	BANKSEL	_SPI_Write_2Byte_SPI_adr_1_1
	MOVZ	R0, _SPI_Write_2Byte_SPI_adr_1_1
	BANKSEL	_SSCI2BUFR
	MOV	_SSCI2BUFR, R0
;	::->op : LABEL
;	::->op : GET_VALUE_AT_ADDRESS
_00027_DS_
	.line	68; "../SoftSpi.c"	while(!SSCI2IF); //等待发送完毕后SSCIIF置位，
	BANKSEL	_EIF6_bits
	JB	_EIF6_bits, 4
	JMP	_00027_DS_
;	::->op :*  =
	.line	69; "../SoftSpi.c"	SSCI2IF=0;
	BANKSEL	_EIF6_bits
	CLR	_EIF6_bits, 4
;	::->op : CAST
	.line	70; "../SoftSpi.c"	buf =SSCI2BUFR;
	BANKSEL	_SSCI2BUFR
	MOVZ	R0, _SSCI2BUFR
	BANKSEL	_SPI_Write_2Byte_buf_1_1
	MOV	_SPI_Write_2Byte_buf_1_1, R0
	BANKSEL	_SPI_Write_2Byte_buf_1_1
	CLR	(_SPI_Write_2Byte_buf_1_1 + 1)
;	::->op : =
	.line	72; "../SoftSpi.c"	SSCI2BUFR=SPI_data; //将待发送的字节放入发送缓存中
	BANKSEL	_SPI_Write_2Byte_SPI_data_1_1
	MOVZ	R0, _SPI_Write_2Byte_SPI_data_1_1
	BANKSEL	_SSCI2BUFR
	MOV	_SSCI2BUFR, R0
;	::->op : LABEL
;	::->op : GET_VALUE_AT_ADDRESS
_00030_DS_
	.line	73; "../SoftSpi.c"	while(!SSCI2IF); //等待发送完毕后SSCIIF置位，
	BANKSEL	_EIF6_bits
	JB	_EIF6_bits, 4
	JMP	_00030_DS_
;	::->op :*  =
	.line	74; "../SoftSpi.c"	SSCI2IF=0;
	BANKSEL	_EIF6_bits
	CLR	_EIF6_bits, 4
;	::->op : CAST
	.line	75; "../SoftSpi.c"	buf =SSCI2BUFR;
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
	.line	103; "../SoftSpi.c"	Spi_CS_High(id);
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
	.def _SPI_Write_2Byte_function_end, debug, value=$

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
	.def _Spi_CS_Low_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Spi_CS_Low	;Function start
; 2 exit points
;	::->op : RECEIVE
	.line	49; "../SoftSpi.c"	void Spi_CS_Low(char id)
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : <
;signed compare: left < lit(0x1=1), size=1, mask=ff
	.line	51; "../SoftSpi.c"	switch(id)
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	ADD	R0,# 0x80
	ADD	R0,# 0x7f
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00020_DS_
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x5=5), size=1, mask=ff
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	ADD	R0,# 0x80
	ADD	R0,# 0x7b
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00020_DS_
;	::->op : -
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : JUMPTABLE
	MOV	R1,#high _00026_DS_
	MOV	R0,#_00026_DS_
	BANKSEL	r0x1004
	ADD	R0, r0x1004
	JNB	PSW, 0
	INC	R1
	TRAPPC3	$
	MOV	PCH, R1
	MOV	PCL, R0
_00026_DS_
	JMP	_00015_DS_
	JMP	_00016_DS_
	JMP	_00017_DS_
	JMP	_00018_DS_
;	::->op : LABEL
;	::->op :*  =
_00015_DS_
	.line	53; "../SoftSpi.c"	case 1:CS1LOW;break;
	BANKSEL	_P0LR_bits
	CLR	_P0LR_bits, 4
;	::->op : GOTO
	JMP	_00020_DS_
;	::->op : LABEL
;	::->op :*  =
_00016_DS_
	.line	54; "../SoftSpi.c"	case 2:CS2LOW;break;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 2
;	::->op : GOTO
	JMP	_00020_DS_
;	::->op : LABEL
;	::->op :*  =
_00017_DS_
	.line	55; "../SoftSpi.c"	case 3:CS4LOW;break;
	BANKSEL	_PALR_bits
	CLR	_PALR_bits, 1
;	::->op : GOTO
	JMP	_00020_DS_
;	::->op : LABEL
;	::->op :*  =
_00018_DS_
	.line	56; "../SoftSpi.c"	case 4:CS3LOW;break;
	BANKSEL	_P1LR_bits
	CLR	_P1LR_bits, 0
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00020_DS_
	.line	57; "../SoftSpi.c"	}
	CRET	
	.def _Spi_CS_Low_function_end, debug, value=$

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
	.def _Spi_CS_High_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_Spi_CS_High	;Function start
; 2 exit points
;	::->op : RECEIVE
	.line	39; "../SoftSpi.c"	void Spi_CS_High(char id)
	BANKSEL	r0x1004
	MOV	r0x1004, R0
;	::->op : <
;signed compare: left < lit(0x1=1), size=1, mask=ff
	.line	41; "../SoftSpi.c"	switch(id)
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	ADD	R0,# 0x80
	ADD	R0,# 0x7f
;comparing bytes at offset 0
	JB	PSW, 0
	JMP	_00008_DS_
;	::->op : >
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x5=5), size=1, mask=ff
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	ADD	R0,# 0x80
	ADD	R0,# 0x7b
;comparing bytes at offset 0
	JNB	PSW, 0
	JMP	_00008_DS_
;	::->op : -
	BANKSEL	r0x1004
	DEC	r0x1004
;	::->op : JUMPTABLE
	MOV	R1,#high _00014_DS_
	MOV	R0,#_00014_DS_
	BANKSEL	r0x1004
	ADD	R0, r0x1004
	JNB	PSW, 0
	INC	R1
	TRAPPC3	$
	MOV	PCH, R1
	MOV	PCL, R0
_00014_DS_
	JMP	_00003_DS_
	JMP	_00004_DS_
	JMP	_00005_DS_
	JMP	_00006_DS_
;	::->op : LABEL
;	::->op :*  =
_00003_DS_
	.line	43; "../SoftSpi.c"	case 1:CS1HIGH;break;
	BANKSEL	_P0LR_bits
	SET	_P0LR_bits, 4
;	::->op : GOTO
	JMP	_00008_DS_
;	::->op : LABEL
;	::->op :*  =
_00004_DS_
	.line	44; "../SoftSpi.c"	case 2:CS2HIGH;break;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 2
;	::->op : GOTO
	JMP	_00008_DS_
;	::->op : LABEL
;	::->op :*  =
_00005_DS_
	.line	45; "../SoftSpi.c"	case 3:CS4HIGH;break;
	BANKSEL	_PALR_bits
	SET	_PALR_bits, 1
;	::->op : GOTO
	JMP	_00008_DS_
;	::->op : LABEL
;	::->op :*  =
_00006_DS_
	.line	46; "../SoftSpi.c"	case 4:CS3HIGH;break;
	BANKSEL	_P1LR_bits
	SET	_P1LR_bits, 0
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00008_DS_
	.line	47; "../SoftSpi.c"	}
	CRET	
	.def _Spi_CS_High_function_end, debug, value=$

; exit point of _Spi_CS_High



func._spi_init	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _spi_init	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
	.def _spi_init_function_begin, debug, value=$

;	::->op : LABEL
;	::->op : FUNCTION
_spi_init	;Function start
; 2 exit points
;	::->op :*  =
	.line	16; "../SoftSpi.c"	TR92 =1;
	BANKSEL	_TR9_bits
	SET	_TR9_bits, 2
;	::->op :*  =
	.line	17; "../SoftSpi.c"	TR91 =0;
	BANKSEL	_TR9_bits
	CLR	_TR9_bits, 1
;	::->op :*  =
	.line	18; "../SoftSpi.c"	TR03 =0;
	BANKSEL	_TR0_bits
	CLR	_TR0_bits, 3
;	::->op :*  =
	.line	19; "../SoftSpi.c"	TR04 =0;
	BANKSEL	_TR0_bits
	CLR	_TR0_bits, 4
;	::->op :*  =
	.line	20; "../SoftSpi.c"	TR62 =0;
	BANKSEL	_TR6_bits
	CLR	_TR6_bits, 2
;	::->op : =
	.line	21; "../SoftSpi.c"	APFCTL9 =0x6E;
	MOV	R0,# 0x6e
	BANKSEL	_APFCTL9
	MOV	_APFCTL9, R0
;	::->op :*  =
	.line	23; "../SoftSpi.c"	SSCI2EN=0;				//关闭SPI模块，初始化完之后再打开
	BANKSEL	_SSCI2CTL0_bits
	CLR	_SSCI2CTL0_bits, 5
;	::->op : =
	.line	25; "../SoftSpi.c"	SSCI2CTL0=0X01;			//SPI 主控模式，时钟 = 工作时钟/64
	MOV	R0,# 0x01
	BANKSEL	_SSCI2CTL0
	MOV	_SSCI2CTL0, R0
;	::->op : =
	.line	26; "../SoftSpi.c"	SSCI2CTL1=0X00;
	BANKSEL	_SSCI2CTL1
	CLR	_SSCI2CTL1
;	::->op : =
	.line	27; "../SoftSpi.c"	SSCI2CTL2=0X00;
	BANKSEL	_SSCI2CTL2
	CLR	_SSCI2CTL2
;	::->op : =
	.line	28; "../SoftSpi.c"	SSCI2STA=0X40;  //空闲时为低电平，在SCL下降沿发送数据
	MOV	R0,# 0x40
	BANKSEL	_SSCI2STA
	MOV	_SSCI2STA, R0
;	::->op :*  =
	.line	30; "../SoftSpi.c"	SSCI2EN=1;
	BANKSEL	_SSCI2CTL0_bits
	SET	_SSCI2CTL0_bits, 5
;	::->op :*  =
	.line	32; "../SoftSpi.c"	SDB1=1;
	BANKSEL	_P1LR_bits
	SET	_P1LR_bits, 2
;	::->op :*  =
	.line	33; "../SoftSpi.c"	SDB2=1;
	BANKSEL	_P5LR_bits
	SET	_P5LR_bits, 5
;	::->op :*  =
	.line	34; "../SoftSpi.c"	CS1HIGH;
	BANKSEL	_P0LR_bits
	SET	_P0LR_bits, 4
;	::->op :*  =
	.line	35; "../SoftSpi.c"	CS2HIGH;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 2
;	::->op :*  =
	.line	36; "../SoftSpi.c"	CS3HIGH;
	BANKSEL	_P1LR_bits
	SET	_P1LR_bits, 0
;	::->op :*  =
	.line	37; "../SoftSpi.c"	CS4HIGH;
	BANKSEL	_PALR_bits
	SET	_PALR_bits, 1
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
	.def _spi_init_function_end, debug, value=$

; exit point of _spi_init


;	code size estimation:
;	 1006+  270 =  1276 instructions ( 3092 byte)

	.type _spi_init,  32
	.dim _spi_init, 1, (_spi_init_function_end&0xFF00)>>8, _spi_init_function_end&0xFF,0,14,0,38 , 1, 1
	.type _Spi_CS_High,  32
	.dim _Spi_CS_High, 1, (_Spi_CS_High_function_end&0xFF00)>>8, _Spi_CS_High_function_end&0xFF,0,39,0,48 , 1, 1
	.type _Spi_CS_Low,  32
	.dim _Spi_CS_Low, 1, (_Spi_CS_Low_function_end&0xFF00)>>8, _Spi_CS_Low_function_end&0xFF,0,49,0,58 , 1, 1
	.type _SPI_Write_2Byte,  32
	.dim _SPI_Write_2Byte, 1, (_SPI_Write_2Byte_function_end&0xFF00)>>8, _SPI_Write_2Byte_function_end&0xFF,0,59,0,104 , 1, 1
	.type _IS31FL3265B_Init,  32
	.dim _IS31FL3265B_Init, 1, (_IS31FL3265B_Init_function_end&0xFF00)>>8, _IS31FL3265B_Init_function_end&0xFF,0,105,0,112 , 1, 1
	.type _Tail_One_Init,  32
	.dim _Tail_One_Init, 1, (_Tail_One_Init_function_end&0xFF00)>>8, _Tail_One_Init_function_end&0xFF,0,113,0,131 , 1, 1
	.type _Tail_Two_Init,  32
	.dim _Tail_Two_Init, 1, (_Tail_Two_Init_function_end&0xFF00)>>8, _Tail_Two_Init_function_end&0xFF,0,132,0,150 , 1, 1
	.type _Rt_One_Init,  32
	.dim _Rt_One_Init, 1, (_Rt_One_Init_function_end&0xFF00)>>8, _Rt_One_Init_function_end&0xFF,0,151,0,169 , 1, 1
	.type _Rt_Two_Init,  32
	.dim _Rt_Two_Init, 1, (_Rt_Two_Init_function_end&0xFF00)>>8, _Rt_Two_Init_function_end&0xFF,0,170,0,188 , 1, 1
	.type _Tail_One_Work,  32
	.dim _Tail_One_Work, 1, (_Tail_One_Work_function_end&0xFF00)>>8, _Tail_One_Work_function_end&0xFF,0,189,0,204 , 1, 1
	.type _Tail_Two_Work,  32
	.dim _Tail_Two_Work, 1, (_Tail_Two_Work_function_end&0xFF00)>>8, _Tail_Two_Work_function_end&0xFF,0,205,0,220 , 1, 1
	.type _Rt_One_Work,  32
	.dim _Rt_One_Work, 1, (_Rt_One_Work_function_end&0xFF00)>>8, _Rt_One_Work_function_end&0xFF,0,221,0,235 , 1, 1
	.type _Rt_Two_Work,  32
	.dim _Rt_Two_Work, 1, (_Rt_Two_Work_function_end&0xFF00)>>8, _Rt_Two_Work_function_end&0xFF,0,236,0,251 , 1, 1
	.type _breathtest,  32
	.dim _breathtest, 1, (_breathtest_function_end&0xFF00)>>8, _breathtest_function_end&0xFF,0,252,1,20 , 1, 1
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
