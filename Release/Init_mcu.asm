;--------------------------------------------------------
; File Created by ChiponCC : ChipON  inc.
;--------------------------------------------------------
; chipon port for the 16-bit core
;--------------------------------------------------------
;	.file	"../Init_mcu.c"
	.radix dec
	.include "KF8A100GQS.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.extern	_Init_Sys_clk
	.extern	_IS31FL3265B_Init
	.extern	_Init_SPI
	.extern	_SPI_Write_1Byte
	.extern	_SPI_Read_1Byte
	.extern	_delay_10us
	.extern	_All_tail_on
	.extern	_All_tail_off
	.extern	_All_rt_on
	.extern	_All_rt_off
	.extern	_All_stop_on
	.extern	_All_stop_off
	.extern	_Exe_mode
	.extern	_check_input
	.extern	_Reflash_rt_flow
	.extern	_LED_Hello
	.extern	_LED_ByeBye
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
	.extern	_mode_rt
	.extern	_mode_tail
	.extern	_mode_stop
	.extern	_Mode_o
	.extern	_Mode
	.extern	_RT_cnt
	.extern	_RT_ctl
	.extern	_RT_ctl_1
	.extern	_PWM_cnt
	.extern	_stop_ctl
	.extern	_stop_ctl_h
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
	.global	_Init_T2
	.global	_Init_T1
	.global	_Init_T0
	.global	_Init_IO
	.global	_delay_10ms
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
UDL_Init_mcu_0	.udata
r0x1001	.res	1
UDL_Init_mcu_1	.udata
r0x1000	.res	1
UDL_Init_mcu_2	.udata
r0x1002	.res	1
UDL_Init_mcu_3	.udata
r0x1003	.res	1
UDL_Init_mcu_4	.udata
r0x1004	.res	1
UDL_Init_mcu_5	.udata
r0x1005	.res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	.udata_ovr


func._Init_T2	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Init_T2	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Init_T2	;Function start
; 2 exit points
;	::->op : =
;	.line	107; "../Init_mcu.c"	T2CTL1 =0x02;
	MOV	R0,# 0x02
	BANKSEL	_T2CTL1
	MOV	_T2CTL1, R0
;	::->op : =
;	.line	108; "../Init_mcu.c"	T2H =0;
	BANKSEL	_T2H
	CLR	_T2H
;	::->op : =
;	.line	109; "../Init_mcu.c"	T2L =0;
	BANKSEL	_T2L
	CLR	_T2L
;	::->op : =
;	.line	110; "../Init_mcu.c"	PP60H =0x03;
	MOV	R0,# 0x03
	BANKSEL	_PP60H
	MOV	_PP60H, R0
;	::->op : =
;	.line	111; "../Init_mcu.c"	PP60L =0xE8; //1ms
	MOV	R0,# 0xe8
	BANKSEL	_PP60L
	MOV	_PP60L, R0
;	::->op : =
;	.line	112; "../Init_mcu.c"	T2CTL0 =0x03; //1M
	MOV	R0,# 0x03
	BANKSEL	_T2CTL0
	MOV	_T2CTL0, R0
;	::->op :*  =
;	.line	113; "../Init_mcu.c"	T2ON =1;
	BANKSEL	_T2CTL0_bits
	SET	_T2CTL0_bits, 2
;	::->op :*  =
;	.line	114; "../Init_mcu.c"	T2IF =0;
	BANKSEL	_EIF1_bits
	CLR	_EIF1_bits, 1
;	::->op :*  =
;	.line	115; "../Init_mcu.c"	T2IE =1;
	BANKSEL	_EIE1_bits
	SET	_EIE1_bits, 1
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Init_T2



func._Init_T1	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Init_T1	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Init_T1	;Function start
; 2 exit points
;	::->op : =
;	.line	97; "../Init_mcu.c"	T1CTL2 =0; //4M
	BANKSEL	_T1CTL2
	CLR	_T1CTL2
;	::->op : =
;	.line	98; "../Init_mcu.c"	T1H = 0xF1;
	MOV	R0,# 0xf1
	BANKSEL	_T1H
	MOV	_T1H, R0
;	::->op : =
;	.line	99; "../Init_mcu.c"	T1L = 0xA9;
	MOV	R0,# 0xa9
	BANKSEL	_T1L
	MOV	_T1L, R0
;	::->op : =
;	.line	100; "../Init_mcu.c"	T1CTL =0x01;
	MOV	R0,# 0x01
	BANKSEL	_T1CTL
	MOV	_T1CTL, R0
;	::->op :*  =
;	.line	101; "../Init_mcu.c"	T1IF =0;
	BANKSEL	_EIF1_bits
	CLR	_EIF1_bits, 0
;	::->op :*  =
;	.line	102; "../Init_mcu.c"	T1IE =1;
	BANKSEL	_EIE1_bits
	SET	_EIE1_bits, 0
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Init_T1



