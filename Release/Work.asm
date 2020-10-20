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
	.extern	_LED_Stop_PWMOpen
	.extern	_Led_RT_AllOpen
	.extern	_Led_RT_AllClose
	.extern	_Led_RT_WaterOpen
	.extern	_Led_Tail_AllOpen
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
	.global	_Timer_PWM_Callback
	.global	_Mode_Act
	.global	_Tail_Stop_Check_Input
	.global	_RT_Mode_Act
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
	.global	_Stop_High_Addr
	.global	_Stop_Low_Addr
	.global	_Tail_Status
	.global	_Stop_Status
	.global	_RT_Status
	.global	_RT_EN_Status
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
_Stop_High_Addr	.res	2

UD_Work_2	.udata
_Tail_Status	.res	1

UD_Work_3	.udata
_Stop_Status	.res	1

UD_Work_4	.udata
_RT_Status	.res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_Work_0	.udata
r0x101C	.res	1
UDL_Work_1	.udata
r0x101B	.res	1
UDL_Work_2	.udata
r0x101D	.res	1
UDL_Work_3	.udata
r0x101E	.res	1
UDL_Work_4	.udata
r0x1023	.res	1
UDL_Work_5	.udata
r0x1022	.res	1
UDL_Work_6	.udata
r0x1021	.res	1
UDL_Work_7	.udata
r0x1020	.res	1
UDL_Work_8	.udata
r0x101F	.res	1
UDL_Work_9	.udata
_delay_ms_i_1_1	.res	2
UDL_Work_10	.udata
_delay_ms_j_1_1	.res	2
UDL_Work_11	.udata
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
_PWM_Timer_Flag
	.db	0x00


ID_Work_7	.idata
_Stop_Low_Addr
	.db	0x00, 0x00


ID_Work_8	.idata
_RT_EN_Status
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
;   r0x101F
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Led_Hello_Check	;Function start
; 2 exit points
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	329; "../Work.c"	Tail_Status = Tail;
	BANKSEL	r0x101F
	CLR	r0x101F
	BANKSEL	_P7_bits
	JB	_P7_bits, 1
	JMP	_00230_DS_
	BANKSEL	r0x101F
	INC	r0x101F
;	::->op : =
_00230_DS_
	BANKSEL	r0x101F
	MOVZ	R0, r0x101F
	BANKSEL	_Tail_Status
	MOV	_Tail_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	330; "../Work.c"	Stop_Status = Stop;
	BANKSEL	r0x101F
	CLR	r0x101F
	BANKSEL	_P7_bits
	JB	_P7_bits, 2
	JMP	_00231_DS_
	BANKSEL	r0x101F
	INC	r0x101F
;	::->op : =
_00231_DS_
	BANKSEL	r0x101F
	MOVZ	R0, r0x101F
	BANKSEL	_Stop_Status
	MOV	_Stop_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	331; "../Work.c"	RT_Status = RT;
	BANKSEL	r0x101F
	CLR	r0x101F
	BANKSEL	_PA_bits
	JB	_PA_bits, 0
	JMP	_00232_DS_
	BANKSEL	r0x101F
	INC	r0x101F
;	::->op : =
_00232_DS_
	BANKSEL	r0x101F
	MOVZ	R0, r0x101F
	BANKSEL	_RT_Status
	MOV	_RT_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	332; "../Work.c"	RT_EN_Status = RT_EN;
	BANKSEL	r0x101F
	CLR	r0x101F
	BANKSEL	_P5_bits
	JB	_P5_bits, 1
	JMP	_00233_DS_
	BANKSEL	r0x101F
	INC	r0x101F
;	::->op : =
_00233_DS_
	BANKSEL	r0x101F
	MOVZ	R0, r0x101F
	BANKSEL	_RT_EN_Status
	MOV	_RT_EN_Status, R0
;	::->op : EQ_OP
;	.line	333; "../Work.c"	if(Tail_Status==1&&Stop_Status==1&&RT_Status==1&&RT_EN_Status==0)
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00211_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00211_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00211_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_RT_EN_Status
	ORL	R0, _RT_EN_Status
	JB	PSW, 2
	JMP	_00211_DS_
;	::->op : CALL
;	.line	335; "../Work.c"	Led_Hello();
	TRAPPC1	_Led_Hello
	TRAPPC2	_Led_Hello
	PAGESEL	_Led_Hello
	CALL	_Led_Hello
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : EQ_OP
_00211_DS_
;	.line	337; "../Work.c"	if(Tail_Status==1&&Stop_Status==1&&RT_Status==1&&RT_EN_Status==1)
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00220_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00220_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00220_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_EN_Status
	MOVZ	R0, _RT_EN_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00220_DS_
;	::->op : CALL
;	.line	339; "../Work.c"	Led_Bye();
	TRAPPC1	_Led_Bye
	TRAPPC2	_Led_Bye
	PAGESEL	_Led_Bye
	CALL	_Led_Bye
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00220_DS_
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
;   _Led_RT_WaterOpen
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail_LowWater_Blinky
;   _delay_ms
;   _Tail1_2_Stop_BackWater_Close
;   _delay_ms
;   _Tail1_2_Stop_FullWater_Close
;   _delay_ms
;   _Tail12_Breath_Close
;   _Led_Tail_AllOpen
;   _LED_Stop_AllOpen
;   _delay_ms
;   _Led_RT_WaterOpen
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail_LowWater_Blinky
;   _delay_ms
;   _Tail1_2_Stop_BackWater_Close
;   _delay_ms
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
;	.line	311; "../Work.c"	Led_Tail_AllOpen();
	TRAPPC1	_Led_Tail_AllOpen
	TRAPPC2	_Led_Tail_AllOpen
	PAGESEL	_Led_Tail_AllOpen
	CALL	_Led_Tail_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	312; "../Work.c"	LED_Stop_AllOpen();
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	313; "../Work.c"	delay_ms(1000);
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
;	.line	314; "../Work.c"	Led_RT_WaterOpen();
	TRAPPC1	_Led_RT_WaterOpen
	TRAPPC2	_Led_RT_WaterOpen
	PAGESEL	_Led_RT_WaterOpen
	CALL	_Led_RT_WaterOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	315; "../Work.c"	delay_ms(200);
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
;	.line	316; "../Work.c"	Led_RT_AllClose();
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	317; "../Work.c"	delay_ms(200);
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
;	.line	318; "../Work.c"	Tail_LowWater_Blinky();
	TRAPPC1	_Tail_LowWater_Blinky
	TRAPPC2	_Tail_LowWater_Blinky
	PAGESEL	_Tail_LowWater_Blinky
	CALL	_Tail_LowWater_Blinky
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	319; "../Work.c"	delay_ms(1700);
	MOV	R0,# 0xa4
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x06
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	320; "../Work.c"	Tail1_2_Stop_BackWater_Close();
	TRAPPC1	_Tail1_2_Stop_BackWater_Close
	TRAPPC2	_Tail1_2_Stop_BackWater_Close
	PAGESEL	_Tail1_2_Stop_BackWater_Close
	CALL	_Tail1_2_Stop_BackWater_Close
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	321; "../Work.c"	delay_ms(1160);
	MOV	R0,# 0x88
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x04
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	322; "../Work.c"	Tail1_2_Stop_FullWater_Close();
	TRAPPC1	_Tail1_2_Stop_FullWater_Close
	TRAPPC2	_Tail1_2_Stop_FullWater_Close
	PAGESEL	_Tail1_2_Stop_FullWater_Close
	CALL	_Tail1_2_Stop_FullWater_Close
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	323; "../Work.c"	delay_ms(1000);
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
;	.line	324; "../Work.c"	Tail12_Breath_Close();
	TRAPPC1	_Tail12_Breath_Close
	TRAPPC2	_Tail12_Breath_Close
	PAGESEL	_Tail12_Breath_Close
	CALL	_Tail12_Breath_Close
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : GOTO
_00205_DS_
	JMP	_00205_DS_
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
;   _Led_RT_WaterOpen
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Led_RT_WaterOpen
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail12_Breath_Open
;   _delay_ms
;   _Tail_LowWater_Open
;   _delay_ms
;   _Tail_HighWater_Open
;   _delay_ms
;   _Stop_HighBackWater_Open
;   _Tail1_FullBackWater_Open
;   _Tail2_Stop_FullWater_Open
;   _Led_RT_WaterOpen
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Led_RT_WaterOpen
;   _delay_ms
;   _Led_RT_AllClose
;   _delay_ms
;   _Tail12_Breath_Open
;   _delay_ms
;   _Tail_LowWater_Open
;   _delay_ms
;   _Tail_HighWater_Open
;   _delay_ms
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
;	.line	290; "../Work.c"	Led_RT_WaterOpen();
	TRAPPC1	_Led_RT_WaterOpen
	TRAPPC2	_Led_RT_WaterOpen
	PAGESEL	_Led_RT_WaterOpen
	CALL	_Led_RT_WaterOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	291; "../Work.c"	delay_ms(200);
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
;	.line	292; "../Work.c"	Led_RT_AllClose();
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	293; "../Work.c"	delay_ms(300);
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
;	.line	294; "../Work.c"	Led_RT_WaterOpen();
	TRAPPC1	_Led_RT_WaterOpen
	TRAPPC2	_Led_RT_WaterOpen
	PAGESEL	_Led_RT_WaterOpen
	CALL	_Led_RT_WaterOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	295; "../Work.c"	delay_ms(200);
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
;	.line	296; "../Work.c"	Led_RT_AllClose();
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	297; "../Work.c"	delay_ms(300);
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
;	.line	298; "../Work.c"	Tail12_Breath_Open();
	TRAPPC1	_Tail12_Breath_Open
	TRAPPC2	_Tail12_Breath_Open
	PAGESEL	_Tail12_Breath_Open
	CALL	_Tail12_Breath_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	299; "../Work.c"	delay_ms(200);
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
;	.line	300; "../Work.c"	Tail_LowWater_Open();
	TRAPPC1	_Tail_LowWater_Open
	TRAPPC2	_Tail_LowWater_Open
	PAGESEL	_Tail_LowWater_Open
	CALL	_Tail_LowWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	301; "../Work.c"	delay_ms(300);
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
;	.line	302; "../Work.c"	Tail_HighWater_Open();
	TRAPPC1	_Tail_HighWater_Open
	TRAPPC2	_Tail_HighWater_Open
	PAGESEL	_Tail_HighWater_Open
	CALL	_Tail_HighWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : SEND
;	::->op : CALL
;	.line	303; "../Work.c"	delay_ms(1300);
	MOV	R0,# 0x14
	BANKSEL	STK00
	MOV	STK00, R0
	MOV	R0,# 0x05
	TRAPPC1	_delay_ms
	TRAPPC2	_delay_ms
	PAGESEL	_delay_ms
	CALL	_delay_ms
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	304; "../Work.c"	Stop_HighBackWater_Open();
	TRAPPC1	_Stop_HighBackWater_Open
	TRAPPC2	_Stop_HighBackWater_Open
	PAGESEL	_Stop_HighBackWater_Open
	CALL	_Stop_HighBackWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	305; "../Work.c"	Tail1_FullBackWater_Open();
	TRAPPC1	_Tail1_FullBackWater_Open
	TRAPPC2	_Tail1_FullBackWater_Open
	PAGESEL	_Tail1_FullBackWater_Open
	CALL	_Tail1_FullBackWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	306; "../Work.c"	Tail2_Stop_FullWater_Open();
	TRAPPC1	_Tail2_Stop_FullWater_Open
	TRAPPC2	_Tail2_Stop_FullWater_Open
	PAGESEL	_Tail2_Stop_FullWater_Open
	CALL	_Tail2_Stop_FullWater_Open
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : GOTO
_00199_DS_
	JMP	_00199_DS_
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Led_Hello



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
;	.line	227; "../Work.c"	if(PWM_Timer_Flag)
	MOV	R0,# 0x00
	BANKSEL	_PWM_Timer_Flag
	ORL	R0, _PWM_Timer_Flag
	JNB	PSW, 2
	JMP	_00169_DS_