func._Init_T0	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Init_T0	;Function start
; 2 exit points
;has an exit
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Init_T0	;Function start
; 2 exit points
;	::->op : =
;	.line	88; "../Init_mcu.c"	OPTR =0x83; //4uS
	MOV	R0,# 0x83
	BANKSEL	_OPTR
	MOV	_OPTR, R0
;	::->op : =
;	.line	89; "../Init_mcu.c"	T0CTL =0;
	BANKSEL	_T0CTL
	CLR	_T0CTL
;	::->op : =
;	.line	90; "../Init_mcu.c"	T0 =0;
	BANKSEL	_T0
	CLR	_T0
;	::->op :*  =
;	.line	91; "../Init_mcu.c"	T0IF =0;
	BANKSEL	_INTCTL_bits
	CLR	_INTCTL_bits, 2
;	::->op :*  =
;	.line	92; "../Init_mcu.c"	T0IE =1;
	BANKSEL	_INTCTL_bits
	SET	_INTCTL_bits, 5
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Init_T0



func._Init_IO	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _Init_IO	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay_10ms
;   _delay_10ms
;1 compiler assigned register :
;   STK00
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Init_IO	;Function start
; 2 exit points
;	::->op : =
;	.line	40; "../Init_mcu.c"	TR0 =0xFF;//仿真口设置为输入
	MOV	R0,# 0xff
	BANKSEL	_TR0
	MOV	_TR0, R0
;	::->op : =
;	.line	41; "../Init_mcu.c"	ANS0 =0;
	BANKSEL	_ANS0
	CLR	_ANS0
;	::->op : =
;	.line	43; "../Init_mcu.c"	TR1=0x02;
	MOV	R0,# 0x02
	BANKSEL	_TR1
	MOV	_TR1, R0
;	::->op : =
;	.line	44; "../Init_mcu.c"	ANS1=0;
	BANKSEL	_ANS1
	CLR	_ANS1
;	::->op : =
;	.line	45; "../Init_mcu.c"	P1LR=0;
	BANKSEL	_P1LR
	CLR	_P1LR
;	::->op : =
;	.line	47; "../Init_mcu.c"	TR2=0;
	BANKSEL	_TR2
	CLR	_TR2
;	::->op : =
;	.line	48; "../Init_mcu.c"	ANS2=0;
	BANKSEL	_ANS2
	CLR	_ANS2
;	::->op : =
;	.line	49; "../Init_mcu.c"	P2LR=0;
	BANKSEL	_P2LR
	CLR	_P2LR
;	::->op : =
;	.line	51; "../Init_mcu.c"	TR3=0;
	BANKSEL	_TR3
	CLR	_TR3
;	::->op : =
;	.line	52; "../Init_mcu.c"	ANS3=0;
	BANKSEL	_ANS3
	CLR	_ANS3
;	::->op : =
;	.line	53; "../Init_mcu.c"	P3LR=0;
	BANKSEL	_P3LR
	CLR	_P3LR
;	::->op : =
;	.line	55; "../Init_mcu.c"	TR4=0X10; //lin_rxd设置为输入、lin_txd设置为输出
	MOV	R0,# 0x10
	BANKSEL	_TR4
	MOV	_TR4, R0
;	::->op : =
;	.line	56; "../Init_mcu.c"	ANS4=0;
	BANKSEL	_ANS4
	CLR	_ANS4
;	::->op : =
;	.line	57; "../Init_mcu.c"	P4LR=0;
	BANKSEL	_P4LR
	CLR	_P4LR
;	::->op : =
;	.line	59; "../Init_mcu.c"	TR5=0x02;
	MOV	R0,# 0x02
	BANKSEL	_TR5
	MOV	_TR5, R0
;	::->op : =
;	.line	60; "../Init_mcu.c"	ANS5=0;
	BANKSEL	_ANS5
	CLR	_ANS5
;	::->op : =
;	.line	61; "../Init_mcu.c"	P5LR=0;
	BANKSEL	_P5LR
	CLR	_P5LR
;	::->op : =
;	.line	63; "../Init_mcu.c"	TR6=0;//按键检测口也设置为输入
	BANKSEL	_TR6
	CLR	_TR6
;	::->op : =
;	.line	64; "../Init_mcu.c"	ANS6=0;
	BANKSEL	_ANS6
	CLR	_ANS6
;	::->op : =
;	.line	65; "../Init_mcu.c"	P6LR=0;
	BANKSEL	_P6LR
	CLR	_P6LR
;	::->op : =
;	.line	67; "../Init_mcu.c"	TR7=0x06;
	MOV	R0,# 0x06
	BANKSEL	_TR7
	MOV	_TR7, R0
;	::->op : =
;	.line	68; "../Init_mcu.c"	ANS7=0;
	BANKSEL	_ANS7
	CLR	_ANS7
;	::->op : =
;	.line	69; "../Init_mcu.c"	P7LR=0;
	BANKSEL	_P7LR
	CLR	_P7LR
;	::->op : =
;	.line	71; "../Init_mcu.c"	TR9=0X0E;
	MOV	R0,# 0x0e
	BANKSEL	_TR9
	MOV	_TR9, R0
;	::->op : =
;	.line	72; "../Init_mcu.c"	ANS9=0;
	BANKSEL	_ANS9
	CLR	_ANS9
;	::->op : =
;	.line	73; "../Init_mcu.c"	P9LR=0;
	BANKSEL	_P9LR
	CLR	_P9LR
;	::->op : =
;	.line	75; "../Init_mcu.c"	TRA=0x01;
	MOV	R0,# 0x01
	BANKSEL	_TRA
	MOV	_TRA, R0
;	::->op : =
;	.line	76; "../Init_mcu.c"	ANSA=0;
	BANKSEL	_ANSA
	CLR	_ANSA
;	::->op : =
;	.line	77; "../Init_mcu.c"	PALR=0;
	BANKSEL	_PALR
	CLR	_PALR
;	::->op : =
;	.line	79; "../Init_mcu.c"	TRB=0;
	BANKSEL	_TRB
	CLR	_TRB
;	::->op : =
;	.line	80; "../Init_mcu.c"	ANSB=0;
	BANKSEL	_ANSB
	CLR	_ANSB
;	::->op : =
;	.line	81; "../Init_mcu.c"	PBLR=0;
	BANKSEL	_PBLR
	CLR	_PBLR
;	::->op : SEND
;	::->op : CALL
;	.line	83; "../Init_mcu.c"	delay_10ms(1);//LIN驱动芯片必须先使能一段时间后，才能输出驱动电平。
	MOV	R0,# 0x01
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x00
	TRAPPC1	_delay_10ms
	TRAPPC2	_delay_10ms
	PAGESEL	_delay_10ms
	CALL	_delay_10ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Init_IO



func._delay_10ms	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _delay_10ms	;Function start
; 2 exit points
;has an exit
;7 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_delay_10ms	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	26; "../Init_mcu.c"	void delay_10ms(unsigned int time)
	BANKSEL	r0x1000
	MOV	r0x1000, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x1001
	MOV	r0x1001, R0
;	::->op : =
;	::->op : LABEL
;	::->op : =
_00004_DS_
;	.line	30; "../Init_mcu.c"	while(i--)
	BANKSEL	r0x1001
	MOVZ	R0, r0x1001
	BANKSEL	r0x1002
	MOV	r0x1002, R0
	BANKSEL	r0x1000
	MOVZ	R0, r0x1000
	BANKSEL	r0x1003
	MOV	r0x1003, R0
;	::->op : -
	MOV	R0,# 0xff
	BANKSEL	r0x1001
	ADD	r0x1001, R0
	JNB	PSW, 0
	JMP	_00022_DS_
	BANKSEL	r0x1000
	DEC	r0x1000
;	::->op : IFX
_00022_DS_
	BANKSEL	r0x1002
	MOVZ	R0, r0x1002
	BANKSEL	r0x1003
	ORL	R0, r0x1003
	JNB	PSW, 2
	JMP	_00007_DS_
;	::->op : =
;	.line	33; "../Init_mcu.c"	while(k--)
	MOV	R0,# 0xc4
	BANKSEL	r0x1002
	MOV	r0x1002, R0
	MOV	R0,# 0x09
	BANKSEL	r0x1003
	MOV	r0x1003, R0
;	::->op : LABEL
;	::->op : =
_00001_DS_
	BANKSEL	r0x1002
	MOVZ	R0, r0x1002
	BANKSEL	r0x1004
	MOV	r0x1004, R0
	BANKSEL	r0x1003
	MOVZ	R0, r0x1003
	BANKSEL	r0x1005
	MOV	r0x1005, R0
;	::->op : -
	MOV	R0,# 0xff
	BANKSEL	r0x1002
	ADD	r0x1002, R0
	JNB	PSW, 0
	JMP	_00023_DS_
	BANKSEL	r0x1003
	DEC	r0x1003
;	::->op : IFX
_00023_DS_
	BANKSEL	r0x1004
	MOVZ	R0, r0x1004
	BANKSEL	r0x1005
	ORL	R0, r0x1005
	JNB	PSW, 2
	JMP	_00004_DS_
;	::->op : INLINEASM
	NOP 
;	::->op : GOTO
	JMP	_00001_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00007_DS_
	CRET	
; exit point of _delay_10ms


;	code size estimation:
;	  116+   74 =   190 instructions (  528 byte)


	.end