;	::->op : =
;	.line	229; "../Work.c"	PWM_Timer_Flag =0;
	BANKSEL	_PWM_Timer_Flag
	CLR	_PWM_Timer_Flag
;	::->op : =
;	.line	230; "../Work.c"	T1H = 0xF1;
	MOV	R0,# 0xf1
	BANKSEL	_T1H
	MOV	_T1H, R0
;	::->op : =
;	.line	231; "../Work.c"	T1L = 0x60;
	MOV	R0,# 0x60
;	.line	232; "../Work.c"	if(Stop_High_Addr & LED1ADDR)
	BANKSEL	_T1L
	MOV	_T1L, R0
;	.line	233; "../Work.c"	LED1LOW;
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 0
	JMP	_00234_DS_
;	.line	234; "../Work.c"	if(Stop_High_Addr & LED2ADDR)
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 3
_00234_DS_
;	.line	235; "../Work.c"	LED2LOW;
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 1
	JMP	_00235_DS_
;	.line	236; "../Work.c"	if(Stop_High_Addr & LED3ADDR)
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 4
_00235_DS_
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 2
	JMP	_00125_DS_
;	::->op :*  =
;	.line	237; "../Work.c"	LED3LOW;
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 0
;	::->op : LABEL
;	::->op : BITWISEAND
_00125_DS_
;	.line	238; "../Work.c"	if(Stop_High_Addr & LED4ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 3
	JMP	_00127_DS_
;	::->op :*  =
;	.line	239; "../Work.c"	LED4LOW;
	BANKSEL	_P2LR_bits
	CLR	_P2LR_bits, 1
;	::->op : LABEL
;	::->op : BITWISEAND
_00127_DS_
;	.line	240; "../Work.c"	if(Stop_High_Addr & LED5ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 4
	JMP	_00129_DS_
;	::->op :*  =
;	.line	241; "../Work.c"	LED5LOW;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 1
;	::->op : LABEL
;	::->op : BITWISEAND
_00129_DS_
;	.line	242; "../Work.c"	if(Stop_High_Addr & LED6ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 5
	JMP	_00131_DS_
;	::->op :*  =
;	.line	243; "../Work.c"	LED6LOW;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 3
;	::->op : LABEL
;	::->op : BITWISEAND
_00131_DS_
;	.line	244; "../Work.c"	if(Stop_High_Addr & LED7ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 6
	JMP	_00133_DS_
;	::->op :*  =
;	.line	245; "../Work.c"	LED7LOW;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 5
;	::->op : LABEL
;	::->op : BITWISEAND
_00133_DS_
;	.line	246; "../Work.c"	if(Stop_High_Addr & LED8ADDR)
	BANKSEL	_Stop_High_Addr
	JB	_Stop_High_Addr, 7
	JMP	_00135_DS_
;	::->op :*  =
;	.line	247; "../Work.c"	LED8LOW;
	BANKSEL	_P6LR_bits
	CLR	_P6LR_bits, 6
;	::->op : LABEL
;	::->op : BITWISEAND
_00135_DS_
;	.line	248; "../Work.c"	if(Stop_High_Addr & LED9ADDR)
	BANKSEL	(_Stop_High_Addr + 1)
	JB	(_Stop_High_Addr + 1), 0
	JMP	_00137_DS_
;	::->op :*  =
;	.line	249; "../Work.c"	LED9LOW;
	BANKSEL	_P9LR_bits
	CLR	_P9LR_bits, 5
;	::->op : LABEL
;	::->op : BITWISEAND
_00137_DS_
;	.line	250; "../Work.c"	if(Stop_High_Addr & LED10ADDR)
	BANKSEL	(_Stop_High_Addr + 1)
	JB	(_Stop_High_Addr + 1), 1
	JMP	_00139_DS_
;	::->op :*  =
;	.line	251; "../Work.c"	LED10LOW;
	BANKSEL	_P9LR_bits
	CLR	_P9LR_bits, 4
;	::->op : LABEL
;	::->op : BITWISEAND
_00139_DS_
;	.line	252; "../Work.c"	if(Stop_High_Addr & LED11ADDR)
	BANKSEL	(_Stop_High_Addr + 1)
	JB	(_Stop_High_Addr + 1), 2
	JMP	_00141_DS_
;	::->op :*  =
;	.line	253; "../Work.c"	LED11LOW;
	BANKSEL	_P4LR_bits
	CLR	_P4LR_bits, 3
;	::->op : LABEL
;	::->op : BITWISEAND
_00141_DS_
;	.line	254; "../Work.c"	if(Stop_High_Addr & LED12ADDR)
	BANKSEL	(_Stop_High_Addr + 1)
	JB	(_Stop_High_Addr + 1), 3
	JMP	_00171_DS_
;	::->op :*  =
;	.line	255; "../Work.c"	LED12LOW;
	BANKSEL	_P4LR_bits
	CLR	_P4LR_bits, 5
;	::->op : GOTO
	JMP	_00171_DS_
;	::->op : LABEL
;	::->op : =
_00169_DS_
;	.line	259; "../Work.c"	PWM_Timer_Flag =1;
	MOV	R0,# 0x01
	BANKSEL	_PWM_Timer_Flag
	MOV	_PWM_Timer_Flag, R0
;	::->op : =
;	.line	260; "../Work.c"	T1H = 0xFF;
	MOV	R0,# 0xff
	BANKSEL	_T1H
	MOV	_T1H, R0
;	::->op : =
;	.line	261; "../Work.c"	T1L = 0x98;
	MOV	R0,# 0x98
;	.line	262; "../Work.c"	if(Stop_Low_Addr & LED1ADDR)
	BANKSEL	_T1L
	MOV	_T1L, R0
;	.line	263; "../Work.c"	LED1HIGH;
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 0
	JMP	_00236_DS_
;	.line	264; "../Work.c"	if(Stop_Low_Addr & LED2ADDR)
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 3
_00236_DS_
;	.line	265; "../Work.c"	LED2HIGH;
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 1
	JMP	_00237_DS_
;	.line	266; "../Work.c"	if(Stop_Low_Addr & LED3ADDR)
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 4
_00237_DS_
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 2
	JMP	_00149_DS_
;	::->op :*  =
;	.line	267; "../Work.c"	LED3HIGH;
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 0
;	::->op : LABEL
;	::->op : BITWISEAND
_00149_DS_
;	.line	268; "../Work.c"	if(Stop_Low_Addr & LED4ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 3
	JMP	_00151_DS_
;	::->op :*  =
;	.line	269; "../Work.c"	LED4HIGH;
	BANKSEL	_P2LR_bits
	SET	_P2LR_bits, 1
;	::->op : LABEL
;	::->op : BITWISEAND
_00151_DS_
;	.line	270; "../Work.c"	if(Stop_Low_Addr & LED5ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 4
	JMP	_00153_DS_
;	::->op :*  =
;	.line	271; "../Work.c"	LED5HIGH;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 1
;	::->op : LABEL
;	::->op : BITWISEAND
_00153_DS_
;	.line	272; "../Work.c"	if(Stop_Low_Addr & LED6ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 5
	JMP	_00155_DS_
;	::->op :*  =
;	.line	273; "../Work.c"	LED6HIGH;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 3
;	::->op : LABEL
;	::->op : BITWISEAND
_00155_DS_
;	.line	274; "../Work.c"	if(Stop_Low_Addr & LED7ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 6
	JMP	_00157_DS_
;	::->op :*  =
;	.line	275; "../Work.c"	LED7HIGH;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 5
;	::->op : LABEL
;	::->op : BITWISEAND
_00157_DS_
;	.line	276; "../Work.c"	if(Stop_Low_Addr & LED8ADDR)
	BANKSEL	_Stop_Low_Addr
	JB	_Stop_Low_Addr, 7
	JMP	_00159_DS_
;	::->op :*  =
;	.line	277; "../Work.c"	LED8HIGH;
	BANKSEL	_P6LR_bits
	SET	_P6LR_bits, 6
;	::->op : LABEL
;	::->op : BITWISEAND
_00159_DS_
;	.line	278; "../Work.c"	if(Stop_Low_Addr & LED9ADDR)
	BANKSEL	(_Stop_Low_Addr + 1)
	JB	(_Stop_Low_Addr + 1), 0
	JMP	_00161_DS_
;	::->op :*  =
;	.line	279; "../Work.c"	LED9HIGH;
	BANKSEL	_P9LR_bits
	SET	_P9LR_bits, 5
;	::->op : LABEL
;	::->op : BITWISEAND
_00161_DS_
;	.line	280; "../Work.c"	if(Stop_Low_Addr & LED10ADDR)
	BANKSEL	(_Stop_Low_Addr + 1)
	JB	(_Stop_Low_Addr + 1), 1
	JMP	_00163_DS_
;	::->op :*  =
;	.line	281; "../Work.c"	LED10HIGH;
	BANKSEL	_P9LR_bits
	SET	_P9LR_bits, 4
;	::->op : LABEL
;	::->op : BITWISEAND
_00163_DS_
;	.line	282; "../Work.c"	if(Stop_Low_Addr & LED11ADDR)
	BANKSEL	(_Stop_Low_Addr + 1)
	JB	(_Stop_Low_Addr + 1), 2
	JMP	_00165_DS_
;	::->op :*  =
;	.line	283; "../Work.c"	LED11HIGH;
	BANKSEL	_P4LR_bits
	SET	_P4LR_bits, 3
;	::->op : LABEL
;	::->op : BITWISEAND
_00165_DS_
;	.line	284; "../Work.c"	if(Stop_Low_Addr & LED12ADDR)
	BANKSEL	(_Stop_Low_Addr + 1)
	JB	(_Stop_Low_Addr + 1), 3
	JMP	_00171_DS_
;	::->op :*  =
;	.line	285; "../Work.c"	LED12HIGH;
	BANKSEL	_P4LR_bits
	SET	_P4LR_bits, 5
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00171_DS_
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
;	::->op : LABEL
;	::->op : FUNCTION
_Mode_Act	;Function start
; 2 exit points
;	::->op : EQ_OP
;	.line	204; "../Work.c"	switch(ActMode)
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00116_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00104_DS_
_00116_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00117_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00105_DS_
_00117_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00118_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00106_DS_
_00118_DS_
	BANKSEL	_ActMode
	MOVZ	R0, _ActMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00119_DS_
	BANKSEL	_ActMode
	MOVZ	R0, (_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00107_DS_
_00119_DS_
	JMP	_00110_DS_
_00104_DS_
;	.line	207; "../Work.c"	Led_Tail_AllClose();	//位置灯全关闭
	TRAPPC1	_Led_Tail_AllClose
	TRAPPC2	_Led_Tail_AllClose
	PAGESEL	_Led_Tail_AllClose
	CALL	_Led_Tail_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	208; "../Work.c"	LED_Stop_AllClose();	//制动灯全关闭
	TRAPPC1	_LED_Stop_AllClose
	TRAPPC2	_LED_Stop_AllClose
	PAGESEL	_LED_Stop_AllClose
	CALL	_LED_Stop_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	209; "../Work.c"	break;
	JMP	_00110_DS_
;	::->op : LABEL
;	::->op : CALL
_00105_DS_
;	.line	211; "../Work.c"	Led_Tail_AllOpen();		//位置灯全开启
	TRAPPC1	_Led_Tail_AllOpen
	TRAPPC2	_Led_Tail_AllOpen
	PAGESEL	_Led_Tail_AllOpen
	CALL	_Led_Tail_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	212; "../Work.c"	LED_Stop_PWMOpen();		//制动灯5%PWM开启
	TRAPPC1	_LED_Stop_PWMOpen
	TRAPPC2	_LED_Stop_PWMOpen
	PAGESEL	_LED_Stop_PWMOpen
	CALL	_LED_Stop_PWMOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	213; "../Work.c"	break;
	JMP	_00110_DS_
;	::->op : LABEL
;	::->op : CALL
_00106_DS_
;	.line	215; "../Work.c"	Led_Tail_AllClose();	//位置灯全关闭
	TRAPPC1	_Led_Tail_AllClose
	TRAPPC2	_Led_Tail_AllClose
	PAGESEL	_Led_Tail_AllClose
	CALL	_Led_Tail_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	216; "../Work.c"	LED_Stop_AllOpen();		//制动灯全开启
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	217; "../Work.c"	break;
	JMP	_00110_DS_
;	::->op : LABEL
;	::->op : CALL
_00107_DS_
;	.line	219; "../Work.c"	Led_Tail_AllOpen();		//位置灯全开启
	TRAPPC1	_Led_Tail_AllOpen
	TRAPPC2	_Led_Tail_AllOpen
	PAGESEL	_Led_Tail_AllOpen
	CALL	_Led_Tail_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : CALL
;	.line	220; "../Work.c"	LED_Stop_AllOpen();		//制动灯全开启
	TRAPPC1	_LED_Stop_AllOpen
	TRAPPC2	_LED_Stop_AllOpen
	PAGESEL	_LED_Stop_AllOpen
	CALL	_LED_Stop_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00110_DS_
;	.line	223; "../Work.c"	}
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
;   r0x1020
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_Tail_Stop_Check_Input	;Function start
; 2 exit points
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	148; "../Work.c"	Tail_Status = Tail;
	BANKSEL	r0x1020
	CLR	r0x1020
	BANKSEL	_P7_bits
	JB	_P7_bits, 1
	JMP	_00238_DS_
	BANKSEL	r0x1020
	INC	r0x1020
;	::->op : =
_00238_DS_
	BANKSEL	r0x1020
	MOVZ	R0, r0x1020
	BANKSEL	_Tail_Status
	MOV	_Tail_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	149; "../Work.c"	Stop_Status = Stop;
	BANKSEL	r0x1020
	CLR	r0x1020
	BANKSEL	_P7_bits
	JB	_P7_bits, 2
	JMP	_00239_DS_
	BANKSEL	r0x1020
	INC	r0x1020
;	::->op : =
_00239_DS_
	BANKSEL	r0x1020
	MOVZ	R0, r0x1020
	BANKSEL	_Stop_Status
	MOV	_Stop_Status, R0
;	::->op : IFX
;	.line	151; "../Work.c"	if(Tail_Status==0&&Stop_Status==0)//位置低，制动低
	MOV	R0,# 0x00
	BANKSEL	_Tail_Status
	ORL	R0, _Tail_Status
	JB	PSW, 2
	JMP	_00070_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_Stop_Status
	ORL	R0, _Stop_Status
	JB	PSW, 2
	JMP	_00070_DS_
;	::->op : =
;	.line	153; "../Work.c"	PastMode = NowMode;NowMode = Mode1_Status;
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
;	.line	154; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00067_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00067_DS_
;	::->op : =
;	.line	156; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00070_DS_
;	::->op : LABEL
;	::->op : =
_00067_DS_
;	.line	160; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x01
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00070_DS_
;	.line	163; "../Work.c"	if(Tail_Status==1&&Stop_Status==0)//位置高，制动低
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00076_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_Stop_Status
	ORL	R0, _Stop_Status
	JB	PSW, 2
	JMP	_00076_DS_
;	::->op : =
;	.line	165; "../Work.c"	PastMode = NowMode;NowMode = Mode2_Status;
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
;	.line	166; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00073_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00073_DS_
;	::->op : =
;	.line	168; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00076_DS_
;	::->op : LABEL
;	::->op : =
_00073_DS_
;	.line	172; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x02
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : IFX
_00076_DS_
;	.line	175; "../Work.c"	if(Tail_Status==0&&Stop_Status==1)//位置低，制动高
	MOV	R0,# 0x00
	BANKSEL	_Tail_Status
	ORL	R0, _Tail_Status
	JB	PSW, 2
	JMP	_00082_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00082_DS_
;	::->op : =
;	.line	177; "../Work.c"	PastMode = NowMode;NowMode = Mode3_Status;
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
;	.line	178; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00079_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00079_DS_
;	::->op : =
;	.line	180; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00082_DS_
;	::->op : LABEL
;	::->op : =
_00079_DS_
;	.line	184; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x04
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00082_DS_
;	.line	187; "../Work.c"	if(Tail_Status==1&&Stop_Status==1)//位置高，制动高
	BANKSEL	_Tail_Status
	MOVZ	R0, _Tail_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00088_DS_
;	::->op : EQ_OP
	BANKSEL	_Stop_Status
	MOVZ	R0, _Stop_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00088_DS_
;	::->op : =
;	.line	189; "../Work.c"	PastMode = NowMode;NowMode = Mode4_Status;
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
;	.line	190; "../Work.c"	if(NowMode==PastMode)
	BANKSEL	_PastMode
	MOVZ	R0, _PastMode
	XOR	R0,# 0x08
	JB	PSW, 2
	JMP	_00085_DS_
	BANKSEL	_PastMode
	MOVZ	R0, (_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00085_DS_
;	::->op : =
;	.line	192; "../Work.c"	ActMode=0;
	BANKSEL	_ActMode
	CLR	_ActMode
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : GOTO
	JMP	_00088_DS_
;	::->op : LABEL
;	::->op : =
_00085_DS_
;	.line	196; "../Work.c"	ActMode=NowMode;
	MOV	R0,# 0x08
	BANKSEL	_ActMode
	MOV	_ActMode, R0
	BANKSEL	_ActMode
	CLR	(_ActMode + 1)
;	::->op : LABEL
;	::->op : CALL
_00088_DS_
;	.line	199; "../Work.c"	Mode_Act();
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
;   _Led_RT_WaterOpen
;   _Led_RT_AllClose
;   _Led_RT_AllOpen
;   _Led_RT_WaterOpen
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_RT_Mode_Act	;Function start
; 2 exit points
;	::->op : EQ_OP
;	.line	132; "../Work.c"	switch(RT_ActMode)
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00063_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00053_DS_
_00063_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00064_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00054_DS_
_00064_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, _RT_ActMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00065_DS_
	BANKSEL	_RT_ActMode
	MOVZ	R0, (_RT_ActMode + 1)
	XOR	R0,# 0x00
	JNB	PSW, 2
	JMP	_00055_DS_
_00065_DS_
	JMP	_00058_DS_
_00053_DS_
;	.line	135; "../Work.c"	Led_RT_AllClose();		//转向低，转向使能低，关灯
	TRAPPC1	_Led_RT_AllClose
	TRAPPC2	_Led_RT_AllClose
	PAGESEL	_Led_RT_AllClose
	CALL	_Led_RT_AllClose
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	136; "../Work.c"	break;
	JMP	_00058_DS_
;	::->op : LABEL
;	::->op : CALL
_00054_DS_
;	.line	138; "../Work.c"	Led_RT_AllOpen();		//转向高，转向使能高，常亮
	TRAPPC1	_Led_RT_AllOpen
	TRAPPC2	_Led_RT_AllOpen
	PAGESEL	_Led_RT_AllOpen
	CALL	_Led_RT_AllOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : GOTO
;	.line	139; "../Work.c"	break;
	JMP	_00058_DS_
;	::->op : LABEL
;	::->op : CALL
_00055_DS_
;	.line	141; "../Work.c"	Led_RT_WaterOpen();		//转向高，转向使能低，流水
	TRAPPC1	_Led_RT_WaterOpen
	TRAPPC2	_Led_RT_WaterOpen
	PAGESEL	_Led_RT_WaterOpen
	CALL	_Led_RT_WaterOpen
	TRAPPC1	$+2
	TRAPPC2	$+1
	PAGESEL	$
;	::->op : LABEL
;	::->op : ENDFUNCTION
_00058_DS_
;	.line	144; "../Work.c"	}
	CRET	
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
;1 compiler assigned register :
;   r0x1021
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_RT_Check_Input	;Function start
; 2 exit points
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	90; "../Work.c"	RT_Status = RT;
	BANKSEL	r0x1021
	CLR	r0x1021
	BANKSEL	_PA_bits
	JB	_PA_bits, 0
	JMP	_00240_DS_
	BANKSEL	r0x1021
	INC	r0x1021
;	::->op : =
_00240_DS_
	BANKSEL	r0x1021
	MOVZ	R0, r0x1021
	BANKSEL	_RT_Status
	MOV	_RT_Status, R0
;	::->op : GET_VALUE_AT_ADDRESS
;	.line	91; "../Work.c"	RT_EN_Status = RT_EN;
	BANKSEL	r0x1021
	CLR	r0x1021
	BANKSEL	_P5_bits
	JB	_P5_bits, 1
	JMP	_00241_DS_
	BANKSEL	r0x1021
	INC	r0x1021
;	::->op : =
_00241_DS_
	BANKSEL	r0x1021
	MOVZ	R0, r0x1021
	BANKSEL	_RT_EN_Status
	MOV	_RT_EN_Status, R0
;	::->op : IFX
;	.line	92; "../Work.c"	if(RT_Status==0)		//转向低关灯
	MOV	R0,# 0x00
	BANKSEL	_RT_Status
	ORL	R0, _RT_Status
	JB	PSW, 2
	JMP	_00030_DS_
;	::->op : =
;	.line	94; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode1_Status;
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
;	.line	95; "../Work.c"	if(RT_NowMode==RT_PastMode)
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
;	.line	97; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00030_DS_
;	::->op : LABEL
;	::->op : =
_00027_DS_
;	.line	101; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x01
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00030_DS_
;	.line	104; "../Work.c"	if(RT_Status==1&&RT_EN_Status==1)		//转向高，转向使能高，常亮
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00035_DS_
;	::->op : EQ_OP
	BANKSEL	_RT_EN_Status
	MOVZ	R0, _RT_EN_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00035_DS_
;	::->op : =
;	.line	106; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode2_Status;
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
;	.line	107; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x02
	JB	PSW, 2
	JMP	_00032_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00032_DS_
;	::->op : =
;	.line	109; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00035_DS_
;	::->op : LABEL
;	::->op : =
_00032_DS_
;	.line	113; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x02
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : LABEL
;	::->op : EQ_OP
_00035_DS_
;	.line	116; "../Work.c"	if(RT_Status==1&&RT_EN_Status==0)		//转向高，转向使能低，流水
	BANKSEL	_RT_Status
	MOVZ	R0, _RT_Status
	XOR	R0,# 0x01
	JB	PSW, 2
	JMP	_00041_DS_
;	::->op : IFX
	MOV	R0,# 0x00
	BANKSEL	_RT_EN_Status
	ORL	R0, _RT_EN_Status
	JB	PSW, 2
	JMP	_00041_DS_
;	::->op : =
;	.line	118; "../Work.c"	RT_PastMode = RT_NowMode;RT_NowMode = RT_Mode3_Status;
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
;	.line	119; "../Work.c"	if(RT_NowMode==RT_PastMode)
	BANKSEL	_RT_PastMode
	MOVZ	R0, _RT_PastMode
	XOR	R0,# 0x04
	JB	PSW, 2
	JMP	_00038_DS_
	BANKSEL	_RT_PastMode
	MOVZ	R0, (_RT_PastMode + 1)
	XOR	R0,# 0x00
	JB	PSW, 2
	JMP	_00038_DS_
;	::->op : =
;	.line	121; "../Work.c"	RT_ActMode=0;
	BANKSEL	_RT_ActMode
	CLR	_RT_ActMode
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : GOTO
	JMP	_00041_DS_
;	::->op : LABEL
;	::->op : =
_00038_DS_
;	.line	125; "../Work.c"	RT_ActMode=RT_NowMode;
	MOV	R0,# 0x04
	BANKSEL	_RT_ActMode
	MOV	_RT_ActMode, R0
	BANKSEL	_RT_ActMode
	CLR	(_RT_ActMode + 1)
;	::->op : LABEL
;	::->op : CALL
_00041_DS_
;	.line	128; "../Work.c"	RT_Mode_Act();
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
; exit point of _RT_Check_Input



func._delay_us	.code
;***
;  PostBlock Stats: dbName = C
;***
;entry:  _delay_us	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1022
;   STK00
;   r0x1023
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_delay_us	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	83; "../Work.c"	void delay_us(uint16 num)
	BANKSEL	r0x1022
	MOV	r0x1022, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x1023
	MOV	r0x1023, R0
;	::->op : =
;	.line	86; "../Work.c"	for(i=0;i<num;i++);
	BANKSEL	_delay_us_i_1_1
	CLR	_delay_us_i_1_1
	BANKSEL	_delay_us_i_1_1
	CLR	(_delay_us_i_1_1 + 1)
;	::->op : LABEL
;	::->op : <
_00017_DS_
	BANKSEL	r0x1022
	MOVZ	R0, r0x1022
	BANKSEL	_delay_us_i_1_1
	SUB	R0, (_delay_us_i_1_1 + 1)
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00025_DS_
	BANKSEL	r0x1023
	MOVZ	R0, r0x1023
	BANKSEL	_delay_us_i_1_1
	SUB	R0, _delay_us_i_1_1
_00025_DS_
	JNB	PSW, 0
	JMP	_00021_DS_
;	::->op : +
	BANKSEL	_delay_us_i_1_1
	INC	_delay_us_i_1_1
	JB	PSW, 2
	JMP	_00242_DS_
	BANKSEL	_delay_us_i_1_1
	INC	(_delay_us_i_1_1 + 1)
;	::->op : GOTO
_00242_DS_
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
;   r0x101B
;   STK00
;   r0x101C
;   r0x101D
;   r0x101E
;; Starting PostCode block
;	::->op : LABEL
;	::->op : FUNCTION
_delay_ms	;Function start
; 2 exit points
;	::->op : RECEIVE
;	.line	74; "../Work.c"	void delay_ms(uint16 num)
	BANKSEL	r0x101B
	MOV	r0x101B, R0
	BANKSEL	STK00
	MOVZ	R0, STK00
	BANKSEL	r0x101C
	MOV	r0x101C, R0
;	::->op : =
;	.line	77; "../Work.c"	for(i=0;i<num;i++)
	BANKSEL	_delay_ms_i_1_1
	CLR	_delay_ms_i_1_1
	BANKSEL	_delay_ms_i_1_1
	CLR	(_delay_ms_i_1_1 + 1)
;	::->op : LABEL
;	::->op : <
_00006_DS_
	BANKSEL	r0x101B
	MOVZ	R0, r0x101B
	BANKSEL	_delay_ms_i_1_1
	SUB	R0, (_delay_ms_i_1_1 + 1)
;comparing bytes at offset 1
	JB	PSW, 2
	JMP	_00016_DS_
	BANKSEL	r0x101C
	MOVZ	R0, r0x101C
	BANKSEL	_delay_ms_i_1_1
	SUB	R0, _delay_ms_i_1_1
_00016_DS_
	JNB	PSW, 0
	JMP	_00010_DS_
;	::->op : =
;	.line	79; "../Work.c"	j=280;
	MOV	R0,# 0x18
	BANKSEL	_delay_ms_j_1_1
	MOV	_delay_ms_j_1_1, R0
	MOV	R0,# 0x01
	BANKSEL	_delay_ms_j_1_1
	MOV	(_delay_ms_j_1_1 + 1), R0
;	::->op : LABEL
;	::->op : =
_00003_DS_
;	.line	80; "../Work.c"	while(j--);
	BANKSEL	_delay_ms_j_1_1
	MOVZ	R0, _delay_ms_j_1_1
	BANKSEL	r0x101D
	MOV	r0x101D, R0
	BANKSEL	_delay_ms_j_1_1
	MOVZ	R0, (_delay_ms_j_1_1 + 1)
	BANKSEL	r0x101E
	MOV	r0x101E, R0
;	::->op : -
	MOV	R0,# 0xff
	BANKSEL	_delay_ms_j_1_1
	ADD	_delay_ms_j_1_1, R0
	JNB	PSW, 0
	JMP	_00243_DS_
	BANKSEL	_delay_ms_j_1_1
	DEC	(_delay_ms_j_1_1 + 1)
;	::->op : IFX
_00243_DS_
	BANKSEL	r0x101D
	MOVZ	R0, r0x101D
	BANKSEL	r0x101E
	ORL	R0, r0x101E
	JB	PSW, 2
	JMP	_00003_DS_
;	::->op : +
;	.line	77; "../Work.c"	for(i=0;i<num;i++)
	BANKSEL	_delay_ms_i_1_1
	INC	_delay_ms_i_1_1
	JB	PSW, 2
	JMP	_00244_DS_
	BANKSEL	_delay_ms_i_1_1
	INC	(_delay_ms_i_1_1 + 1)
;	::->op : GOTO
_00244_DS_
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
;	.line	28; "../Work.c"	TR0 =0xFF;//仿真口设置为输入
	MOV	R0,# 0xff
	BANKSEL	_TR0
	MOV	_TR0, R0
;	::->op : =
;	.line	29; "../Work.c"	ANS0 =0;
	BANKSEL	_ANS0
	CLR	_ANS0
;	::->op : =
;	.line	31; "../Work.c"	TR1=0x02;
	MOV	R0,# 0x02
	BANKSEL	_TR1
	MOV	_TR1, R0
;	::->op : =
;	.line	32; "../Work.c"	ANS1=0;
	BANKSEL	_ANS1
	CLR	_ANS1
;	::->op : =
;	.line	33; "../Work.c"	P1LR=0;
	BANKSEL	_P1LR
	CLR	_P1LR
;	::->op : =
;	.line	35; "../Work.c"	TR2=0;
	BANKSEL	_TR2
	CLR	_TR2
;	::->op : =
;	.line	36; "../Work.c"	ANS2=0;
	BANKSEL	_ANS2
	CLR	_ANS2
;	::->op : =
;	.line	37; "../Work.c"	P2LR=0;
	BANKSEL	_P2LR
	CLR	_P2LR
;	::->op : =
;	.line	39; "../Work.c"	TR3=0;
	BANKSEL	_TR3
	CLR	_TR3
;	::->op : =
;	.line	40; "../Work.c"	ANS3=0;
	BANKSEL	_ANS3
	CLR	_ANS3
;	::->op : =
;	.line	41; "../Work.c"	P3LR=0;
	BANKSEL	_P3LR
	CLR	_P3LR
;	::->op : =
;	.line	43; "../Work.c"	TR4=0X10; //lin_rxd设置为输入、lin_txd设置为输出
	MOV	R0,# 0x10
	BANKSEL	_TR4
	MOV	_TR4, R0
;	::->op : =
;	.line	44; "../Work.c"	ANS4=0;
	BANKSEL	_ANS4
	CLR	_ANS4
;	::->op : =
;	.line	45; "../Work.c"	P4LR=0;
	BANKSEL	_P4LR
	CLR	_P4LR
;	::->op : =
;	.line	47; "../Work.c"	TR5=0x02;
	MOV	R0,# 0x02
	BANKSEL	_TR5
	MOV	_TR5, R0
;	::->op : =
;	.line	48; "../Work.c"	ANS5=0;
	BANKSEL	_ANS5
	CLR	_ANS5
;	::->op : =
;	.line	49; "../Work.c"	P5LR=0;
	BANKSEL	_P5LR
	CLR	_P5LR
;	::->op : =
;	.line	51; "../Work.c"	TR6=0;//按键检测口也设置为输入
	BANKSEL	_TR6
	CLR	_TR6
;	::->op : =
;	.line	52; "../Work.c"	ANS6=0;
	BANKSEL	_ANS6
	CLR	_ANS6
;	::->op : =
;	.line	53; "../Work.c"	P6LR=0;
	BANKSEL	_P6LR
	CLR	_P6LR
;	::->op : =
;	.line	55; "../Work.c"	TR7=0x06;
	MOV	R0,# 0x06
	BANKSEL	_TR7
	MOV	_TR7, R0
;	::->op : =
;	.line	56; "../Work.c"	ANS7=0;
	BANKSEL	_ANS7
	CLR	_ANS7
;	::->op : =
;	.line	57; "../Work.c"	P7LR=0;
	BANKSEL	_P7LR
	CLR	_P7LR
;	::->op : =
;	.line	58; "../Work.c"	PUR7=0;
	BANKSEL	_PUR7
	CLR	_PUR7
;	::->op : =
;	.line	60; "../Work.c"	TR9=0X0E;
	MOV	R0,# 0x0e
	BANKSEL	_TR9
	MOV	_TR9, R0
;	::->op : =
;	.line	61; "../Work.c"	ANS9=0;
	BANKSEL	_ANS9
	CLR	_ANS9
;	::->op : =
;	.line	62; "../Work.c"	P9LR=0;
	BANKSEL	_P9LR
	CLR	_P9LR
;	::->op : =
;	.line	64; "../Work.c"	TRA=0x01;
	MOV	R0,# 0x01
	BANKSEL	_TRA
	MOV	_TRA, R0
;	::->op : =
;	.line	65; "../Work.c"	ANSA=0;
	BANKSEL	_ANSA
	CLR	_ANSA
;	::->op : =
;	.line	66; "../Work.c"	PALR=0;
	BANKSEL	_PALR
	CLR	_PALR
;	::->op : =
;	.line	67; "../Work.c"	PURA=0;
	BANKSEL	_PURA
	CLR	_PURA
;	::->op : =
;	.line	69; "../Work.c"	TRB=0;
	BANKSEL	_TRB
	CLR	_TRB
;	::->op : =
;	.line	70; "../Work.c"	ANSB=0;
	BANKSEL	_ANSB
	CLR	_ANSB
;	::->op : =
;	.line	71; "../Work.c"	PBLR=0;
	BANKSEL	_PBLR
	CLR	_PBLR
;	::->op : LABEL
;	::->op : ENDFUNCTION
	CRET	
; exit point of _Init_IO


;	code size estimation:
;	  898+  293 =  1191 instructions ( 2968 byte)


	.end
