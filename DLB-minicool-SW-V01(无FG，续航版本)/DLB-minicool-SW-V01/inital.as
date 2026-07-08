	global	?___lwdiv
	global	?___wmul
	global	?_adc_read_vdd
	global	Battery_Update@loop_num
	global	Battery_Update@loop_sum
	global	Battery_Update@low_clr_debounce
	global	Battery_Update@low_debounce
	global	Battery_Update@startup_cnt
	global	Comm_Process@rx_ok
	global	Delay_Init@Delay_Duty
	global	Delay_Init@i
	global	Gear5_Duty_Update@cur_percent
	global	Gear5_Duty_Update@ms_sub
	global	Gear5_Duty_Update@sec_cnt
	global	Kcomm_ISR@bit_wait_fall
	global	Key_Application@cur
	global	Key_Application@edge
	global	Key_Application@off_key_prev
	global	Key_Func@key1_time1
	global	Key_Func@key1_time2
	global	Key_Func@key2_time1
	global	Key_Func@key2_time2
	global	LedMode_Func@breath_cnt
	global	LedMode_Func@breath_dir
	global	LedMode_Func@breath_duty
	global	LedMode_Func@chg_pwm_cnt
	global	PL10
	global	PL2
	global	PL4
	global	PL6
	global	PL8
	global	SW_Func@sw_time1
	global	SW_Func@sw_time2
	global	Sleep_Func@Sleep_Time
	global	Timer1_Isr@pwm_cnt
	global	Timer1_Isr@timer_ms
	global	_ADCON0
	global	_ADCON1
	global	_ADCS0
	global	_ADCS1
	global	_ADCS2
	global	_ADC_Init
	signat	_ADC_Init,89
	FNCALL	_ADC_Init,_delay_us
	global	_ADEN
	global	_ADIF
	global	_ADON
	global	_ADREF
	global	_ADRESH
	global	_ADRESL
	global	_ANSEL0
	global	_ANSEL1
	global	_ANSEL10
	global	_ANSEL11
	global	_ANSEL14
	global	_ANSEL15
	global	_ANSEL2
	global	_ANSEL3
	global	_ANSEL4
	global	_ANSEL5
	global	_ANSEL6
	global	_ANSEL7
	global	_ANSEL8
	global	_ANSEL9
	global	_ANSELH
	global	_ANSELL
	global	_BOR
	global	_BOREN
	global	_Battery_Update
	signat	_Battery_Update,89
	FNCALL	_Battery_Update,_adc_read_vdd
	global	_CHS0
	global	_CHS1
	global	_CHS2
	global	_CHS3
	global	_Comm_Process
	signat	_Comm_Process,89
	FNCALL	_Comm_Process,_comm_parse_rx
	global	_DIY_Flag1
	global	_DIY_Flag2
	global	_Delay_Init
	signat	_Delay_Init,4217
	global	_FSR
	global	_GIE
	global	_Gear5_Duty_Update
	signat	_Gear5_Duty_Update,89
	FNCALL	_Gear5_Duty_Update,___lwdiv
	FNCALL	_Gear5_Duty_Update,___wmul
	global	_INDF
	global	_INTECON
	global	_INTEDG
	global	_IOCA
	global	_IOCB
	global	_Kcomm_ISR
	signat	_Kcomm_ISR,89
	FNCALL	_Kcomm_ISR,_comm_pack_tx
	global	_Kcomm_ISR$634
	global	_Key_Application
	signat	_Key_Application,89
	FNCALL	_Key_Application,_Battery_Update
	FNCALL	_Key_Application,_set_fan
	FNCALL	_Key_Application,_show_gear_led
	FNCALL	_Key_Application,_trigger_warn
	FNCALL	_Key_Application,_warn_flash_proc
	global	_Key_Application$619
	global	_Key_Func
	signat	_Key_Func,89
	global	_LedMode_Func
	signat	_LedMode_Func,89
	FNCALL	_LedMode_Func,_show_gear_led
	global	_MTP_CLEN
	global	_OPTION
_OPTION	equ	65
	global	_PAIE
	global	_PAIF
	global	_PBIE
	global	_PBIF
	global	_PDA0
	global	_PDA1
	global	_PDA2
	global	_PDA3
	global	_PDA4
	global	_PDA5
	global	_PDA6
	global	_PDA7
	global	_PDCON
	global	_PDCON1
	global	_PHA0
	global	_PHA1
	global	_PHA2
	global	_PHA3
	global	_PHA4
	global	_PHA5
	global	_PHA6
	global	_PHA7
	global	_PHCON
	global	_PHCON1
	global	_PIR
	global	_PMADRH
	global	_PMADRL
	global	_PMCON
	global	_PMDATH
	global	_PMDATL
	global	_POR
	global	_PORTA
	global	_PORTA1
	global	_PORTA2
	global	_PORTA3
	global	_PORTA4
	global	_PORTA6
	global	_PORTA7
	global	_PORTB
	global	_PORTB0
	global	_PORTB1
	global	_PORTB2
	global	_PORTB6
	global	_PS0
	global	_PS1
	global	_PS2
	global	_PSA
	global	_PWM0E
	global	_PWM0P
	global	_PWM1E
	global	_PWM1P
	global	_PWM1_8
	global	_PWM1_9
	global	_PWMM
	global	_PWMS0
	global	_PWMS1
	global	_PWMSET
	global	_RD_FLAG
	global	_SCS
	global	_SW_Func
	signat	_SW_Func,89
	global	_Sleep_Func
	signat	_Sleep_Func,89
	FNCALL	_Sleep_Func,_ADC_Init
	FNCALL	_Sleep_Func,_inital
	FNCALL	_Sleep_Func,_sysinitial
	FNCALL	_Sleep_Func,_delay_us
	global	_T0
	global	_T0CK
	global	_T0CS
	global	_T0IE
	global	_T0IF
	global	_T0OSCEN
	global	_T0SE
	global	_T1
	global	_T1CK0
	global	_T1CK1
	global	_T1CON
	global	_T1CR_AUXR
	global	_T1EN
	global	_T1IE
	global	_T1IF
	global	_T1LOAD
	global	_T1PR0
	global	_T1PR1
	global	_T1PR2
	global	_T1_PWM_inital
	signat	_T1_PWM_inital,89
	global	_T2
	global	_T2CK0
	global	_T2CK1
	global	_T2CON
	global	_T2EN
	global	_T2IE
	global	_T2IF
	global	_T2LOAD
	global	_T2LOAD_8
	global	_T2LOAD_9
	global	_T2PR0
	global	_T2PR1
	global	_T2PR2
	global	_TIMER2_8
	global	_TIMER2_9
	global	_TMR2H
	global	_TRISA
	global	_TRISA0
	global	_TRISA1
	global	_TRISA2
	global	_TRISA3
	global	_TRISA4
	global	_TRISA5
	global	_TRISA6
	global	_TRISA7
	global	_TRISB
	global	_TRISB0
	global	_TRISB1
	global	_TRISB2
	global	_TRISB3
	global	_TRISB4
	global	_TRISB5
	global	_TRISB6
	global	_TRISB7
	global	_Timer1_Isr
	signat	_Timer1_Isr,89
	FNCALL	_Timer1_Isr,_Kcomm_ISR
	global	_VHS0
	global	_VHS1
	global	_VHS2
	global	_WDTEN
	global	___latbits
___latbits	equ	0
	global	___lwdiv
	signat	___lwdiv,8314
	global	___lwdiv@counter
	global	___lwdiv@dividend
	global	___lwdiv@divisor
	global	___lwdiv@quotient
	global	___wmul
	signat	___wmul,8314
	global	___wmul@multiplicand
	global	___wmul@multiplier
	global	___wmul@product
	global	__end_ofPL10
	global	__end_ofPL2
	global	__end_ofPL4
	global	__end_ofPL6
	global	__end_ofPL8
	global	__end_of_ADC_Init
	global	__end_of_Battery_Update
	global	__end_of_Comm_Process
	global	__end_of_Delay_Init
	global	__end_of_Gear5_Duty_Update
	global	__end_of_Kcomm_ISR
	global	__end_of_Key_Application
	global	__end_of_Key_Func
	global	__end_of_LedMode_Func
	global	__end_of_SW_Func
	global	__end_of_Sleep_Func
	global	__end_of_T1_PWM_inital
	global	__end_of_Timer1_Isr
	global	__end_of___lwdiv
	global	__end_of___wmul
	global	__end_of__initialization
	global	__end_of__stringtab
	global	__end_of_adc_read_vdd
	global	__end_of_c_fan_duty
	global	__end_of_comm_pack_tx
	global	__end_of_comm_parse_rx
	global	__end_of_delay_us
	global	__end_of_fan_ramp_proc
	global	__end_of_inital
	global	__end_of_main
	global	__end_of_ramInitial
	global	__end_of_set_fan
	global	__end_of_show_gear_led
	global	__end_of_sysinitial
	global	__end_of_trigger_warn
	global	__end_of_warn_flash_proc
	global	__initialization
	global	__pbssBANK0
	global	__pbssBANK1
	global	__pcstackBANK0
	global	__pcstackBANK1
	global	__pcstackCOMMON
	global	__pdataBANK0
	global	__pdataBANK1
	global	__pidataBANK0
	global	__pidataBANK1
	global	__pintentry
	global	__pmaintext
	global	__pstrings
	global	__ptext1
	global	__ptext10
	global	__ptext11
	global	__ptext12
	global	__ptext13
	global	__ptext14
	global	__ptext15
	global	__ptext16
	global	__ptext17
	global	__ptext18
	global	__ptext19
	global	__ptext2
	global	__ptext20
	global	__ptext21
	global	__ptext22
	global	__ptext23
	global	__ptext24
	global	__ptext25
	global	__ptext26
	global	__ptext27
	global	__ptext3
	global	__ptext4
	global	__ptext5
	global	__ptext6
	global	__ptext7
	global	__ptext8
	global	__ptext9
	global	__size_of_ADC_Init
__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	global	__size_of_Battery_Update
__size_of_Battery_Update	equ	__end_of_Battery_Update-_Battery_Update
	global	__size_of_Comm_Process
__size_of_Comm_Process	equ	__end_of_Comm_Process-_Comm_Process
	global	__size_of_Delay_Init
__size_of_Delay_Init	equ	__end_of_Delay_Init-_Delay_Init
	global	__size_of_Gear5_Duty_Update
__size_of_Gear5_Duty_Update	equ	__end_of_Gear5_Duty_Update-_Gear5_Duty_Update
	global	__size_of_Kcomm_ISR
__size_of_Kcomm_ISR	equ	__end_of_Kcomm_ISR-_Kcomm_ISR
	global	__size_of_Key_Application
__size_of_Key_Application	equ	__end_of_Key_Application-_Key_Application
	global	__size_of_Key_Func
__size_of_Key_Func	equ	__end_of_Key_Func-_Key_Func
	global	__size_of_LedMode_Func
__size_of_LedMode_Func	equ	__end_of_LedMode_Func-_LedMode_Func
	global	__size_of_SW_Func
__size_of_SW_Func	equ	__end_of_SW_Func-_SW_Func
	global	__size_of_Sleep_Func
__size_of_Sleep_Func	equ	__end_of_Sleep_Func-_Sleep_Func
	global	__size_of_T1_PWM_inital
__size_of_T1_PWM_inital	equ	__end_of_T1_PWM_inital-_T1_PWM_inital
	global	__size_of_Timer1_Isr
__size_of_Timer1_Isr	equ	__end_of_Timer1_Isr-_Timer1_Isr
	global	__size_of___lwdiv
__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	global	__size_of___wmul
__size_of___wmul	equ	__end_of___wmul-___wmul
	global	__size_of_adc_read_vdd
__size_of_adc_read_vdd	equ	__end_of_adc_read_vdd-_adc_read_vdd
	global	__size_of_comm_pack_tx
__size_of_comm_pack_tx	equ	__end_of_comm_pack_tx-_comm_pack_tx
	global	__size_of_comm_parse_rx
__size_of_comm_parse_rx	equ	__end_of_comm_parse_rx-_comm_parse_rx
	global	__size_of_delay_us
__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	global	__size_of_fan_ramp_proc
__size_of_fan_ramp_proc	equ	__end_of_fan_ramp_proc-_fan_ramp_proc
	global	__size_of_inital
__size_of_inital	equ	__end_of_inital-_inital
	global	__size_of_main
__size_of_main	equ	__end_of_main-_main
	global	__size_of_ramInitial
__size_of_ramInitial	equ	__end_of_ramInitial-_ramInitial
	global	__size_of_set_fan
__size_of_set_fan	equ	__end_of_set_fan-_set_fan
	global	__size_of_show_gear_led
__size_of_show_gear_led	equ	__end_of_show_gear_led-_show_gear_led
	global	__size_of_sysinitial
__size_of_sysinitial	equ	__end_of_sysinitial-_sysinitial
	global	__size_of_trigger_warn
__size_of_trigger_warn	equ	__end_of_trigger_warn-_trigger_warn
	global	__size_of_warn_flash_proc
__size_of_warn_flash_proc	equ	__end_of_warn_flash_proc-_warn_flash_proc
	global	__stringbase
	global	__stringtab
	global	_adc_read_vdd
	signat	_adc_read_vdd,90
	global	_adcon1_val
	global	_c_fan_duty
	global	_comm_pack_tx
	signat	_comm_pack_tx,89
	global	_comm_parse_rx
	signat	_comm_parse_rx,4217
	global	_delay_us
	signat	_delay_us,4217
	global	_fan_ramp_proc
	signat	_fan_ramp_proc,89
	global	_g_battery_empty
	global	_g_current_pwm
	global	_g_gear
	global	_g_k1_hold_ms
	global	_g_k1_prev
	global	_g_k2_hold_ms
	global	_g_k2_prev
	global	_g_offshow_ms
	global	_g_overclock_pwm
	global	_g_pwr_delay_ms
	global	_g_slave_alive_ms
	global	_g_target_pwm
	global	_g_vdd_adc
	global	_g_warn_cnt
	global	_g_warn_flash
	global	_g_warn_led
	global	_inital
	signat	_inital,89
	global	_kcomm_bit_idx
	global	_kcomm_cycle
	global	_kcomm_low_cnt
	global	_kcomm_rx_buf
	global	_kcomm_rx_done
	global	_kcomm_rx_shift
	global	_kcomm_state
	global	_kcomm_timer
	global	_kcomm_turn
	global	_kcomm_tx_buf
	global	_kcomm_tx_done
	global	_kcomm_tx_shift
	global	_kcomm_wakeup
	global	_kcomm_wakeup_cnt
	global	_level
	global	_main
	signat	_main,89
	FNROOT	_main
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_Battery_Update
	FNCALL	_main,_Comm_Process
	FNCALL	_main,_Delay_Init
	FNCALL	_main,_Gear5_Duty_Update
	FNCALL	_main,_Key_Application
	FNCALL	_main,_Key_Func
	FNCALL	_main,_LedMode_Func
	FNCALL	_main,_SW_Func
	FNCALL	_main,_Sleep_Func
	FNCALL	_main,_T1_PWM_inital
	FNCALL	_main,_fan_ramp_proc
	FNCALL	_main,_inital
	FNCALL	_main,_ramInitial
	FNCALL	_main,_set_fan
	FNCALL	_main,_sysinitial
	global	_ramInitial
	signat	_ramInitial,89
	global	_set_fan
	signat	_set_fan,4217
	global	_show_gear_led
	signat	_show_gear_led,4217
	global	_sysinitial
	signat	_sysinitial,89
	global	_sysinitial$240
	global	_sysinitial$241
	global	_sysinitial$242
	global	_sysinitial$243
	global	_sysinitial$244
	global	_sysinitial$245
	global	_trigger_warn
	signat	_trigger_warn,4217
	global	_warn_flash_proc
	signat	_warn_flash_proc,89
	FNCALL	_warn_flash_proc,_show_gear_led
	global	adc_read_vdd@result
	global	btemp
	global	comm_pack_tx@hi
	global	comm_pack_tx@lo
	global	comm_pack_tx@result
	global	comm_parse_rx@check
	global	comm_parse_rx@hi
	global	comm_parse_rx@lo
	global	comm_parse_rx@raw
	global	delay_us@i
	global	delay_us@us
	global	end_of_initialization
	global	fan_ramp_proc@target_fixed
	global	interrupt_function
	global	intlevel1
	FNROOT	intlevel1
	FNCALL	intlevel1,_Timer1_Isr
	global	saved_w
	global	set_fan@gear
	global	show_gear_led@gear
	global	start
	global	start_initialization
	global	trigger_warn@led_num
	global	wtemp0
	processor	18m121b1
	opt	pw 120
	opt	pm
	psect	idataBANK0,global,class=CODE,delta=2
	psect	idataBANK1,global,class=CODE,delta=2
	psect	strings,global,class=STRING,delta=2
	psect	cinit,global,class=CODE,merge=1,delta=2
	psect	bssBANK0,global,class=BANK0,space=1
	psect	dataBANK0,global,class=BANK0,space=1
	psect	bssBANK1,global,class=BANK1,space=1
	psect	dataBANK1,global,class=BANK1,space=1
	psect	cstackBANK1,global,class=BANK1,space=1
	psect	cstackCOMMON,global,class=COMMON,space=1
	psect	cstackBANK0,global,class=BANK0,space=1
	psect	maintext,global,class=CODE,split=1,delta=2
	psect	text1,local,class=CODE,merge=1,delta=2
	psect	text2,local,class=CODE,merge=1,delta=2
	psect	text3,local,class=CODE,merge=1,delta=2
	psect	text4,local,class=CODE,merge=1,delta=2
	psect	text5,local,class=CODE,merge=1,delta=2
	psect	text6,local,class=CODE,merge=1,delta=2
	psect	text7,local,class=CODE,merge=1,delta=2
	psect	text8,local,class=CODE,merge=1,delta=2
	psect	text9,local,class=CODE,merge=1,delta=2
	psect	text10,local,class=CODE,merge=1,delta=2
	psect	text11,local,class=CODE,merge=1,delta=2
	psect	text12,local,class=CODE,merge=1,delta=2
	psect	text13,local,class=CODE,merge=1,delta=2
	psect	text14,local,class=CODE,merge=1,delta=2
	psect	text15,local,class=CODE,merge=1,delta=2
	psect	text16,local,class=CODE,merge=1,delta=2
	psect	text17,local,class=CODE,merge=1,delta=2
	psect	text18,local,class=CODE,merge=1,delta=2
	psect	text19,local,class=CODE,merge=1,delta=2
	psect	text20,local,class=CODE,merge=1,delta=2,group=1
	psect	text21,local,class=CODE,merge=1,delta=2,group=1
	psect	text22,local,class=CODE,merge=1,delta=2
	psect	text23,local,class=CODE,merge=1,delta=2
	psect	text24,local,class=CODE,merge=1,delta=2
	psect	text25,local,class=CODE,merge=1,delta=2
	psect	intentry,global,class=CODE,delta=2
	psect	text26,local,class=CODE,merge=1,delta=2
	psect	text27,local,class=CODE,merge=1,delta=2
	psect	pa_nodes0,global,class=CODE,delta=2
	dabs	1,0x5B,1,_ADCON1
	dabs	1,0x5A,1,_ADCON0
	dabs	1,0x59,1,_ADRESH
	dabs	1,0x58,1,_ADRESL
	dabs	1,0x57,1,_ANSELH
	dabs	1,0x56,1,_ANSELL
	dabs	1,0x55,1,_PWMSET
	dabs	1,0x54,1,_PWM1P
	dabs	1,0x53,1,_T2LOAD
	dabs	1,0x52,1,_T2
	dabs	1,0x51,1,_TMR2H
	dabs	1,0x50,1,_T2CON
	dabs	1,0x4F,1,_PWM0P
	dabs	1,0x4E,1,_T1LOAD
	dabs	1,0x4D,1,_T1
	dabs	1,0x4C,1,_T1CON
	dabs	1,0x4B,1,_T1CR_AUXR
	dabs	1,0x4A,1,_PMDATH
	dabs	1,0x49,1,_PMDATL
	dabs	1,0x48,1,_PMADRH
	dabs	1,0x47,1,_PMADRL
	dabs	1,0x46,1,_TRISB
	dabs	1,0x45,1,_TRISA
	dabs	1,0x43,1,_PHCON1
	dabs	1,0x42,1,_PDCON1
	dabs	1,0x41,1,_OPTION
	dabs	1,0x40,1,_PMCON
	dabs	1,0x2DE,0,_ADCS2
	dabs	1,0x5B,1
	dabs	1,0x2DD,0,_ADCS1
	dabs	1,0x5B,1
	dabs	1,0x2DC,0,_ADCS0
	dabs	1,0x5B,1
	dabs	1,0x2DB,0,_VHS2
	dabs	1,0x5B,1
	dabs	1,0x2DA,0,_VHS1
	dabs	1,0x5B,1
	dabs	1,0x2D9,0,_VHS0
	dabs	1,0x5B,1
	dabs	1,0x2D8,0,_ADREF
	dabs	1,0x5B,1
	dabs	1,0x2D5,0,_CHS3
	dabs	1,0x5A,1
	dabs	1,0x2D4,0,_CHS2
	dabs	1,0x5A,1
	dabs	1,0x2D3,0,_CHS1
	dabs	1,0x5A,1
	dabs	1,0x2D2,0,_CHS0
	dabs	1,0x5A,1
	dabs	1,0x2D1,0,_ADON
	dabs	1,0x5A,1
	dabs	1,0x2D0,0,_ADEN
	dabs	1,0x5A,1
	dabs	1,0x2BF,0,_ANSEL15
	dabs	1,0x57,1
	dabs	1,0x2BE,0,_ANSEL14
	dabs	1,0x57,1
	dabs	1,0x2BB,0,_ANSEL11
	dabs	1,0x57,1
	dabs	1,0x2BA,0,_ANSEL10
	dabs	1,0x57,1
	dabs	1,0x2B9,0,_ANSEL9
	dabs	1,0x57,1
	dabs	1,0x2B8,0,_ANSEL8
	dabs	1,0x57,1
	dabs	1,0x2B7,0,_ANSEL7
	dabs	1,0x56,1
	dabs	1,0x2B6,0,_ANSEL6
	dabs	1,0x56,1
	dabs	1,0x2B5,0,_ANSEL5
	dabs	1,0x56,1
	dabs	1,0x2B4,0,_ANSEL4
	dabs	1,0x56,1
	dabs	1,0x2B3,0,_ANSEL3
	dabs	1,0x56,1
	dabs	1,0x2B2,0,_ANSEL2
	dabs	1,0x56,1
	dabs	1,0x2B1,0,_ANSEL1
	dabs	1,0x56,1
	dabs	1,0x2B0,0,_ANSEL0
	dabs	1,0x56,1
	dabs	1,0x2A8,0,_PWMM
	dabs	1,0x55,1
	dabs	1,0x28F,0,_PWMS1
	dabs	1,0x51,1
	dabs	1,0x28E,0,_PWMS0
	dabs	1,0x51,1
	dabs	1,0x28D,0,_TIMER2_9
	dabs	1,0x51,1
	dabs	1,0x28C,0,_TIMER2_8
	dabs	1,0x51,1
	dabs	1,0x28B,0,_T2LOAD_9
	dabs	1,0x51,1
	dabs	1,0x28A,0,_T2LOAD_8
	dabs	1,0x51,1
	dabs	1,0x289,0,_PWM1_9
	dabs	1,0x51,1
	dabs	1,0x288,0,_PWM1_8
	dabs	1,0x51,1
	dabs	1,0x287,0,_T2EN
	dabs	1,0x50,1
	dabs	1,0x286,0,_PWM1E
	dabs	1,0x50,1
	dabs	1,0x285,0,_SCS
	dabs	1,0x50,1
	dabs	1,0x284,0,_T2CK1
	dabs	1,0x50,1
	dabs	1,0x283,0,_T2CK0
	dabs	1,0x50,1
	dabs	1,0x282,0,_T2PR2
	dabs	1,0x50,1
	dabs	1,0x281,0,_T2PR1
	dabs	1,0x50,1
	dabs	1,0x280,0,_T2PR0
	dabs	1,0x50,1
	dabs	1,0x267,0,_T1EN
	dabs	1,0x4C,1
	dabs	1,0x266,0,_PWM0E
	dabs	1,0x4C,1
	dabs	1,0x265,0,_T0OSCEN
	dabs	1,0x4C,1
	dabs	1,0x264,0,_T1CK1
	dabs	1,0x4C,1
	dabs	1,0x263,0,_T1CK0
	dabs	1,0x4C,1
	dabs	1,0x262,0,_T1PR2
	dabs	1,0x4C,1
	dabs	1,0x261,0,_T1PR1
	dabs	1,0x4C,1
	dabs	1,0x260,0,_T1PR0
	dabs	1,0x4C,1
	dabs	1,0x25F,0,_T0CK
	dabs	1,0x4B,1
	dabs	1,0x25E,0,_T2IE
	dabs	1,0x4B,1
	dabs	1,0x25D,0,_T2IF
	dabs	1,0x4B,1
	dabs	1,0x25C,0,_POR
	dabs	1,0x4B,1
	dabs	1,0x25B,0,_BOR
	dabs	1,0x4B,1
	dabs	1,0x25A,0,_BOREN
	dabs	1,0x4B,1
	dabs	1,0x259,0,_T1IE
	dabs	1,0x4B,1
	dabs	1,0x258,0,_T1IF
	dabs	1,0x4B,1
	dabs	1,0x237,0,_TRISB7
	dabs	1,0x46,1
	dabs	1,0x236,0,_TRISB6
	dabs	1,0x46,1
	dabs	1,0x235,0,_TRISB5
	dabs	1,0x46,1
	dabs	1,0x234,0,_TRISB4
	dabs	1,0x46,1
	dabs	1,0x233,0,_TRISB3
	dabs	1,0x46,1
	dabs	1,0x232,0,_TRISB2
	dabs	1,0x46,1
	dabs	1,0x231,0,_TRISB1
	dabs	1,0x46,1
	dabs	1,0x230,0,_TRISB0
	dabs	1,0x46,1
	dabs	1,0x22F,0,_TRISA7
	dabs	1,0x45,1
	dabs	1,0x22E,0,_TRISA6
	dabs	1,0x45,1
	dabs	1,0x22D,0,_TRISA5
	dabs	1,0x45,1
	dabs	1,0x22C,0,_TRISA4
	dabs	1,0x45,1
	dabs	1,0x22B,0,_TRISA3
	dabs	1,0x45,1
	dabs	1,0x22A,0,_TRISA2
	dabs	1,0x45,1
	dabs	1,0x229,0,_TRISA1
	dabs	1,0x45,1
	dabs	1,0x228,0,_TRISA0
	dabs	1,0x45,1
	dabs	1,0x21F,0,_PHA7
	dabs	1,0x43,1
	dabs	1,0x21E,0,_PHA6
	dabs	1,0x43,1
	dabs	1,0x21D,0,_PHA5
	dabs	1,0x43,1
	dabs	1,0x21C,0,_PHA4
	dabs	1,0x43,1
	dabs	1,0x21B,0,_PHA3
	dabs	1,0x43,1
	dabs	1,0x21A,0,_PHA2
	dabs	1,0x43,1
	dabs	1,0x219,0,_PHA1
	dabs	1,0x43,1
	dabs	1,0x218,0,_PHA0
	dabs	1,0x43,1
	dabs	1,0x217,0,_PDA7
	dabs	1,0x42,1
	dabs	1,0x216,0,_PDA6
	dabs	1,0x42,1
	dabs	1,0x215,0,_PDA5
	dabs	1,0x42,1
	dabs	1,0x214,0,_PDA4
	dabs	1,0x42,1
	dabs	1,0x213,0,_PDA3
	dabs	1,0x42,1
	dabs	1,0x212,0,_PDA2
	dabs	1,0x42,1
	dabs	1,0x211,0,_PDA1
	dabs	1,0x42,1
	dabs	1,0x210,0,_PDA0
	dabs	1,0x42,1
	dabs	1,0x20F,0,_WDTEN
	dabs	1,0x41,1
	dabs	1,0x20E,0,_INTEDG
	dabs	1,0x41,1
	dabs	1,0x20D,0,_T0CS
	dabs	1,0x41,1
	dabs	1,0x20C,0,_T0SE
	dabs	1,0x41,1
	dabs	1,0x20B,0,_PSA
	dabs	1,0x41,1
	dabs	1,0x20A,0,_PS2
	dabs	1,0x41,1
	dabs	1,0x209,0,_PS1
	dabs	1,0x41,1
	dabs	1,0x208,0,_PS0
	dabs	1,0x41,1
	dabs	1,0x201,0,_MTP_CLEN
	dabs	1,0x40,1
	dabs	1,0x200,0,_RD_FLAG
	dabs	1,0x40,1
	dabs	1,0x3E,2
SFR:	
; Version 1.45
; Generated 16/11/2017 GMT
; 
; Copyright © 2017, Microchip Technology Inc. and its subsidiaries ("Microchip")
; All rights reserved.
; 
; This software is developed by Microchip Technology Inc. and its subsidiaries ("Microchip").
; 
; Redistribution and use in source and binary forms, with or without modification, are
; permitted provided that the following conditions are met:
; 
;     1. Redistributions of source code must retain the above copyright notice, this list of
;        conditions and the following disclaimer.
; 
;     2. Redistributions in binary form must reproduce the above copyright notice, this list
;        of conditions and the following disclaimer in the documentation and/or other
;        materials provided with the distribution.
; 
;     3. Microchip's name may not be used to endorse or promote products derived from this
;        software without specific prior written permission.
; 
; THIS SOFTWARE IS PROVIDED BY MICROCHIP "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
; INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL MICROCHIP BE LIABLE FOR ANY DIRECT, INDIRECT,
; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSequENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO
; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA OR PROFITS; OR BUSINESS
; INTERRUPTION) HOWSOEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
; 
; 
; Code-generator required, PIC16F887 Definitions
; 
; SFR Addresses

Addresses:	
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;

	psect	idataBANK0
__pidataBANK0:	
	opt stack 0
	file	"main.c"

;initializer for Gear5_Duty_Update@cur_percent
	retlw	85

;initializer for LedMode_Func@breath_dir
	retlw	1

	psect	idataBANK1
__pidataBANK1:	
	opt stack 0

;initializer for Battery_Update@startup_cnt
	retlw	50

	psect	strings
__pstrings:	
	opt stack 0
stringtab:	
__stringtab:	
	opt stack 0
stringcode:	
;	String table - string pointers are 1 byte each

stringdir:	
	movlw	high stringdir
	movwf	10
	movf	4,w
	incf	4,f
	addwf	2,f
__stringbase:	
	opt stack 0
	retlw	0
__end_of__stringtab:	
	opt stack 0
_c_fan_duty:	
	opt stack 0
	retlw	0
	retlw	25
	retlw	50
	retlw	68
	retlw	87
	retlw	105
	retlw	124
__end_of_c_fan_duty:	
	opt stack 0	;_RD_FLAG
_PIR	set	15
_INTECON	set	14
_PHCON	set	13
_PDCON	set	11
_IOCB	set	9
_IOCA	set	7
_PORTB	set	6
_PORTA	set	5
_FSR	set	4
_T0	set	1
_INDF	set	0
_ADIF	set	122
_PAIE	set	121
_PAIF	set	120
_GIE	set	119
_PBIF	set	116
_T0IF	set	115
_PBIE	set	113
_T0IE	set	112
_PORTB6	set	54
_PORTB2	set	50
_PORTB1	set	49
_PORTB0	set	48
_PORTA7	set	47
_PORTA6	set	46
_PORTA4	set	44
_PORTA3	set	43
_PORTA2	set	42
_PORTA1	set	41

	psect	cinit
	file	"inital.as"
start_initialization:	
; #config settings

	opt stack 0
__initialization:	
	opt stack 0
	file	"main.c"
end_of_initialization:	
;End of C runtime variable initialization code

	opt stack 0
__end_of__initialization:	
	opt stack 0
	clrf	3
	ljmp	_main	;jump to C main() function

	psect	bssBANK0
	file	"inital.as"
__pbssBANK0:	
	opt stack 0
_g_vdd_adc:	
	opt stack 0
	ds	2
_g_current_pwm:	
	opt stack 0
	ds	2
_kcomm_timer:	
	opt stack 0
	ds	2
LedMode_Func@breath_cnt:	
	opt stack 0
	ds	1
LedMode_Func@breath_duty:	
	opt stack 0
	ds	1
LedMode_Func@chg_pwm_cnt:	
	opt stack 0
	ds	1
_level:	
	opt stack 0
	ds	1
_g_k2_prev:	
	opt stack 0
	ds	1
_g_k1_prev:	
	opt stack 0
	ds	1
_g_warn_led:	
	opt stack 0
	ds	1
_g_warn_flash:	
	opt stack 0
	ds	1
_g_battery_empty:	
	opt stack 0
	ds	1
_g_target_pwm:	
	opt stack 0
	ds	1
_g_gear:	
	opt stack 0
	ds	1
_DIY_Flag2:	
	opt stack 0
	ds	1
_DIY_Flag1:	
	opt stack 0
	ds	1
_adcon1_val:	
	opt stack 0
	ds	1
_kcomm_wakeup:	
	opt stack 0
	ds	1
_kcomm_rx_done:	
	opt stack 0
	ds	1
_kcomm_bit_idx:	
	opt stack 0
	ds	1
_kcomm_state:	
	opt stack 0
	ds	1

	psect	dataBANK0
__pdataBANK0:	
	opt stack 0
	file	"main.c"
Gear5_Duty_Update@cur_percent:	
	opt stack 0
	ds	1
LedMode_Func@breath_dir:	
	opt stack 0
	ds	1

	psect	bssBANK1
__pbssBANK1:	
	opt stack 0
Gear5_Duty_Update@sec_cnt:	
	opt stack 0
	ds	2
Gear5_Duty_Update@ms_sub:	
	opt stack 0
	ds	2
Battery_Update@loop_sum:	
	opt stack 0
	ds	2
Sleep_Func@Sleep_Time:	
	opt stack 0
	ds	2
_g_slave_alive_ms:	
	opt stack 0
	ds	2
_g_pwr_delay_ms:	
	opt stack 0
	ds	2
_g_offshow_ms:	
	opt stack 0
	ds	2
_g_k2_hold_ms:	
	opt stack 0
	ds	2
_g_k1_hold_ms:	
	opt stack 0
	ds	2
_kcomm_wakeup_cnt:	
	opt stack 0
	ds	2
_kcomm_low_cnt:	
	opt stack 0
	ds	2
Timer1_Isr@pwm_cnt:	
	opt stack 0
	ds	1
Timer1_Isr@timer_ms:	
	opt stack 0
	ds	1
Kcomm_ISR@bit_wait_fall:	
	opt stack 0
	ds	1
Key_Application@off_key_prev:	
	opt stack 0
	ds	1
SW_Func@sw_time2:	
	opt stack 0
	ds	1
SW_Func@sw_time1:	
	opt stack 0
	ds	1
Key_Func@key2_time2:	
	opt stack 0
	ds	1
Key_Func@key2_time1:	
	opt stack 0
	ds	1
Key_Func@key1_time2:	
	opt stack 0
	ds	1
Key_Func@key1_time1:	
	opt stack 0
	ds	1
Battery_Update@low_clr_debounce:	
	opt stack 0
	ds	1
Battery_Update@low_debounce:	
	opt stack 0
	ds	1
Battery_Update@loop_num:	
	opt stack 0
	ds	1
_g_overclock_pwm:	
	opt stack 0
	ds	1
_g_warn_cnt:	
	opt stack 0
	ds	1
_kcomm_tx_done:	
	opt stack 0
	ds	1
_kcomm_rx_shift:	
	opt stack 0
	ds	1
_kcomm_cycle:	
	opt stack 0
	ds	1
_kcomm_turn:	
	opt stack 0
	ds	1
_kcomm_rx_buf:	
	opt stack 0
	ds	1
_kcomm_tx_shift:	
	opt stack 0
	ds	1
_kcomm_tx_buf:	
	opt stack 0
	ds	1

	psect	dataBANK1
__pdataBANK1:	
	opt stack 0
Battery_Update@startup_cnt:	
	opt stack 0
	ds	1

	psect	cstackBANK1
__pcstackBANK1:	
	opt stack 0
?___lwdiv:	
	opt stack 0
_Key_Application$619:	
; 2 bytes @ 0x0

	opt stack 0
_sysinitial$240:	
; 1 bytes @ 0x0

	opt stack 0
___lwdiv@divisor:	
; 2 bytes @ 0x0

	opt stack 0

; 2 bytes @ 0x0
	ds	1
Key_Application@edge:	
	opt stack 0

; 1 bytes @ 0x1
	ds	1
Key_Application@cur:	
	opt stack 0
_sysinitial$241:	
; 1 bytes @ 0x2

	opt stack 0
___lwdiv@dividend:	
; 2 bytes @ 0x2

	opt stack 0

; 2 bytes @ 0x2
	ds	2
___lwdiv@counter:	
	opt stack 0
_sysinitial$242:	
; 1 bytes @ 0x4

	opt stack 0

; 2 bytes @ 0x4
	ds	1
___lwdiv@quotient:	
	opt stack 0

; 2 bytes @ 0x5
	ds	1
_sysinitial$243:	
	opt stack 0

; 2 bytes @ 0x6
	ds	2
_sysinitial$244:	
	opt stack 0

; 2 bytes @ 0x8
	ds	2
_sysinitial$245:	
	opt stack 0

; 2 bytes @ 0xA
	ds	2

	psect	cstackCOMMON
__pcstackCOMMON:	
	opt stack 0
??_ADC_Init:	
??_show_gear_led:	
; 1 bytes @ 0x0

??_T1_PWM_inital:	
; 1 bytes @ 0x0

??_inital:	
; 1 bytes @ 0x0

??_sysinitial:	
; 1 bytes @ 0x0

??_ramInitial:	
; 1 bytes @ 0x0

??_Delay_Init:	
; 1 bytes @ 0x0

??_delay_us:	
; 1 bytes @ 0x0

??_Sleep_Func:	
; 1 bytes @ 0x0

??_adc_read_vdd:	
; 1 bytes @ 0x0

??_LedMode_Func:	
; 1 bytes @ 0x0

??_set_fan:	
; 1 bytes @ 0x0

??_Gear5_Duty_Update:	
; 1 bytes @ 0x0

??_trigger_warn:	
; 1 bytes @ 0x0

??_warn_flash_proc:	
; 1 bytes @ 0x0

??_Key_Func:	
; 1 bytes @ 0x0

??_SW_Func:	
; 1 bytes @ 0x0

??_Key_Application:	
; 1 bytes @ 0x0

??_comm_pack_tx:	
; 1 bytes @ 0x0

??_comm_parse_rx:	
; 1 bytes @ 0x0

??_Kcomm_ISR:	
; 1 bytes @ 0x0

??_Comm_Process:	
; 1 bytes @ 0x0

??_main:	
; 1 bytes @ 0x0

??___wmul:	
; 1 bytes @ 0x0

??___lwdiv:	
; 1 bytes @ 0x0


	psect	cstackBANK0
__pcstackBANK0:	
; 1 bytes @ 0x0

	opt stack 0
?_ADC_Init:	
?_show_gear_led:	
; 1 bytes @ 0x0

?_T1_PWM_inital:	
; 1 bytes @ 0x0

?_inital:	
; 1 bytes @ 0x0

?_sysinitial:	
; 1 bytes @ 0x0

?_ramInitial:	
; 1 bytes @ 0x0

?_Sleep_Func:	
; 1 bytes @ 0x0

?_LedMode_Func:	
; 1 bytes @ 0x0

?_Battery_Update:	
; 1 bytes @ 0x0

?_set_fan:	
; 1 bytes @ 0x0

?_Gear5_Duty_Update:	
; 1 bytes @ 0x0

?_fan_ramp_proc:	
; 1 bytes @ 0x0

?_trigger_warn:	
; 1 bytes @ 0x0

?_warn_flash_proc:	
; 1 bytes @ 0x0

?_Key_Func:	
; 1 bytes @ 0x0

?_SW_Func:	
; 1 bytes @ 0x0

?_Key_Application:	
; 1 bytes @ 0x0

?_comm_pack_tx:	
; 1 bytes @ 0x0

?_comm_parse_rx:	
; 1 bytes @ 0x0

?_Kcomm_ISR:	
; 1 bytes @ 0x0

?_Comm_Process:	
; 1 bytes @ 0x0

?_main:	
; 1 bytes @ 0x0

?_Timer1_Isr:	
; 1 bytes @ 0x0

comm_pack_tx@hi:	
; 1 bytes @ 0x0

	opt stack 0

; 1 bytes @ 0x0
	ds	1
comm_pack_tx@result:	
	opt stack 0

; 1 bytes @ 0x1
	ds	1
comm_pack_tx@lo:	
	opt stack 0

; 1 bytes @ 0x2
	ds	1
_Kcomm_ISR$634:	
	opt stack 0

; 2 bytes @ 0x3
	ds	2
??_Timer1_Isr:	

; 1 bytes @ 0x5
	ds	2
?_Delay_Init:	
?_delay_us:	
; 1 bytes @ 0x7

??_fan_ramp_proc:	
; 1 bytes @ 0x7

?_adc_read_vdd:	
; 1 bytes @ 0x7

	opt stack 0
?___wmul:	
; 2 bytes @ 0x7

	opt stack 0
show_gear_led@gear:	
; 2 bytes @ 0x7

	opt stack 0
set_fan@gear:	
; 1 bytes @ 0x7

	opt stack 0
trigger_warn@led_num:	
; 1 bytes @ 0x7

	opt stack 0
comm_parse_rx@check:	
; 1 bytes @ 0x7

	opt stack 0
Delay_Init@Delay_Duty:	
; 1 bytes @ 0x7

	opt stack 0
delay_us@us:	
; 2 bytes @ 0x7

	opt stack 0
___wmul@multiplier:	
; 2 bytes @ 0x7

	opt stack 0

; 2 bytes @ 0x7
	ds	1
comm_parse_rx@hi:	
	opt stack 0

; 1 bytes @ 0x8
	ds	1
comm_parse_rx@raw:	
	opt stack 0
Delay_Init@i:	
; 1 bytes @ 0x9

	opt stack 0
delay_us@i:	
; 2 bytes @ 0x9

	opt stack 0
adc_read_vdd@result:	
; 2 bytes @ 0x9

	opt stack 0
fan_ramp_proc@target_fixed:	
; 2 bytes @ 0x9

	opt stack 0
___wmul@multiplicand:	
; 2 bytes @ 0x9

	opt stack 0

; 2 bytes @ 0x9
	ds	1
comm_parse_rx@lo:	
	opt stack 0

; 1 bytes @ 0xA
	ds	1
??_Battery_Update:	
Comm_Process@rx_ok:	
; 1 bytes @ 0xB

	opt stack 0
___wmul@product:	
; 1 bytes @ 0xB

	opt stack 0

; 2 bytes @ 0xB
	ds	2

	psect	maintext
__pmaintext:	
;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;
;; *************** function _main *****************
;; Defined at:
;;		line 1424 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC_Init
;;		_Battery_Update
;;		_Comm_Process
;;		_Delay_Init
;;		_Gear5_Duty_Update
;;		_Key_Application
;;		_Key_Func
;;		_LedMode_Func
;;		_SW_Func
;;		_Sleep_Func
;;		_T1_PWM_inital
;;		_fan_ramp_proc
;;		_inital
;;		_ramInitial
;;		_set_fan
;;		_sysinitial
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _main

_main:	
	opt stack 2

;main.c: 1426: ramInitial();

;incstack = 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_ramInitial

;main.c: 1427: inital();
	fcall	_inital

;main.c: 1428: Delay_Init(200);
	movlw	200
	movwf	Delay_Init@Delay_Duty
	clrf	Delay_Init@Delay_Duty+1
	fcall	_Delay_Init

;main.c: 1429: ADC_Init();
	fcall	_ADC_Init

;main.c: 1430: T1_PWM_inital();
	fcall	_T1_PWM_inital

;main.c: 1431: sysinitial();
	fcall	_sysinitial

;main.c: 1432: WDTEN = 1;
	bsf	65,7	;volatile

;main.c: 1434: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 1435: g_vdd_adc = 3308u;
	movlw	236
	movwf	_g_vdd_adc
	movlw	12
	movwf	_g_vdd_adc+1

;main.c: 1436: set_fan(0);
	movlw	0
	fcall	_set_fan
l5850:	

;main.c: 1439: {
;main.c: 1440: T0IE = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	14,0	;volatile

;main.c: 1441: GIE = 1;
	bsf	14,7	;volatile

;main.c: 1442: if(DIY_Flag1.OnrBit.b0)
	btfss	_DIY_Flag1,0
	goto	l5850

;main.c: 1443: {
;main.c: 1444: DIY_Flag1.OnrBit.b0 = 0;
	bcf	_DIY_Flag1,0
	clrwdt	;# 

;main.c: 1450: Comm_Process();
	fcall	_Comm_Process

;main.c: 1451: if(g_slave_alive_ms > 0)
	bsf	3,5	;RP0=1, select bank1
	movf	_g_slave_alive_ms^(0+128),w
	iorwf	(_g_slave_alive_ms+1)^(0+128),w
	btfsc	3,2
	goto	l1401

;main.c: 1452: {
;main.c: 1453: g_slave_alive_ms--;
	movlw	1
	subwf	_g_slave_alive_ms^(0+128),f
	movlw	0
	btfss	3,0
	decf	(_g_slave_alive_ms+1)^(0+128),f
	subwf	(_g_slave_alive_ms+1)^(0+128),f

;main.c: 1454: }
	goto	l5872
l1401:	

;main.c: 1455: else
;main.c: 1456: {
;main.c: 1457: if(DIY_Flag2.OnrBit.b2 || DIY_Flag2.OnrBit.b3)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag2,2
	goto	l5866
	btfss	_DIY_Flag2,3
	goto	l5868
l5866:	

;main.c: 1458: {
;main.c: 1459: g_gear = 0;
	clrf	_g_gear

;main.c: 1460: g_warn_flash = 0;
	clrf	_g_warn_flash
l5868:	

;main.c: 1461: }
;main.c: 1463: DIY_Flag2.OnrBit.b2 = 0;
	bcf	_DIY_Flag2,2

;main.c: 1464: DIY_Flag2.OnrBit.b3 = 0;
	bcf	_DIY_Flag2,3
l5872:	

;main.c: 1465: }
;main.c: 1467: Battery_Update();
	fcall	_Battery_Update

;main.c: 1468: Key_Func();
	fcall	_Key_Func

;main.c: 1469: SW_Func();
	fcall	_SW_Func

;main.c: 1470: Key_Application();
	fcall	_Key_Application

;main.c: 1471: Gear5_Duty_Update();
	fcall	_Gear5_Duty_Update

;main.c: 1472: fan_ramp_proc();
	fcall	_fan_ramp_proc

;main.c: 1473: LedMode_Func();
	fcall	_LedMode_Func

;main.c: 1474: Sleep_Func();
	fcall	_Sleep_Func
	goto	l5850
__end_of_main:	
	opt stack 0

	psect	text1
	file	"inital.c"
__ptext1:	
;; *************** function _ramInitial *****************
;; Defined at:
;;		line 68 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: A00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ramInitial

_ramInitial:	
	opt stack 4

;inital.c: 70: FSR=0X3f;

;incstack = 0
; Regs used in _ramInitial: [wreg+status,2+status,0]
	movlw	63
	movwf	4	;volatile
l3980:	

;inital.c: 72: INDF=0;
	clrf	0	;volatile

;inital.c: 73: FSR--;
	decf	4,f	;volatile

;inital.c: 74: }while(FSR != 0x0f);
	movlw	15
	xorwf	4,w	;volatile
	btfss	3,2
	goto	l3980

;inital.c: 76: FSR=0Xdf;
	movlw	223
	movwf	4	;volatile
l3988:	

;inital.c: 78: INDF=0;
	clrf	0	;volatile

;inital.c: 79: FSR--;
	decf	4,f	;volatile

;inital.c: 80: }while(FSR != 0x8f);
	movlw	143
	xorwf	4,w	;volatile
	btfsc	3,2
	return
	goto	l3988
__end_of_ramInitial:	
	opt stack 0

	psect	text2
	file	"main.c"
__ptext2:	
;; *************** function _fan_ramp_proc *****************
;; Defined at:
;;		line 605 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  target_fixed    2    9[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       2       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _fan_ramp_proc

_fan_ramp_proc:	
	opt stack 4

;main.c: 607: unsigned int target_fixed = (unsigned int)g_target_pwm << 4;

;incstack = 0
; Regs used in _fan_ramp_proc: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	movf	_g_target_pwm,w
	movwf	fan_ramp_proc@target_fixed
	movlw	240
	clrf	fan_ramp_proc@target_fixed+1
	swapf	fan_ramp_proc@target_fixed,f
	swapf	fan_ramp_proc@target_fixed+1,f
	andwf	fan_ramp_proc@target_fixed+1,f
	movf	fan_ramp_proc@target_fixed,w
	andlw	15
	iorwf	fan_ramp_proc@target_fixed+1,f
	movlw	240
	andwf	fan_ramp_proc@target_fixed,f

;main.c: 609: if(g_target_pwm == 0)
	movf	_g_target_pwm,w
	btfss	3,2
	goto	l4302

;main.c: 610: {
;main.c: 611: g_current_pwm = 0;
	clrf	_g_current_pwm
	clrf	_g_current_pwm+1

;main.c: 612: PWM0P = 0;
	clrf	79	;volatile
l4298:	

;main.c: 613: PORTB2 = 0;
	bcf	6,2	;volatile
	return
l4302:	

;main.c: 615: }
;main.c: 617: if(g_current_pwm < target_fixed)
	movf	fan_ramp_proc@target_fixed+1,w
	subwf	_g_current_pwm+1,w
	btfss	3,2
	goto	u3445
	movf	fan_ramp_proc@target_fixed,w
	subwf	_g_current_pwm,w
u3445:	
	btfsc	3,0
	goto	l4310

;main.c: 618: {
;main.c: 619: g_current_pwm += 1;
	incf	_g_current_pwm,f
	btfsc	3,2
	incf	_g_current_pwm+1,f

;main.c: 620: if(g_current_pwm > target_fixed) g_current_pwm = target_fixed;
	movf	_g_current_pwm+1,w
	subwf	fan_ramp_proc@target_fixed+1,w
	btfss	3,2
	goto	u3475
	movf	_g_current_pwm,w
	subwf	fan_ramp_proc@target_fixed,w
	goto	u3475
l4310:	

;main.c: 622: else if(g_current_pwm > target_fixed)
	movf	_g_current_pwm+1,w
	subwf	fan_ramp_proc@target_fixed+1,w
	btfss	3,2
	goto	u3465
	movf	_g_current_pwm,w
	subwf	fan_ramp_proc@target_fixed,w
u3465:	
	btfsc	3,0
	goto	l4316

;main.c: 623: {
;main.c: 624: g_current_pwm -= 1;
	movlw	1
	subwf	_g_current_pwm,f
	btfss	3,0
	decf	_g_current_pwm+1,f

;main.c: 625: if(g_current_pwm < target_fixed) g_current_pwm = target_fixed;
	movf	fan_ramp_proc@target_fixed+1,w
	subwf	_g_current_pwm+1,w
	btfss	3,2
	goto	u3475
	movf	fan_ramp_proc@target_fixed,w
	subwf	_g_current_pwm,w
u3475:	
	btfsc	3,0
	goto	l4316
	movf	fan_ramp_proc@target_fixed+1,w
	movwf	_g_current_pwm+1
	movf	fan_ramp_proc@target_fixed,w
	movwf	_g_current_pwm
l4316:	

;main.c: 626: }
;main.c: 628: PWM0P = (unsigned char)(g_current_pwm >> 4);
	movf	_g_current_pwm+1,w
	movwf	??_fan_ramp_proc+1
	movf	_g_current_pwm,w
	movwf	??_fan_ramp_proc
	movlw	4
u3485:	
	bcf	3,0
	rrf	??_fan_ramp_proc+1,f
	rrf	??_fan_ramp_proc,f
	addlw	-1
	btfss	3,2
	goto	u3485
	movf	??_fan_ramp_proc,w
	movwf	79	;volatile

;main.c: 629: if(PWM0P == 0) PORTB2 = 0;
	movf	79,w	;volatile
	btfss	3,2
	return
	goto	l4298
__end_of_fan_ramp_proc:	
	opt stack 0

	psect	text3
	file	"pwm.c"
__ptext3:	
;; *************** function _T1_PWM_inital *****************
;; Defined at:
;;		line 21 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _T1_PWM_inital

_T1_PWM_inital:	
	opt stack 4

;pwm.c: 23: WDTEN=0;

;incstack = 0
; Regs used in _T1_PWM_inital: [wreg+status,2]
	bcf	65,7	;volatile

;pwm.c: 26: TMR2H=0x40;
	movlw	64
	movwf	81	;volatile

;pwm.c: 28: T1 = 0x68;
	movlw	104
	movwf	77	;volatile

;pwm.c: 30: T1LOAD = 123;
	movlw	123
	movwf	78	;volatile

;pwm.c: 31: PWM0P = 0;
	clrf	79	;volatile

;pwm.c: 33: T1CON=0x45;
	movlw	69
	movwf	76	;volatile

;pwm.c: 35: T1IF=0;
	bcf	75,0	;volatile

;pwm.c: 37: T1EN=1;
	bsf	76,7	;volatile

;pwm.c: 38: T1IE=0;
	bcf	75,1	;volatile

;pwm.c: 40: T1CR_AUXR = 0;
	clrf	75	;volatile
	return
__end_of_T1_PWM_inital:	
	opt stack 0

	psect	text4
	file	"main.c"
__ptext4:	
;; *************** function _Sleep_Func *****************
;; Defined at:
;;		line 192 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ADC_Init
;;		_delay_us
;;		_inital
;;		_sysinitial
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Sleep_Func

_Sleep_Func:	
	opt stack 2

;main.c: 194: static unsigned int Sleep_Time = 0;
;main.c: 197: if(DIY_Flag2.OnrBit.b0 || DIY_Flag1.OnrBit.b5 || DIY_Flag2.OnrBit.b2 || DIY_Flag2.OnrBit.b3 || DIY_Flag1.OnrBit.b7 || kcomm_wakeup)

;incstack = 0
; Regs used in _Sleep_Func: [wreg+status,2+status,0+pclath+cstack]
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag2,0
	btfsc	_DIY_Flag1,5
	goto	l5272
	btfss	_DIY_Flag2,2
	btfsc	_DIY_Flag2,3
	goto	l5272
	btfsc	_DIY_Flag1,7
	goto	l5272
	movf	_kcomm_wakeup,w
	btfsc	3,2
	goto	l5274
l5272:	

;main.c: 198: {
;main.c: 199: Sleep_Time = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)
l5274:	

;main.c: 200: }
;main.c: 201: Sleep_Time++;
	bsf	3,5	;RP0=1, select bank1
	incf	Sleep_Func@Sleep_Time^(0+128),f
	btfsc	3,2
	incf	(Sleep_Func@Sleep_Time+1)^(0+128),f

;main.c: 202: if(Sleep_Time >= 1000)
	movlw	3
	subwf	(Sleep_Func@Sleep_Time+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	Sleep_Func@Sleep_Time^(0+128),w
	btfss	3,0
	return

;main.c: 203: {
;main.c: 204: Sleep_Time = 0;
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)

;main.c: 205: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	bcf	3,5	;RP0=0, select bank0
	fcall	PL2	;call to abstracted procedure

;main.c: 207: GIE = 0;
	bcf	14,7	;volatile

;main.c: 208: T0IE = 0;
	bcf	14,0	;volatile

;main.c: 209: T1IE = 0;
	bcf	75,1	;volatile

;main.c: 210: T2IE = 0;
	bcf	75,6	;volatile

;main.c: 211: INTECON = 0;
	clrf	14	;volatile

;main.c: 212: PIR = 0;
	clrf	15	;volatile

;main.c: 214: ADCON0 = 0;
	clrf	90	;volatile

;main.c: 215: ADCON1 = 0;
	clrf	91	;volatile

;main.c: 216: ANSELL = 0;
	clrf	86	;volatile

;main.c: 217: ANSELH = 0;
	clrf	87	;volatile

;main.c: 220: TRISA = 0x0E;
	movlw	14
	movwf	69	;volatile

;main.c: 221: TRISB = 0x48;
	movlw	72

;main.c: 223: PHCON1 = 0xF1;

;main.c: 224: PHCON = 0xFF;

;main.c: 225: PDCON1 = 0xFF;

;main.c: 226: PDCON = 0xBF;
	fcall	PL4	;call to abstracted procedure

;main.c: 228: delay_us(1000);
	movlw	232
	movwf	delay_us@us
	movlw	3
	movwf	delay_us@us+1
	fcall	_delay_us

;main.c: 230: BOREN = 0;
	bcf	75,2	;volatile

;main.c: 231: WDTEN = 0;
	bcf	65,7	;volatile

;main.c: 234: IOCA = 0x0E;
	movlw	14
	movwf	7	;volatile

;main.c: 235: IOCB = 0x40;
	movlw	64
	movwf	9	;volatile

;main.c: 237: unsigned char temp;
;main.c: 238: temp = PORTA;
	movf	5,w	;volatile

;main.c: 239: temp = PORTB;
	movf	6,w	;volatile

;main.c: 242: PAIF = 0;
	bcf	15,0	;volatile

;main.c: 243: PBIF = 0;
	bcf	14,4	;volatile

;main.c: 244: PAIE = 1;
	bsf	15,1	;volatile

;main.c: 245: PBIE = 1;
	bsf	14,1	;volatile
	clrwdt	;# 
	nop	;# 
	sleep	;# 
	nop	;# 

;main.c: 254: WDTEN = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	65,7	;volatile

;main.c: 255: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 257: if(((PORTB & 0x40) ? 1 : 0))
	btfss	6,6	;volatile
	goto	l5346
	movlw	184

;main.c: 258: {
;main.c: 260: DIY_Flag2.OnrBit.b2 = 1;
	bsf	_DIY_Flag2,2

;main.c: 261: g_slave_alive_ms = 3000;
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_slave_alive_ms^(0+128)
	movlw	11
	movwf	(_g_slave_alive_ms^(0+128)+1)
l1019:	
;main.c: 264: while(((PORTB & 0x40) ? 1 : 0))

	bcf	3,5	;RP0=0, select bank0
	btfss	6,6	;volatile
	goto	l5342
	clrwdt	;# 
	goto	l1019
l5342:	

;main.c: 269: }
;main.c: 272: kcomm_cycle = 195;
	movlw	195
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_cycle^(0+128)

;main.c: 273: kcomm_wakeup = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_wakeup
l5346:	

;main.c: 274: }
;main.c: 276: temp = PORTA;
	movf	5,w	;volatile

;main.c: 277: temp = PORTB;
	movf	6,w	;volatile

;main.c: 279: PAIF = 0;
	bcf	15,0	;volatile

;main.c: 280: PBIF = 0;
	bcf	14,4	;volatile

;main.c: 281: PAIE = 0;
	bcf	15,1	;volatile

;main.c: 282: PBIE = 0;
	bcf	14,1	;volatile

;main.c: 284: if(!PORTA2 || !PORTA1)
	btfsc	5,2	;volatile
	btfss	5,1	;volatile

;main.c: 285: {
;main.c: 286: DIY_Flag1.OnrBit.b5 = 1;
	bsf	_DIY_Flag1,5

;main.c: 287: }
;main.c: 288: inital();
	fcall	_inital

;main.c: 289: sysinitial();
	fcall	_sysinitial

;main.c: 290: ADC_Init();
	fcall	_ADC_Init

;main.c: 291: BOREN = 1;
	bsf	75,2	;volatile

;main.c: 292: Sleep_Time = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)

;main.c: 293: DIY_Flag1.OnrBit.b0 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,0
	return
__end_of_Sleep_Func:	
	opt stack 0
PL4:	
	opt stack 4
	movwf	70	;volatile
	movlw	241
	movwf	67	;volatile
	movlw	255
	movwf	13	;volatile
	movwf	66	;volatile
	movlw	191
	movwf	11	;volatile
	return
__end_ofPL4:	
	opt stack 0

	psect	text5
	file	"inital.c"
__ptext5:	
;; *************** function _sysinitial *****************
;; Defined at:
;;		line 40 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0      12
;;      Temps:          0       0       0
;;      Totals:         0       0      12
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Func
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _sysinitial

_sysinitial:	
	opt stack 4

;inital.c: 43: INTECON = 0x00;

;incstack = 0
; Regs used in _sysinitial: [wreg+status,2]
	clrf	14	;volatile

;inital.c: 45: OPTION = 0X00;
	clrf	65	;volatile

;inital.c: 57: INTECON = ( 1 ? (INTECON|(0x01<<0)) : (INTECON&(0xff-(0x01<<0))) );
	movf	14,w	;volatile
	bsf	3,5	;RP0=1, select bank1
	movwf	_sysinitial$240^(0+128)
	clrf	(_sysinitial$240+1)^(0+128)
	bsf	_sysinitial$240^(0+128),0

;inital.c: 58: INTECON = ( 0 ? (INTECON|(0x01<<3)) : (INTECON&(0xff-(0x01<<3))) );
	movf	_sysinitial$240^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	14	;volatile
	movf	14,w	;volatile
	andlw	247
	bsf	3,5	;RP0=1, select bank1
	movwf	_sysinitial$241^(0+128)
	clrf	(_sysinitial$241+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	movwf	14	;volatile

;inital.c: 59: INTECON = ( 1 ? (INTECON|(0x01<<7)) : (INTECON&(0xff-(0x01<<7))) );
	movf	14,w	;volatile
	bsf	3,5	;RP0=1, select bank1
	movwf	_sysinitial$242^(0+128)
	clrf	(_sysinitial$242+1)^(0+128)
	bsf	_sysinitial$242^(0+128),7
	movf	_sysinitial$242^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	14	;volatile

;inital.c: 61: T1CON = ( 1 ? (T1CON|(0x01<<5)) : (T1CON&(0xff-(0x01<<5))) );
	movf	76,w	;volatile
	bsf	3,5	;RP0=1, select bank1
	movwf	_sysinitial$243^(0+128)
	clrf	(_sysinitial$243+1)^(0+128)
	bsf	_sysinitial$243^(0+128),5

;inital.c: 63: OPTION = ( 0 ? (OPTION|(0x01<<5)) : (OPTION&(0xff-(0x01<<5))) );
	movf	_sysinitial$243^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	76	;volatile
	movf	65,w	;volatile
	andlw	223
	bsf	3,5	;RP0=1, select bank1
	movwf	_sysinitial$244^(0+128)
	clrf	(_sysinitial$244+1)^(0+128)

;inital.c: 64: OPTION = ( 0 ? (OPTION|(0x01<<4)) : (OPTION&(0xff-(0x01<<4))) );
	bcf	3,5	;RP0=0, select bank0
	movwf	65	;volatile
	movf	65,w	;volatile
	andlw	239
	bsf	3,5	;RP0=1, select bank1
	movwf	_sysinitial$245^(0+128)
	clrf	(_sysinitial$245+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	movwf	65	;volatile
	return
__end_of_sysinitial:	
	opt stack 0

	psect	text6
__ptext6:	
;; *************** function _inital *****************
;; Defined at:
;;		line 13 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Func
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _inital

_inital:	
	opt stack 4

;inital.c: 15: ANSELL=0X00;

;incstack = 0
; Regs used in _inital: [wreg+status,2]
	clrf	86	;volatile

;inital.c: 16: ANSELH=0X00;
	clrf	87	;volatile

;inital.c: 18: PORTA=0XD0;
	movlw	208
	movwf	5	;volatile

;inital.c: 19: PORTB=0X03;
	movlw	3
	movwf	6	;volatile

;inital.c: 21: TRISA=0X0E;
	movlw	14
	movwf	69	;volatile

;inital.c: 22: TRISB=0X08;
	movlw	8

;inital.c: 24: PHCON1=0XF1;

;inital.c: 25: PHCON=0XFF;

;inital.c: 27: PDCON1=0xFF;

;inital.c: 28: PDCON=0xBF;
	fcall	PL4	;call to abstracted procedure

;inital.c: 31: IOCA=0X00;
	clrf	7	;volatile

;inital.c: 32: IOCB=0X00;
	clrf	9	;volatile

;inital.c: 34: PBIE=0;
	bcf	14,1	;volatile
	return
__end_of_inital:	
	opt stack 0

	psect	text7
	file	"main.c"
__ptext7:	
;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 301 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_Sleep_Func
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ADC_Init

_ADC_Init:	
	opt stack 2

;main.c: 303: ANSELL=0X20;

;incstack = 0
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	movlw	32
	movwf	86	;volatile

;main.c: 304: ANSELH=0X00;
	clrf	87	;volatile

;main.c: 305: ADCON0=0X15;
	movlw	21
	movwf	90	;volatile

;main.c: 306: adcon1_val = 0X08;
	movlw	8
	movwf	_adcon1_val

;main.c: 307: ADCON1 = adcon1_val;
	movwf	91	;volatile

;main.c: 308: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 309: delay_us(100);
	movlw	100
	movwf	delay_us@us
	clrf	delay_us@us+1
	ljmp	l3640
__end_of_ADC_Init:	
	opt stack 0

	psect	text8
__ptext8:	
;; *************** function _delay_us *****************
;; Defined at:
;;		line 175 in file "main.c"
;; Parameters:    Size  Location     Type
;;  us              2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    9[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Func
;;		_ADC_Init
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _delay_us

_delay_us:	
	opt stack 3
l3640:	
;main.c: 177: unsigned int i;
;main.c: 179: while(us--)

;incstack = 0
; Regs used in _delay_us: [wreg+status,2+status,0]

	movlw	1
	subwf	delay_us@us,f
	movlw	0
	btfss	3,0
	decf	delay_us@us+1,f
	subwf	delay_us@us+1,f
	incfsz	delay_us@us,w
	goto	l3630
	incf	delay_us@us+1,w
	btfsc	3,2
	return
l3630:	

;main.c: 180: {
;main.c: 182: for(i = 0; i < 4; i++)
	clrf	delay_us@i
	clrf	delay_us@i+1
l1006:	
	nop	;# 
	bcf	3,5	;RP0=0, select bank0
	incf	delay_us@i,f
	btfsc	3,2
	incf	delay_us@i+1,f
	movlw	0
	subwf	delay_us@i+1,w
	movlw	4
	btfsc	3,2
	subwf	delay_us@i,w
	btfsc	3,0
	goto	l3640
	goto	l1006
__end_of_delay_us:	
	opt stack 0

	psect	text9
__ptext9:	
;; *************** function _SW_Func *****************
;; Defined at:
;;		line 737 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _SW_Func

_SW_Func:	
	opt stack 4

;main.c: 739: static unsigned char sw_time1 = 0;
;main.c: 740: static unsigned char sw_time2 = 0;
;main.c: 742: if(PORTA3)

;incstack = 0
; Regs used in _SW_Func: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	btfss	5,3	;volatile
	goto	l4386
	movlw	20

;main.c: 743: {
;main.c: 745: sw_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	SW_Func@sw_time2^(0+128)

;main.c: 746: sw_time1 ++;
	incf	SW_Func@sw_time1^(0+128),f

;main.c: 747: if(sw_time1 >= 20)
	subwf	SW_Func@sw_time1^(0+128),w
	btfss	3,0
	return

;main.c: 748: {
;main.c: 749: sw_time1 = 0;
	clrf	SW_Func@sw_time1^(0+128)

;main.c: 750: if(DIY_Flag2.OnrBit.b0)
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag2,0
	goto	l4382

;main.c: 751: {
;main.c: 752: DIY_Flag1.OnrBit.b7 = 0;
	bcf	_DIY_Flag1,7

;main.c: 753: g_offshow_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)
l4382:	

;main.c: 754: }
;main.c: 755: DIY_Flag2.OnrBit.b0 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag2,0

;main.c: 756: DIY_Flag1.OnrBit.b5 = 0;
	bcf	_DIY_Flag1,5

;main.c: 758: g_pwr_delay_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_pwr_delay_ms^(0+128)
	clrf	(_g_pwr_delay_ms+1)^(0+128)
	return
l4386:	
	movlw	20

;main.c: 762: else
;main.c: 763: {
;main.c: 765: sw_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	SW_Func@sw_time1^(0+128)

;main.c: 766: sw_time2 ++;
	incf	SW_Func@sw_time2^(0+128),f

;main.c: 767: if(sw_time2 >= 20)
	subwf	SW_Func@sw_time2^(0+128),w
	btfss	3,0
	return

;main.c: 768: {
;main.c: 769: sw_time2 = 0;
	clrf	SW_Func@sw_time2^(0+128)

;main.c: 770: DIY_Flag2.OnrBit.b0 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag2,0

;main.c: 771: DIY_Flag1.OnrBit.b5 = 0;
	bcf	_DIY_Flag1,5
	return
__end_of_SW_Func:	
	opt stack 0

	psect	text10
__ptext10:	
;; *************** function _LedMode_Func *****************
;; Defined at:
;;		line 336 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_show_gear_led
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LedMode_Func

_LedMode_Func:	
	opt stack 3

;main.c: 339: static unsigned char chg_pwm_cnt = 0;
;main.c: 340: static unsigned char breath_duty = 0;
;main.c: 341: static unsigned char breath_dir = 1;
;main.c: 342: static unsigned char breath_cnt = 0;
;main.c: 345: if(g_battery_empty)

;incstack = 0
; Regs used in _LedMode_Func: [wreg+status,2+status,0+pclath+cstack]
	movf	_g_battery_empty,w
	btfsc	3,2
	goto	l1045
l5372:	

;main.c: 346: {
;main.c: 347: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 348: return;
	return
l1045:	

;main.c: 349: }
;main.c: 352: if((DIY_Flag2.OnrBit.b2 || DIY_Flag2.OnrBit.b3) && !DIY_Flag2.OnrBit.b0)
	btfsc	_DIY_Flag2,2
	goto	l1049
	btfss	_DIY_Flag2,3
	goto	l1047
l1049:	
	btfsc	_DIY_Flag2,0
	goto	l1047
	movlw	50

;main.c: 353: {
;main.c: 355: breath_cnt++;
	incf	LedMode_Func@breath_cnt,f

;main.c: 356: if(breath_cnt >= 50)
	subwf	LedMode_Func@breath_cnt,w
	btfss	3,0
	goto	l5394

;main.c: 357: {
;main.c: 358: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt

;main.c: 359: if(breath_dir)
	movf	LedMode_Func@breath_dir,w
	btfsc	3,2
	goto	l5390

;main.c: 360: {
;main.c: 361: if(breath_duty < 20) breath_duty++;
	movlw	20
	subwf	LedMode_Func@breath_duty,w
	btfsc	3,0
	goto	l5388
	incf	LedMode_Func@breath_duty,f
	goto	l5394
l5388:	

;main.c: 362: else breath_dir = 0;
	clrf	LedMode_Func@breath_dir
	goto	l5394
l5390:	

;main.c: 364: else
;main.c: 365: {
;main.c: 366: if(breath_duty > 0) breath_duty--;
	movf	LedMode_Func@breath_duty,w
	btfsc	3,2
	goto	l1055
	decf	LedMode_Func@breath_duty,f
	goto	l5394
l1055:	

;main.c: 367: else breath_dir = 1;
	clrf	LedMode_Func@breath_dir
	incf	LedMode_Func@breath_dir,f
l5394:	
	movlw	20

;main.c: 368: }
;main.c: 369: }
;main.c: 372: chg_pwm_cnt++;
	incf	LedMode_Func@chg_pwm_cnt,f

;main.c: 373: if(chg_pwm_cnt >= 20)
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfsc	3,0

;main.c: 374: chg_pwm_cnt = 0;
	clrf	LedMode_Func@chg_pwm_cnt

;main.c: 376: if(DIY_Flag2.OnrBit.b3)
	btfss	_DIY_Flag2,3
	goto	l5410

;main.c: 377: {
;main.c: 379: (PORTB1 = 0); (PORTB0 = 0); (PORTA7 = 0); (PORTA6 = 0); (PORTA4 = 0);
	fcall	PL6	;call to abstracted procedure

;main.c: 380: breath_duty = 20;
	movlw	20
	movwf	LedMode_Func@breath_duty

;main.c: 381: breath_dir = 0;
	clrf	LedMode_Func@breath_dir

;main.c: 382: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt

;main.c: 383: }
	return
l5410:	

;main.c: 384: else
;main.c: 385: {
;main.c: 388: if(level >= 2) { (PORTA4 = 0); }
	movlw	2
	subwf	_level,w
	btfss	3,0
	goto	l5414
l5412:	
	bcf	5,4	;volatile
	goto	l5420
l5414:	

;main.c: 389: else if(level == 1) { if(chg_pwm_cnt < breath_duty) (PORTA4 = 0); else (PORTA4 = 1); }
	decfsz	_level,w
	goto	l1063
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5412
l1063:	
	bsf	5,4	;volatile
l5420:	

;main.c: 393: if(level >= 3) { (PORTA6 = 0); }
	movlw	3
	subwf	_level,w
	btfss	3,0
	goto	l5424
l5422:	
	bcf	5,6	;volatile
	goto	l5430
l5424:	

;main.c: 394: else if(level == 2) { if(chg_pwm_cnt < breath_duty) (PORTA6 = 0); else (PORTA6 = 1); }
	movlw	2
	xorwf	_level,w
	btfss	3,2
	goto	l1069
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5422
l1069:	
	bsf	5,6	;volatile
l5430:	

;main.c: 398: if(level >= 4) { (PORTA7 = 0); }
	movlw	4
	subwf	_level,w
	btfss	3,0
	goto	l5434
l5432:	
	bcf	5,7	;volatile
	goto	l5440
l5434:	

;main.c: 399: else if(level == 3) { if(chg_pwm_cnt < breath_duty) (PORTA7 = 0); else (PORTA7 = 1); }
	movlw	3
	xorwf	_level,w
	btfss	3,2
	goto	l1075
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5432
l1075:	
	bsf	5,7	;volatile
l5440:	

;main.c: 403: if(level >= 5) { (PORTB0 = 0); }
	movlw	5
	subwf	_level,w
	btfss	3,0
	goto	l5444
l5442:	
	bcf	6,0	;volatile
	goto	l5450
l5444:	

;main.c: 404: else if(level == 4) { if(chg_pwm_cnt < breath_duty) (PORTB0 = 0); else (PORTB0 = 1); }
	movlw	4
	xorwf	_level,w
	btfss	3,2
	goto	l1081
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5442
l1081:	
	bsf	6,0	;volatile
l5450:	

;main.c: 408: if(level >= 6) { (PORTB1 = 0); }
	movlw	6
	subwf	_level,w
	btfsc	3,0
	goto	l5452
	goto	l5454
l5456:	
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfsc	3,0
	goto	l1087
l5452:	
	bcf	6,1	;volatile
	return
l5454:	

;main.c: 409: else if(level == 5) { if(chg_pwm_cnt < breath_duty) (PORTB1 = 0); else (PORTB1 = 1); }
	movlw	5
	xorwf	_level,w
	btfsc	3,2
	goto	l5456
l1087:	
	bsf	6,1	;volatile
	return
l1047:	

;main.c: 413: }
;main.c: 416: if(DIY_Flag2.OnrBit.b0 && g_gear == 6)
	btfss	_DIY_Flag2,0
	goto	l1090
	movlw	6
	xorwf	_g_gear,w
	btfss	3,2
	goto	l1090
	movlw	20

;main.c: 417: {
;main.c: 418: breath_cnt++;
	incf	LedMode_Func@breath_cnt,f

;main.c: 419: if(breath_cnt >= 20)
	subwf	LedMode_Func@breath_cnt,w
	btfss	3,0
	return

;main.c: 420: {
;main.c: 421: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt

;main.c: 422: if(breath_dir)
	movf	LedMode_Func@breath_dir,w
	btfsc	3,2
	goto	l5476

;main.c: 423: {
;main.c: 424: if(breath_duty < 50) breath_duty++;
	movlw	50
	subwf	LedMode_Func@breath_duty,w
	btfsc	3,0
	goto	l5474
	incf	LedMode_Func@breath_duty,f
	goto	l5480
l5474:	

;main.c: 425: else breath_dir = 0;
	clrf	LedMode_Func@breath_dir
	goto	l5480
l5476:	

;main.c: 427: else
;main.c: 428: {
;main.c: 429: if(breath_duty > 0) breath_duty--;
	movf	LedMode_Func@breath_duty,w
	btfsc	3,2
	goto	l1096
	decf	LedMode_Func@breath_duty,f
	goto	l5480
l1096:	

;main.c: 430: else breath_dir = 1;
	clrf	LedMode_Func@breath_dir
	incf	LedMode_Func@breath_dir,f
l5480:	

;main.c: 431: }
;main.c: 432: g_overclock_pwm = breath_duty;
	movf	LedMode_Func@breath_duty,w
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_overclock_pwm^(0+128)
	return
l1090:	

;main.c: 435: }
;main.c: 438: if(!DIY_Flag2.OnrBit.b2 && !DIY_Flag2.OnrBit.b3 && g_gear != 6)
	btfss	_DIY_Flag2,2
	btfsc	_DIY_Flag2,3
	goto	l5492
	movlw	6
	xorwf	_g_gear,w
	btfsc	3,2
	goto	l5492

;main.c: 439: {
;main.c: 440: breath_duty = 0;
	clrf	LedMode_Func@breath_duty

;main.c: 441: breath_dir = 1;
	clrf	LedMode_Func@breath_dir
	incf	LedMode_Func@breath_dir,f

;main.c: 442: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt

;main.c: 443: chg_pwm_cnt = 0;
	clrf	LedMode_Func@chg_pwm_cnt
l5492:	

;main.c: 444: }
;main.c: 447: if(!DIY_Flag2.OnrBit.b0 && DIY_Flag1.OnrBit.b7)
	btfss	_DIY_Flag2,0
	btfss	_DIY_Flag1,7
	goto	l1099

;main.c: 448: {
;main.c: 449: show_gear_led(level);
	movf	_level,w
	ljmp	_show_gear_led
l1099:	

;main.c: 451: }
;main.c: 454: if(DIY_Flag2.OnrBit.b0 && g_warn_flash > 0)
	btfss	_DIY_Flag2,0
	goto	l1100
	movf	_g_warn_flash,w
	btfss	3,2
	return
l1100:	

;main.c: 458: if(DIY_Flag2.OnrBit.b0)
	btfss	_DIY_Flag2,0
	goto	l5372

;main.c: 459: {
;main.c: 460: show_gear_led(g_gear);
	movf	_g_gear,w
	ljmp	_show_gear_led
__end_of_LedMode_Func:	
	opt stack 0

	psect	text11
__ptext11:	
;; *************** function _Key_Func *****************
;; Defined at:
;;		line 685 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Key_Func

_Key_Func:	
	opt stack 4

;main.c: 687: static unsigned char key1_time1 = 0;
;main.c: 688: static unsigned char key1_time2 = 0;
;main.c: 689: static unsigned char key2_time1 = 0;
;main.c: 690: static unsigned char key2_time2 = 0;
;main.c: 692: if(!PORTA2)

;incstack = 0
; Regs used in _Key_Func: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	btfsc	5,2	;volatile
	goto	l4334
	movlw	10

;main.c: 693: {
;main.c: 694: key1_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key1_time2^(0+128)

;main.c: 695: key1_time1 ++;
	incf	Key_Func@key1_time1^(0+128),f

;main.c: 696: if(key1_time1 >= 10)
	subwf	Key_Func@key1_time1^(0+128),w
	btfss	3,0
	goto	l4344

;main.c: 697: {
;main.c: 698: key1_time1 = 0;
	clrf	Key_Func@key1_time1^(0+128)

;main.c: 699: DIY_Flag1.OnrBit.b1 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,1
	goto	l4344
l4334:	
	movlw	10

;main.c: 702: else
;main.c: 703: {
;main.c: 705: key1_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key1_time1^(0+128)

;main.c: 706: key1_time2 ++;
	incf	Key_Func@key1_time2^(0+128),f

;main.c: 707: if(key1_time2 >= 10)
	subwf	Key_Func@key1_time2^(0+128),w
	btfss	3,0
	goto	l4344

;main.c: 708: {
;main.c: 709: key1_time2 = 0;
	clrf	Key_Func@key1_time2^(0+128)

;main.c: 710: DIY_Flag1.OnrBit.b1 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,1
l4344:	

;main.c: 711: }
;main.c: 712: }
;main.c: 714: if(!PORTA1)
	bcf	3,5	;RP0=0, select bank0
	btfsc	5,1	;volatile
	goto	l4356
	movlw	10

;main.c: 715: {
;main.c: 716: key2_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key2_time2^(0+128)

;main.c: 717: key2_time1 ++;
	incf	Key_Func@key2_time1^(0+128),f

;main.c: 718: if(key2_time1 >= 10)
	subwf	Key_Func@key2_time1^(0+128),w
	btfss	3,0
	return

;main.c: 719: {
;main.c: 720: key2_time1 = 0;
	clrf	Key_Func@key2_time1^(0+128)

;main.c: 721: DIY_Flag1.OnrBit.b2 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,2
	return
l4356:	
	movlw	10

;main.c: 724: else
;main.c: 725: {
;main.c: 727: key2_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key2_time1^(0+128)

;main.c: 728: key2_time2 ++;
	incf	Key_Func@key2_time2^(0+128),f

;main.c: 729: if(key2_time2 >= 10)
	subwf	Key_Func@key2_time2^(0+128),w
	btfss	3,0
	return

;main.c: 730: {
;main.c: 731: key2_time2 = 0;
	clrf	Key_Func@key2_time2^(0+128)

;main.c: 732: DIY_Flag1.OnrBit.b2 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,2
	return
__end_of_Key_Func:	
	opt stack 0

	psect	text12
__ptext12:	
;; *************** function _Key_Application *****************
;; Defined at:
;;		line 792 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cur             1    2[BANK1 ] unsigned char 
;;  edge            1    1[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       3
;;      Temps:          0       0       0
;;      Totals:         0       0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Battery_Update
;;		_set_fan
;;		_show_gear_led
;;		_trigger_warn
;;		_warn_flash_proc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Key_Application

_Key_Application:	
	opt stack 2

;main.c: 794: unsigned char edge;
;main.c: 795: unsigned char cur;
;main.c: 796: static unsigned char off_key_prev = 0;
;main.c: 797: warn_flash_proc();

;incstack = 0
; Regs used in _Key_Application: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_warn_flash_proc

;main.c: 800: if(g_vdd_adc <= 2363u)
	movlw	9
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_vdd_adc+1,w
	movlw	60
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5558

;main.c: 801: {
;main.c: 802: g_battery_empty = 1;
	clrf	_g_battery_empty
	incf	_g_battery_empty,f

;main.c: 803: }
	goto	l5562
l5558:	

;main.c: 804: else if(g_vdd_adc >= 2387u)
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	83
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0

;main.c: 805: {
;main.c: 806: g_battery_empty = 0;
	clrf	_g_battery_empty
l5562:	

;main.c: 807: }
;main.c: 809: if(g_battery_empty)
	movf	_g_battery_empty,w
	btfsc	3,2
	goto	l1248
	movlw	0

;main.c: 810: {
;main.c: 811: DIY_Flag2.OnrBit.b0 = 0;
	bcf	_DIY_Flag2,0

;main.c: 812: set_fan(0);
	fcall	_set_fan

;main.c: 813: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 814: DIY_Flag1.OnrBit.b7 = 0;

;main.c: 815: g_offshow_ms = 0;

;main.c: 816: g_warn_flash = 0;
	fcall	PL10	;call to abstracted procedure
	clrf	_g_warn_flash

;main.c: 817: g_gear = 0;
	clrf	_g_gear
	goto	l5586
l5596:	

;main.c: 829: {
;main.c: 830: edge = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Application@edge^(0+128)

;main.c: 831: if(DIY_Flag1.OnrBit.b5)
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,5
	goto	l1251

;main.c: 832: {
;main.c: 833: edge = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Application@edge^(0+128)
	incf	Key_Application@edge^(0+128),f

;main.c: 834: DIY_Flag1.OnrBit.b5 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,5
l1251:	

;main.c: 835: }
;main.c: 836: cur = DIY_Flag1.OnrBit.b1 || DIY_Flag1.OnrBit.b2;
	bsf	3,5	;RP0=1, select bank1
	clrf	_Key_Application$619^(0+128)
	incf	_Key_Application$619^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,1
	btfsc	_DIY_Flag1,2
	goto	l5606
	bsf	3,5	;RP0=1, select bank1
	clrf	_Key_Application$619^(0+128)
l5606:	
	bsf	3,5	;RP0=1, select bank1
	movf	_Key_Application$619^(0+128),w
	movwf	Key_Application@cur^(0+128)

;main.c: 837: if(cur && !off_key_prev)
	movf	Key_Application@cur^(0+128),w
	btfsc	3,2
	goto	l5614
	movf	Key_Application@off_key_prev^(0+128),w
	btfss	3,2
	goto	l5614

;main.c: 838: edge = 1;
	clrf	Key_Application@edge^(0+128)
	incf	Key_Application@edge^(0+128),f
l5614:	

;main.c: 839: off_key_prev = cur;
	movf	Key_Application@cur^(0+128),w
	movwf	Key_Application@off_key_prev^(0+128)

;main.c: 840: if(edge)
	movf	Key_Application@edge^(0+128),w
	btfsc	3,2
	goto	l5626

;main.c: 841: {
;main.c: 842: Battery_Update();
	fcall	_Battery_Update

;main.c: 843: DIY_Flag1.OnrBit.b7 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,7

;main.c: 844: g_offshow_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)

;main.c: 845: show_gear_led(level);
	bcf	3,5	;RP0=0, select bank0
	movf	_level,w
	fcall	_show_gear_led
l5626:	

;main.c: 846: }
;main.c: 847: if(DIY_Flag1.OnrBit.b7)
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,7
	goto	l5646

;main.c: 848: {
;main.c: 849: g_offshow_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_offshow_ms^(0+128),f
	btfsc	3,2
	incf	(_g_offshow_ms+1)^(0+128),f

;main.c: 850: if(g_offshow_ms >= 5000)
	movlw	19
	subwf	(_g_offshow_ms+1)^(0+128),w
	movlw	136
	btfsc	3,2
	subwf	_g_offshow_ms^(0+128),w

;main.c: 851: {
;main.c: 852: DIY_Flag1.OnrBit.b7 = 0;
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L2

;main.c: 853: g_offshow_ms = 0;

;main.c: 854: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL10	;call to abstracted procedure
	fcall	PL2	;call to abstracted procedure
l5646:	

;main.c: 855: }
;main.c: 856: }
;main.c: 858: if(g_gear != 0)
	bcf	3,5	;RP0=0, select bank0
L2:	
	movf	_g_gear,w
	movlw	0
	btfsc	3,2
	goto	L3

;main.c: 859: {
;main.c: 860: g_gear = 0;
	clrf	_g_gear

;main.c: 861: set_fan(0);
	fcall	_set_fan

;main.c: 862: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 863: g_warn_flash = 0;
	clrf	_g_warn_flash
	goto	l5586
l5676:	

;main.c: 876: {
;main.c: 877: g_pwr_delay_ms++;
	incf	_g_pwr_delay_ms^(0+128),f
	btfsc	3,2
	incf	(_g_pwr_delay_ms+1)^(0+128),f

;main.c: 878: set_fan(0);
	movlw	0
	fcall	_set_fan

;main.c: 879: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure
l5586:	

;main.c: 818: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0
L3:	
	bcf	3,5	;RP0=0, select bank0
L1:	
	btfsc	_DIY_Flag1,1
	movlw	1
	movwf	_g_k1_prev

;main.c: 819: g_k2_prev = DIY_Flag1.OnrBit.b2;
	movlw	0
	btfsc	_DIY_Flag1,2
	movlw	1
	movwf	_g_k2_prev

;main.c: 820: g_k1_hold_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k1_hold_ms^(0+128)
	clrf	(_g_k1_hold_ms+1)^(0+128)

;main.c: 821: g_k2_hold_ms = 0;
	clrf	_g_k2_hold_ms^(0+128)
	clrf	(_g_k2_hold_ms+1)^(0+128)
	return
l1248:	

;main.c: 823: }
;main.c: 828: if(DIY_Flag2.OnrBit.b0 == 0)
	btfss	_DIY_Flag2,0
	goto	l5596

;main.c: 870: }
;main.c: 875: if(g_pwr_delay_ms < 1000)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_g_pwr_delay_ms+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_g_pwr_delay_ms^(0+128),w
	btfss	3,0
	goto	l5676

;main.c: 885: }
;main.c: 888: if(DIY_Flag2.OnrBit.b2 || DIY_Flag2.OnrBit.b3)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag2,2
	goto	l1262
	btfss	_DIY_Flag2,3
	goto	l5734
l1262:	
	movlw	1

;main.c: 889: {
;main.c: 890: g_gear = 1;
	clrf	_g_gear
	incf	_g_gear,f

;main.c: 891: set_fan(1);
	fcall	_set_fan

;main.c: 892: DIY_Flag1.OnrBit.b7 = 0;
	bcf	_DIY_Flag1,7

;main.c: 894: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	goto	l5710

;main.c: 895: show_gear_led(1);
	movlw	1
	fcall	_show_gear_led
l5710:	

;main.c: 898: if(DIY_Flag1.OnrBit.b2 && !g_k2_prev) trigger_warn(5);
	btfss	_DIY_Flag1,2
	goto	l5716
	movf	_g_k2_prev,w
	btfss	3,2
	goto	l5716
	movlw	5
	fcall	_trigger_warn
l5716:	

;main.c: 899: if(DIY_Flag1.OnrBit.b1 && !g_k1_prev) trigger_warn(5);
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,1
	goto	l5586
	movf	_g_k1_prev,w
	btfss	3,2
	goto	l5586
	movlw	5
	fcall	_trigger_warn
	goto	l5586
l5734:	

;main.c: 907: else
;main.c: 908: {
;main.c: 910: if(g_gear == 0)
	movf	_g_gear,w
	btfss	3,2
	goto	l5742
	movlw	1

;main.c: 911: {
;main.c: 912: g_gear = 1;
	clrf	_g_gear
	incf	_g_gear,f

;main.c: 913: set_fan(1);
	fcall	_set_fan

;main.c: 914: show_gear_led(1);
	movlw	1
	fcall	_show_gear_led
l5742:	

;main.c: 915: }
;main.c: 917: if(g_warn_flash > 0)
	movf	_g_warn_flash,w
	btfsc	3,2
	goto	l1268

;main.c: 918: {
;main.c: 919: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0
	goto	L1
l1268:	
;main.c: 920: g_k2_prev = DIY_Flag1.OnrBit.b2;


;main.c: 924: }
;main.c: 927: if(DIY_Flag1.OnrBit.b2)
	btfss	_DIY_Flag1,2
	goto	l5770

;main.c: 928: {
;main.c: 929: g_k2_hold_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_k2_hold_ms^(0+128),f
	btfsc	3,2
	incf	(_g_k2_hold_ms+1)^(0+128),f

;main.c: 931: if(g_k2_hold_ms == 500)
	movlw	244
	xorwf	_g_k2_hold_ms^(0+128),w
	btfss	3,2
	goto	l5796
	decf	(_g_k2_hold_ms+1)^(0+128),w
	btfss	3,2
	goto	l5796

;main.c: 932: {
;main.c: 933: g_k2_hold_ms = 400;
	movlw	144
	movwf	_g_k2_hold_ms^(0+128)
	movlw	1
	movwf	(_g_k2_hold_ms^(0+128)+1)

;main.c: 934: if(g_gear < 5)
	movlw	5
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfsc	3,0
	goto	l5764

;main.c: 935: {
;main.c: 936: g_gear++;
	incf	_g_gear,f

;main.c: 937: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 938: show_gear_led(g_gear);
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 939: }
	goto	l5796
l5764:	

;main.c: 940: else if(g_gear == 5)
	movlw	5
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5796

;main.c: 941: {
;main.c: 942: g_gear = 6;
	movlw	6
	movwf	_g_gear

;main.c: 943: set_fan(6);
	movlw	6
	fcall	_set_fan

;main.c: 944: }
;main.c: 945: }
;main.c: 946: }
	goto	l5796
l5770:	

;main.c: 947: else
;main.c: 948: {
;main.c: 950: if(g_k2_prev)
	movf	_g_k2_prev,w
	btfsc	3,2
	goto	l5794

;main.c: 951: {
;main.c: 952: if(g_gear == 6)
	movlw	6
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5780

;main.c: 953: {
;main.c: 955: g_gear = 5;
	movlw	5
	movwf	_g_gear

;main.c: 956: set_fan(5);
	movlw	5
	fcall	_set_fan

;main.c: 957: show_gear_led(5);
	movlw	5
	fcall	_show_gear_led

;main.c: 958: }
	goto	l5794
l5780:	

;main.c: 959: else if(g_k2_hold_ms < 500)
	movlw	1
	bsf	3,5	;RP0=1, select bank1
	subwf	(_g_k2_hold_ms+1)^(0+128),w
	movlw	244
	btfsc	3,2
	subwf	_g_k2_hold_ms^(0+128),w
	btfsc	3,0
	goto	l5794

;main.c: 960: {
;main.c: 962: if(g_gear < 5)
	movlw	5
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfsc	3,0
	goto	l5790

;main.c: 963: {
;main.c: 964: g_gear++;
	incf	_g_gear,f

;main.c: 965: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 966: show_gear_led(g_gear);
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 967: }
	goto	l5794
l5790:	

;main.c: 968: else if(g_gear == 5)
	movlw	5
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5794

;main.c: 969: {
;main.c: 970: trigger_warn(1);
	movlw	1
	fcall	_trigger_warn
l5794:	

;main.c: 971: }
;main.c: 972: }
;main.c: 973: }
;main.c: 974: g_k2_hold_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k2_hold_ms^(0+128)
	clrf	(_g_k2_hold_ms+1)^(0+128)
l5796:	

;main.c: 975: }
;main.c: 976: g_k2_prev = DIY_Flag1.OnrBit.b2;
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag1,2
	movlw	1
	movwf	_g_k2_prev

;main.c: 979: if(DIY_Flag1.OnrBit.b1)
	btfss	_DIY_Flag1,1
	goto	l5812

;main.c: 980: {
;main.c: 981: g_k1_hold_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_k1_hold_ms^(0+128),f
	btfsc	3,2
	incf	(_g_k1_hold_ms+1)^(0+128),f

;main.c: 983: if(g_k1_hold_ms == 500)
	movlw	244
	xorwf	_g_k1_hold_ms^(0+128),w
	btfss	3,2
	goto	l5830
	decf	(_g_k1_hold_ms+1)^(0+128),w
	btfss	3,2
	goto	l5830

;main.c: 984: {
;main.c: 985: g_k1_hold_ms = 400;
	movlw	144
	movwf	_g_k1_hold_ms^(0+128)
	movlw	1
	movwf	(_g_k1_hold_ms^(0+128)+1)

;main.c: 986: if(g_gear > 1)
	movlw	2
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfss	3,0
	goto	l5830

;main.c: 987: {
;main.c: 988: g_gear--;
	decf	_g_gear,f

;main.c: 989: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 990: show_gear_led(g_gear);
	movf	_g_gear,w
	fcall	_show_gear_led
	goto	l5830
l5812:	

;main.c: 994: else
;main.c: 995: {
;main.c: 997: if(g_k1_prev)
	movf	_g_k1_prev,w
	btfsc	3,2
	goto	l5828

;main.c: 998: {
;main.c: 999: if(g_k1_hold_ms < 500)
	movlw	1
	bsf	3,5	;RP0=1, select bank1
	subwf	(_g_k1_hold_ms+1)^(0+128),w
	movlw	244
	btfsc	3,2
	subwf	_g_k1_hold_ms^(0+128),w
	btfsc	3,0
	goto	l5828

;main.c: 1000: {
;main.c: 1002: if(g_gear > 1)
	movlw	2
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfss	3,0
	goto	l5824

;main.c: 1003: {
;main.c: 1004: g_gear--;
	decf	_g_gear,f

;main.c: 1005: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 1006: show_gear_led(g_gear);
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 1007: }
	goto	l5828
l5824:	

;main.c: 1008: else if(g_gear == 1)
	decfsz	_g_gear,w
	goto	l5828

;main.c: 1009: {
;main.c: 1010: trigger_warn(5);
	movlw	5
	fcall	_trigger_warn
l5828:	

;main.c: 1011: }
;main.c: 1012: }
;main.c: 1013: }
;main.c: 1014: g_k1_hold_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k1_hold_ms^(0+128)
	clrf	(_g_k1_hold_ms+1)^(0+128)
l5830:	

;main.c: 1015: }
;main.c: 1016: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag1,1
	movlw	1
	movwf	_g_k1_prev
	return
__end_of_Key_Application:	
	opt stack 0
PL2:	
	opt stack 3
	bsf	6,1	;volatile
	bsf	6,0	;volatile
	bsf	5,7	;volatile
	bsf	5,6	;volatile
	bsf	5,4	;volatile
	return
__end_ofPL2:	
	opt stack 0
PL10:	
	opt stack 2
	bcf	_DIY_Flag1,7
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	return
__end_ofPL10:	
	opt stack 0

	psect	text13
__ptext13:	
;; *************** function _warn_flash_proc *****************
;; Defined at:
;;		line 650 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_show_gear_led
;; This function is called by:
;;		_Key_Application
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _warn_flash_proc

_warn_flash_proc:	
	opt stack 2

;main.c: 652: if(g_warn_flash == 0)

;incstack = 0
; Regs used in _warn_flash_proc: [wreg+status,2+status,0+pclath+cstack]
	bcf	3,5	;RP0=0, select bank0
	movf	_g_warn_flash,w
	btfsc	3,2
	return
	movlw	150

;main.c: 654: g_warn_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_warn_cnt^(0+128),f

;main.c: 655: if(g_warn_cnt < 150)
	subwf	_g_warn_cnt^(0+128),w
	btfss	3,0
	return

;main.c: 657: g_warn_cnt = 0;
	clrf	_g_warn_cnt^(0+128)

;main.c: 660: DIY_Flag1.OnrBit.b6 = !DIY_Flag1.OnrBit.b6;
	bcf	3,0
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,6
	bsf	3,0
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L4
	bsf	_DIY_Flag1,6
	goto	u4914
L4:	
	bcf	_DIY_Flag1,6
u4914:	

;main.c: 661: g_warn_flash--;
	decf	_g_warn_flash,f

;main.c: 663: if(g_warn_led == 1)
	decfsz	_g_warn_led,w
	goto	l5224

;main.c: 664: {
;main.c: 666: (PORTA4 = 0); (PORTA6 = 0); (PORTA7 = 0); (PORTB0 = 0);
	bcf	5,4	;volatile
	bcf	5,6	;volatile
	bcf	5,7	;volatile
	bcf	6,0	;volatile

;main.c: 667: if(DIY_Flag1.OnrBit.b6) (PORTB1 = 1); else (PORTB1 = 0);
	btfss	_DIY_Flag1,6
	goto	l1204
	bsf	6,1	;volatile
	goto	l5230
l1204:	
	bcf	6,1	;volatile
	goto	l5230
l5224:	

;main.c: 669: else if(g_warn_led == 5)
	movlw	5
	xorwf	_g_warn_led,w
	btfss	3,2
	goto	l5230

;main.c: 670: {
;main.c: 672: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 673: if(!DIY_Flag1.OnrBit.b6)
	btfss	_DIY_Flag1,6

;main.c: 674: (PORTA4 = 0);
	bcf	5,4	;volatile
l5230:	

;main.c: 675: }
;main.c: 678: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	return

;main.c: 679: {
;main.c: 680: show_gear_led(g_gear);
	movf	_g_gear,w
	ljmp	_show_gear_led
__end_of_warn_flash_proc:	
	opt stack 0

	psect	text14
__ptext14:	
;; *************** function _show_gear_led *****************
;; Defined at:
;;		line 527 in file "main.c"
;; Parameters:    Size  Location     Type
;;  gear            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  gear            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LedMode_Func
;;		_warn_flash_proc
;;		_Key_Application
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _show_gear_led

_show_gear_led:	
	opt stack 3

;incstack = 0
; Regs used in _show_gear_led: [wreg+status,2+status,0]
;show_gear_led@gear stored from wreg
	movwf	show_gear_led@gear

;main.c: 529: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 530: if(gear >= 1) (PORTA4 = 0);
	movf	show_gear_led@gear,w
	btfss	3,2
	bcf	5,4	;volatile

;main.c: 531: if(gear >= 2) (PORTA6 = 0);
	movlw	2
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	5,6	;volatile

;main.c: 532: if(gear >= 3) (PORTA7 = 0);
	movlw	3
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	5,7	;volatile

;main.c: 533: if(gear >= 4) (PORTB0 = 0);
	movlw	4
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	6,0	;volatile

;main.c: 534: if(gear >= 5) (PORTB1 = 0);
	movlw	5
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	6,1	;volatile
	return
__end_of_show_gear_led:	
	opt stack 0

	psect	text15
__ptext15:	
;; *************** function _trigger_warn *****************
;; Defined at:
;;		line 637 in file "main.c"
;; Parameters:    Size  Location     Type
;;  led_num         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led_num         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Application
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _trigger_warn

_trigger_warn:	
	opt stack 3

;incstack = 0
; Regs used in _trigger_warn: [wreg+status,2+status,0]
;trigger_warn@led_num stored from wreg
	movwf	trigger_warn@led_num

;main.c: 639: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	return

;main.c: 640: {
;main.c: 641: g_warn_flash = 4;
	movlw	4
	movwf	_g_warn_flash

;main.c: 642: g_warn_led = led_num;
	movf	trigger_warn@led_num,w
	movwf	_g_warn_led

;main.c: 643: DIY_Flag1.OnrBit.b6 = 0;
	bcf	_DIY_Flag1,6

;main.c: 644: g_warn_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_warn_cnt^(0+128)
	return
__end_of_trigger_warn:	
	opt stack 0

	psect	text16
__ptext16:	
;; *************** function _set_fan *****************
;; Defined at:
;;		line 542 in file "main.c"
;; Parameters:    Size  Location     Type
;;  gear            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  gear            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Application
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _set_fan

_set_fan:	
	opt stack 4

;incstack = 0
; Regs used in _set_fan: [wreg-fsr0h+status,2+status,0+pclath]
;set_fan@gear stored from wreg
	bcf	3,5	;RP0=0, select bank0
	movwf	set_fan@gear

;main.c: 544: if(gear == 0)
	movf	set_fan@gear,w
	btfss	3,2
	goto	l5190

;main.c: 545: {
;main.c: 546: g_target_pwm = 0;
	clrf	_g_target_pwm
	return
l5190:	

;main.c: 548: }
;main.c: 549: if(gear > 6)
	movlw	7
	subwf	set_fan@gear,w
	btfss	3,0
	goto	l5194

;main.c: 550: gear = 6;
	movlw	6
	movwf	set_fan@gear
l5194:	

;main.c: 552: g_target_pwm = c_fan_duty[gear];
	movf	set_fan@gear,w
	addlw	low ((_c_fan_duty-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	movwf	_g_target_pwm
	return
__end_of_set_fan:	
	opt stack 0

	psect	text17
__ptext17:	
;; *************** function _Battery_Update *****************
;; Defined at:
;;		line 467 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_adc_read_vdd
;; This function is called by:
;;		_Key_Application
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Battery_Update

_Battery_Update:	
	opt stack 2

;main.c: 469: static unsigned char loop_num = 0;
;main.c: 470: static unsigned int loop_sum = 0;
;main.c: 471: static unsigned char low_debounce = 0;
;main.c: 472: static unsigned char low_clr_debounce = 0;
;main.c: 473: static unsigned char startup_cnt = 50;
;main.c: 475: loop_sum += adc_read_vdd();

;incstack = 0
; Regs used in _Battery_Update: [wreg+status,2+status,0+pclath+cstack]
	fcall	_adc_read_vdd
	movf	?_adc_read_vdd,w
	bsf	3,5	;RP0=1, select bank1
	addwf	Battery_Update@loop_sum^(0+128),f
	btfsc	3,0
	incf	(Battery_Update@loop_sum+1)^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	movf	?_adc_read_vdd+1,w
	bsf	3,5	;RP0=1, select bank1
	addwf	(Battery_Update@loop_sum+1)^(0+128),f
	movlw	8

;main.c: 476: loop_num++;
	incf	Battery_Update@loop_num^(0+128),f

;main.c: 477: if(loop_num < 8) return;
	subwf	Battery_Update@loop_num^(0+128),w
	btfss	3,0
	return

;main.c: 479: g_vdd_adc = (unsigned int)(loop_sum >> 3);
	movf	(Battery_Update@loop_sum+1)^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	??_Battery_Update+1
	bsf	3,5	;RP0=1, select bank1
	movf	Battery_Update@loop_sum^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	??_Battery_Update
	bcf	3,0
	rrf	??_Battery_Update+1,f
	rrf	??_Battery_Update,f
	bcf	3,0
	rrf	??_Battery_Update+1,f
	rrf	??_Battery_Update,f
	bcf	3,0
	rrf	??_Battery_Update+1,f
	rrf	??_Battery_Update,f
	movf	??_Battery_Update,w
	movwf	_g_vdd_adc
	movf	??_Battery_Update+1,w
	movwf	_g_vdd_adc+1

;main.c: 480: loop_num = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@loop_num^(0+128)

;main.c: 481: loop_sum = 0;
	clrf	Battery_Update@loop_sum^(0+128)
	clrf	(Battery_Update@loop_sum+1)^(0+128)

;main.c: 483: if(DIY_Flag2.OnrBit.b3) level = 6;
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag2,3
	goto	l1116
l5108:	
	movlw	6
	goto	L8
l1116:	

;main.c: 485: else if(DIY_Flag2.OnrBit.b2)
	btfss	_DIY_Flag2,2
	goto	l5132

;main.c: 486: {
;main.c: 487: if(g_vdd_adc < 2363u) level = 0;
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	59
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5114
l5112:	
	clrf	_level
	goto	l5158
l5114:	

;main.c: 488: else if(g_vdd_adc < 2678u) level = 1;
	movlw	10
	subwf	_g_vdd_adc+1,w
	movlw	118
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5118
l5116:	
	clrf	_level
	incf	_level,f
	goto	l5158
l5118:	

;main.c: 489: else if(g_vdd_adc < 2914u) level = 2;
	movlw	11
	subwf	_g_vdd_adc+1,w
	movlw	98
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5122
l5120:	
	movlw	2
	goto	L8
l5122:	

;main.c: 490: else if(g_vdd_adc < 3072u) level = 3;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	0
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5126
l5124:	
	movlw	3
	goto	L8
l5126:	

;main.c: 491: else if(g_vdd_adc < 3229u) level = 4;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	157
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5130
l5128:	
	movlw	4
	goto	L8
l5132:	

;main.c: 494: else
;main.c: 495: {
;main.c: 496: if(g_vdd_adc < 2363u) level = 0;
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	59
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfss	3,0
	goto	l5112

;main.c: 497: else if(g_vdd_adc < 2678u) level = 1;
	movlw	10
	subwf	_g_vdd_adc+1,w
	movlw	118
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfss	3,0
	goto	l5116

;main.c: 498: else if(g_vdd_adc < 2914u) level = 2;
	movlw	11
	subwf	_g_vdd_adc+1,w
	movlw	98
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfss	3,0
	goto	l5120

;main.c: 499: else if(g_vdd_adc < 3072u) level = 3;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	0
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfss	3,0
	goto	l5124

;main.c: 500: else if(g_vdd_adc < 3229u) level = 4;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	157
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfss	3,0
	goto	l5128

;main.c: 501: else if(g_vdd_adc < 3268u) level = 5;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	196
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5108
l5130:	

;main.c: 492: else level = 5;
	movlw	5
L8:	
	movwf	_level
l5158:	

;main.c: 503: }
;main.c: 506: if(startup_cnt > 0) { startup_cnt--; DIY_Flag2.OnrBit.b1 = 0; return; }
	bsf	3,5	;RP0=1, select bank1
	movf	Battery_Update@startup_cnt^(0+128),w
	btfsc	3,2
	goto	l1142
	decf	Battery_Update@startup_cnt^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag2,1
	return
l1142:	

;main.c: 508: if(!DIY_Flag2.OnrBit.b1)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag2,1
	goto	l5174

;main.c: 509: {
;main.c: 511: if(g_vdd_adc < 2521u) { if(++low_debounce >= 5) DIY_Flag2.OnrBit.b1 = 1; }
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	217
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5172
	movlw	5
	bsf	3,5	;RP0=1, select bank1
	incf	Battery_Update@low_debounce^(0+128),f
	subwf	Battery_Update@low_debounce^(0+128),w
	btfss	3,0
	return
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag2,1
	return
l5176:	
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	incf	Battery_Update@low_clr_debounce^(0+128),f
	subwf	Battery_Update@low_clr_debounce^(0+128),w
	btfss	3,0
	return
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag2,1
l5172:	

;main.c: 512: else { low_debounce = 0; }
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@low_debounce^(0+128)
	return
l5174:	

;main.c: 514: else
;main.c: 515: {
;main.c: 517: if(g_vdd_adc >= 2544u) { if(++low_clr_debounce >= 3) { DIY_Flag2.OnrBit.b1 = 0; low_debounce = 0; } }
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	240
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5176

;main.c: 518: else { low_clr_debounce = 0; }
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@low_clr_debounce^(0+128)
	return
__end_of_Battery_Update:	
	opt stack 0

	psect	text18
__ptext18:	
;; *************** function _adc_read_vdd *****************
;; Defined at:
;;		line 315 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2    9[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Update
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _adc_read_vdd

_adc_read_vdd:	
	opt stack 2

;main.c: 317: unsigned int result;
;main.c: 319: ADCON0 = 0x15;

;incstack = 0
; Regs used in _adc_read_vdd: [wreg+status,2+status,0]
	movlw	21
	bcf	3,5	;RP0=0, select bank0
	movwf	90	;volatile

;main.c: 320: ADCON1 = adcon1_val;
	movf	_adcon1_val,w
	movwf	91	;volatile

;main.c: 321: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 323: ADIF = 0;
	bcf	15,2	;volatile

;main.c: 324: ADON = 1;
	bsf	90,1	;volatile
l1031:	
;main.c: 326: while(ADON)

	bcf	3,5	;RP0=0, select bank0
	btfss	90,1	;volatile
	goto	l5024
	clrwdt	;# 
	goto	l1031
l5024:	

;main.c: 331: }
;main.c: 333: result = ((unsigned int)ADRESH << 4) | (ADRESL >> 4);
	movf	89,w	;volatile
	movwf	adc_read_vdd@result
	movlw	240
	clrf	adc_read_vdd@result+1
	swapf	adc_read_vdd@result,f
	swapf	adc_read_vdd@result+1,f
	andwf	adc_read_vdd@result+1,f
	movf	adc_read_vdd@result,w
	andlw	15
	iorwf	adc_read_vdd@result+1,f
	movlw	240
	andwf	adc_read_vdd@result,f
	swapf	88,w	;volatile
	andlw	15
	iorwf	adc_read_vdd@result,f

;main.c: 334: return result;
	movf	adc_read_vdd@result+1,w
	movwf	?_adc_read_vdd+1
	movf	adc_read_vdd@result,w
	movwf	?_adc_read_vdd
	return
__end_of_adc_read_vdd:	
	opt stack 0

	psect	text19
__ptext19:	
;; *************** function _Gear5_Duty_Update *****************
;; Defined at:
;;		line 561 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Gear5_Duty_Update

_Gear5_Duty_Update:	
	opt stack 3

;main.c: 563: static unsigned int ms_sub = 0;
;main.c: 564: static unsigned int sec_cnt = 0;
;main.c: 565: static unsigned char cur_percent = 85;
;main.c: 567: if(g_gear != 5 || DIY_Flag2.OnrBit.b2 || DIY_Flag2.OnrBit.b3)

;incstack = 0
; Regs used in _Gear5_Duty_Update: [wreg+status,2+status,0+pclath+cstack]
	movlw	5
	bcf	3,5	;RP0=0, select bank0
	xorwf	_g_gear,w
	btfsc	3,2
	btfsc	_DIY_Flag2,2
	goto	l5514
	btfss	_DIY_Flag2,3
	goto	l5520
l5514:	
	movlw	85

;main.c: 568: {
;main.c: 569: ms_sub = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Gear5_Duty_Update@ms_sub^(0+128)
	clrf	(Gear5_Duty_Update@ms_sub+1)^(0+128)

;main.c: 570: sec_cnt = 0;
	clrf	Gear5_Duty_Update@sec_cnt^(0+128)
	clrf	(Gear5_Duty_Update@sec_cnt+1)^(0+128)

;main.c: 571: cur_percent = 85;
	bcf	3,5	;RP0=0, select bank0
	movwf	Gear5_Duty_Update@cur_percent
	return
l5520:	

;main.c: 573: }
;main.c: 574: ms_sub++;
	bsf	3,5	;RP0=1, select bank1
	incf	Gear5_Duty_Update@ms_sub^(0+128),f
	btfsc	3,2
	incf	(Gear5_Duty_Update@ms_sub+1)^(0+128),f

;main.c: 575: if(ms_sub < 1000)
	movlw	3
	subwf	(Gear5_Duty_Update@ms_sub+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	Gear5_Duty_Update@ms_sub^(0+128),w
	btfss	3,0
	return

;main.c: 577: ms_sub = 0;
	clrf	Gear5_Duty_Update@ms_sub^(0+128)
	clrf	(Gear5_Duty_Update@ms_sub+1)^(0+128)

;main.c: 578: sec_cnt++;
	incf	Gear5_Duty_Update@sec_cnt^(0+128),f
	btfsc	3,2
	incf	(Gear5_Duty_Update@sec_cnt+1)^(0+128),f

;main.c: 579: if(cur_percent == 85)
	movlw	85
	bcf	3,5	;RP0=0, select bank0
	xorwf	Gear5_Duty_Update@cur_percent,w
	btfss	3,2
	goto	l5538

;main.c: 580: {
;main.c: 581: if(sec_cnt >= 600)
	movlw	2
	bsf	3,5	;RP0=1, select bank1
	subwf	(Gear5_Duty_Update@sec_cnt+1)^(0+128),w
	movlw	88
	btfsc	3,2
	subwf	Gear5_Duty_Update@sec_cnt^(0+128),w
	btfss	3,0
	goto	l5550

;main.c: 582: {
;main.c: 583: sec_cnt = 0;
	clrf	Gear5_Duty_Update@sec_cnt^(0+128)
	clrf	(Gear5_Duty_Update@sec_cnt+1)^(0+128)
l5536:	

;main.c: 584: cur_percent -= 3;
	movlw	3
	bcf	3,5	;RP0=0, select bank0
	subwf	Gear5_Duty_Update@cur_percent,f
	goto	l5550
l5538:	

;main.c: 587: else if(cur_percent > 76)
	movlw	77
	subwf	Gear5_Duty_Update@cur_percent,w
	btfss	3,0
	goto	l5550

;main.c: 588: {
;main.c: 589: if(sec_cnt >= 60)
	movlw	0
	bsf	3,5	;RP0=1, select bank1
	subwf	(Gear5_Duty_Update@sec_cnt+1)^(0+128),w
	movlw	60
	btfsc	3,2
	subwf	Gear5_Duty_Update@sec_cnt^(0+128),w
	btfss	3,0
	goto	l5550
	movlw	79

;main.c: 590: {
;main.c: 591: sec_cnt = 0;
	clrf	Gear5_Duty_Update@sec_cnt^(0+128)
	clrf	(Gear5_Duty_Update@sec_cnt+1)^(0+128)

;main.c: 592: if(cur_percent >= 79)
	bcf	3,5	;RP0=0, select bank0
	subwf	Gear5_Duty_Update@cur_percent,w
	btfsc	3,0
	goto	l5536

;main.c: 594: else
;main.c: 595: cur_percent = 76;
	movlw	76
	movwf	Gear5_Duty_Update@cur_percent
l5550:	

;main.c: 596: }
;main.c: 597: }
;main.c: 599: g_target_pwm = (unsigned char)(((unsigned int)cur_percent * 124u + 50u) / 100u);
	movlw	100
	bsf	3,5	;RP0=1, select bank1
	movwf	___lwdiv@divisor^(0+128)
	clrf	(___lwdiv@divisor+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	movf	Gear5_Duty_Update@cur_percent,w
	movwf	___wmul@multiplier
	movlw	124
	clrf	___wmul@multiplier+1
	movwf	___wmul@multiplicand
	clrf	___wmul@multiplicand+1
	fcall	___wmul
	movf	?___wmul,w
	addlw	50
	bsf	3,5	;RP0=1, select bank1
	movwf	___lwdiv@dividend^(0+128)
	bcf	3,5	;RP0=0, select bank0
	movf	?___wmul+1,w
	btfsc	3,0
	addlw	1
	addlw	0
	bsf	3,5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend+1)^(0+128)
	fcall	___lwdiv
	movf	?___lwdiv^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	_g_target_pwm
	return
__end_of_Gear5_Duty_Update:	
	opt stack 0

	psect	text20
	file	"D:\оʥ\HCIDE_V3.0.17.8S\picc_compiler\sources\common\Umul16.c"
__ptext20:	
;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "D:\оʥ\HCIDE_V3.0.17.8S\picc_compiler\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    7[BANK0 ] unsigned int 
;;  multiplicand    2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   11[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Gear5_Duty_Update
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function ___wmul

___wmul:	
	opt stack 3

;incstack = 0
; Regs used in ___wmul: [wreg+status,2+status,0]
	clrf	___wmul@product
	clrf	___wmul@product+1
l3938:	
	btfss	___wmul@multiplier,0
	goto	l3942
	movf	___wmul@multiplicand,w
	addwf	___wmul@product,f
	btfsc	3,0
	incf	___wmul@product+1,f
	movf	___wmul@multiplicand+1,w
	addwf	___wmul@product+1,f
l3942:	
	bcf	3,0
	rlf	___wmul@multiplicand,f
	rlf	___wmul@multiplicand+1,f
	bcf	3,0
	rrf	___wmul@multiplier+1,f
	rrf	___wmul@multiplier,f
	movf	___wmul@multiplier,w
	iorwf	___wmul@multiplier+1,w
	btfss	3,2
	goto	l3938
	movf	___wmul@product+1,w
	movwf	?___wmul+1
	movf	___wmul@product,w
	movwf	?___wmul
	return
__end_of___wmul:	
	opt stack 0

	psect	text21
	file	"D:\оʥ\HCIDE_V3.0.17.8S\picc_compiler\sources\common\lwdiv.c"
__ptext21:	
;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "D:\оʥ\HCIDE_V3.0.17.8S\picc_compiler\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK1 ] unsigned int 
;;  dividend        2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK1 ] unsigned int 
;;  counter         1    4[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       4
;;      Locals:         0       0       3
;;      Temps:          0       0       0
;;      Totals:         0       0       7
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Gear5_Duty_Update
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function ___lwdiv

___lwdiv:	
	opt stack 3

;incstack = 0
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	clrf	___lwdiv@quotient^(0+128)
	clrf	(___lwdiv@quotient+1)^(0+128)
	movf	___lwdiv@divisor^(0+128),w
	iorwf	(___lwdiv@divisor+1)^(0+128),w
	btfsc	3,2
	goto	l5256
	clrf	___lwdiv@counter^(0+128)
L9:	
	incf	___lwdiv@counter^(0+128),f
	btfsc	(___lwdiv@divisor+1)^(0+128),7
	goto	l5244
	bcf	3,0
	rlf	___lwdiv@divisor^(0+128),f
	rlf	(___lwdiv@divisor+1)^(0+128),f
	goto	L9
l5244:	
	bcf	3,0
	rlf	___lwdiv@quotient^(0+128),f
	rlf	(___lwdiv@quotient+1)^(0+128),f
	movf	(___lwdiv@divisor+1)^(0+128),w
	subwf	(___lwdiv@dividend+1)^(0+128),w
	btfss	3,2
	goto	u4995
	movf	___lwdiv@divisor^(0+128),w
	subwf	___lwdiv@dividend^(0+128),w
u4995:	
	btfss	3,0
	goto	L10
	movf	___lwdiv@divisor^(0+128),w
	subwf	___lwdiv@dividend^(0+128),f
	movf	(___lwdiv@divisor+1)^(0+128),w
	btfss	3,0
	decf	(___lwdiv@dividend+1)^(0+128),f
	subwf	(___lwdiv@dividend+1)^(0+128),f
	bsf	___lwdiv@quotient^(0+128),0
	bcf	3,0
L10:	
	rrf	(___lwdiv@divisor+1)^(0+128),f
	rrf	___lwdiv@divisor^(0+128),f
	decfsz	___lwdiv@counter^(0+128),f
	goto	l5244
l5256:	
	movf	(___lwdiv@quotient+1)^(0+128),w
	movwf	(?___lwdiv+1)^(0+128)
	movf	___lwdiv@quotient^(0+128),w
	movwf	?___lwdiv^(0+128)
	return
__end_of___lwdiv:	
	opt stack 0

	psect	text22
	file	"main.c"
__ptext22:	
;; *************** function _Delay_Init *****************
;; Defined at:
;;		line 163 in file "main.c"
;; Parameters:    Size  Location     Type
;;  Delay_Duty      2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    9[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Delay_Init

_Delay_Init:	
	opt stack 4

;main.c: 165: unsigned int i;
;main.c: 167: for(i = 0; i <= Delay_Duty; i ++)

;incstack = 0
; Regs used in _Delay_Init: [wreg+status,2+status,0]
	clrf	Delay_Init@i
	clrf	Delay_Init@i+1
l3998:	
	movf	Delay_Init@i+1,w
	subwf	Delay_Init@Delay_Duty+1,w
	btfss	3,2
	goto	u2835
	movf	Delay_Init@i,w
	subwf	Delay_Init@Delay_Duty,w
u2835:	
	btfss	3,0
	return
	clrwdt	;# 
	bcf	3,5	;RP0=0, select bank0
	incf	Delay_Init@i,f
	btfsc	3,2
	incf	Delay_Init@i+1,f
	goto	l3998
__end_of_Delay_Init:	
	opt stack 0

	psect	text23
__ptext23:	
;; *************** function _Comm_Process *****************
;; Defined at:
;;		line 1331 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rx_ok           1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_comm_parse_rx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Comm_Process

_Comm_Process:	
	opt stack 3

;main.c: 1333: unsigned char rx_ok;
;main.c: 1335: if(kcomm_tx_done == 1)

;incstack = 0
; Regs used in _Comm_Process: [wreg+status,2+status,0+pclath+cstack]
	bsf	3,5	;RP0=1, select bank1
	decfsz	_kcomm_tx_done^(0+128),w
	goto	l4888

;main.c: 1336: {
;main.c: 1337: kcomm_tx_done = 0;
	clrf	_kcomm_tx_done^(0+128)
l4888:	

;main.c: 1338: }
;main.c: 1340: if(kcomm_rx_done == 1)
	bcf	3,5	;RP0=0, select bank0
	decfsz	_kcomm_rx_done,w
	goto	l4906

;main.c: 1341: {
;main.c: 1342: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done

;main.c: 1343: rx_ok = comm_parse_rx(kcomm_rx_buf);
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_rx_buf^(0+128),w
	fcall	_comm_parse_rx
	movwf	Comm_Process@rx_ok

;main.c: 1344: if(rx_ok)
	movf	Comm_Process@rx_ok,w
	btfsc	3,2
	goto	l4898

;main.c: 1345: g_slave_alive_ms = 200;
	movlw	200
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_slave_alive_ms^(0+128)
	clrf	(_g_slave_alive_ms+1)^(0+128)
l4898:	

;main.c: 1346: if(DIY_Flag2.OnrBit.b2 || DIY_Flag2.OnrBit.b3 || DIY_Flag2.OnrBit.b4)
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag2,2
	btfsc	_DIY_Flag2,3
	goto	l4904
	btfss	_DIY_Flag2,4
	return
l4904:	

;main.c: 1347: g_slave_alive_ms = 200;
	movlw	200
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_slave_alive_ms^(0+128)
	clrf	(_g_slave_alive_ms+1)^(0+128)
	return
l4906:	

;main.c: 1349: else if(kcomm_rx_done == 0xFF)
	incfsz	_kcomm_rx_done,w
	return

;main.c: 1350: {
;main.c: 1351: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done
	return
__end_of_Comm_Process:	
	opt stack 0

	psect	text24
__ptext24:	
;; *************** function _comm_parse_rx *****************
;; Defined at:
;;		line 1051 in file "main.c"
;; Parameters:    Size  Location     Type
;;  raw             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  raw             1    9[BANK0 ] unsigned char 
;;  lo              1   10[BANK0 ] unsigned char 
;;  hi              1    8[BANK0 ] unsigned char 
;;  check           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       0       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Comm_Process
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _comm_parse_rx

_comm_parse_rx:	
	opt stack 3

;incstack = 0
; Regs used in _comm_parse_rx: [wreg+status,2+status,0]
;comm_parse_rx@raw stored from wreg
	bcf	3,5	;RP0=0, select bank0
	movwf	comm_parse_rx@raw

;main.c: 1053: unsigned char lo;
;main.c: 1054: unsigned char hi;
;main.c: 1055: unsigned char check;
;main.c: 1057: lo = raw & 0x0F;
	movwf	comm_parse_rx@lo
	movlw	15
	andwf	comm_parse_rx@lo,f

;main.c: 1058: hi = (raw >> 4) & 0x0F;
	swapf	comm_parse_rx@raw,w
	andlw	15
	movwf	comm_parse_rx@hi
	movlw	15
	andwf	comm_parse_rx@hi,f

;main.c: 1059: check = lo + hi;
	movf	comm_parse_rx@hi,w
	addwf	comm_parse_rx@lo,w
	movwf	comm_parse_rx@check

;main.c: 1061: if(check != 0x0F)
	xorlw	15
	btfss	3,2

;main.c: 1062: return 0;
	retlw	0

;main.c: 1065: if(lo & 0x04)
	btfss	comm_parse_rx@lo,2
	goto	l1300

;main.c: 1066: DIY_Flag2.OnrBit.b2 = 1;
	bsf	_DIY_Flag2,2
	goto	l1301
l1300:	

;main.c: 1067: else
;main.c: 1068: DIY_Flag2.OnrBit.b2 = 0;
	bcf	_DIY_Flag2,2
l1301:	

;main.c: 1070: if(lo & 0x01)
	btfss	comm_parse_rx@lo,0
	goto	l1302

;main.c: 1071: DIY_Flag2.OnrBit.b3 = 1;
	bsf	_DIY_Flag2,3
	retlw	1
l1302:	

;main.c: 1072: else
;main.c: 1073: DIY_Flag2.OnrBit.b3 = 0;
	bcf	_DIY_Flag2,3

;main.c: 1075: return 1;
	retlw	1
__end_of_comm_parse_rx:	
	opt stack 0

	psect	text25
__ptext25:	
;; *************** function _Timer1_Isr *****************
;; Defined at:
;;		line 1480 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Kcomm_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Timer1_Isr

_Timer1_Isr:	
	opt stack 2

;main.c: 1482: static unsigned char timer_ms = 0;
;main.c: 1483: static unsigned char pwm_cnt = 0;
;main.c: 1485: if(T0IF == 1)
	btfss	14,3	;volatile
	goto	i1l4994

;main.c: 1486: {
;main.c: 1487: T0IF = 0;
	bcf	14,3	;volatile

;main.c: 1488: T0 = 168;
	movlw	168
	movwf	1	;volatile
	movlw	20

;main.c: 1489: timer_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	Timer1_Isr@timer_ms^(0+128),f

;main.c: 1491: if(timer_ms >= 20)
	subwf	Timer1_Isr@timer_ms^(0+128),w
	btfss	3,0
	goto	i1l4994

;main.c: 1492: {
;main.c: 1493: timer_ms = 0;
	clrf	Timer1_Isr@timer_ms^(0+128)

;main.c: 1494: DIY_Flag1.OnrBit.b0 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,0
i1l4994:	

;main.c: 1495: }
;main.c: 1496: }
;main.c: 1498: if(DIY_Flag2.OnrBit.b0 && g_gear == 6 && !DIY_Flag2.OnrBit.b2 && !DIY_Flag2.OnrBit.b3)
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag2,0
	goto	i1l5012
	movlw	6
	xorwf	_g_gear,w
	btfsc	3,2
	btfsc	_DIY_Flag2,2
	goto	i1l5012
	btfsc	_DIY_Flag2,3
	goto	i1l5012
	movlw	50

;main.c: 1499: {
;main.c: 1500: pwm_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	Timer1_Isr@pwm_cnt^(0+128),f

;main.c: 1501: if(pwm_cnt >= 50) pwm_cnt = 0;
	subwf	Timer1_Isr@pwm_cnt^(0+128),w
	btfsc	3,0
	clrf	Timer1_Isr@pwm_cnt^(0+128)

;main.c: 1503: if(pwm_cnt < g_overclock_pwm)
	movf	_g_overclock_pwm^(0+128),w
	subwf	Timer1_Isr@pwm_cnt^(0+128),w

;main.c: 1504: {
;main.c: 1505: (PORTB1 = 0); (PORTB0 = 0); (PORTA7 = 0); (PORTA6 = 0); (PORTA4 = 0);
	bcf	3,5	;RP0=0, select bank0
	btfsc	3,0
	goto	L11
	fcall	PL6	;call to abstracted procedure

;main.c: 1506: }
	goto	i1l5012
L11:	
;main.c: 1507: else
;main.c: 1508: {
;main.c: 1509: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);

	fcall	PL2	;call to abstracted procedure
i1l5012:	

;main.c: 1510: }
;main.c: 1511: }
;main.c: 1513: Kcomm_ISR();
	fcall	_Kcomm_ISR

;main.c: 1514: T1IF = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	75,0	;volatile
	movf	??_Timer1_Isr+1,w
	movwf	10
	btfsc	??_Timer1_Isr^0,1
	goto	REV_BANK1
	swapf	??_Timer1_Isr^0,w
	movwf	3
	swapf	62,f
	swapf	62,w
	goto	EXIT_BANK_REV
REV_BANK1:
	swapf	??_Timer1_Isr^0,w
	movwf	3
	bcf	3,5
	swapf	62,f
	swapf	62,w
	bsf	3,5
EXIT_BANK_REV:
	retfie
__end_of_Timer1_Isr:	
	opt stack 0
PL6:	
	opt stack 3
	bcf	6,1	;volatile
	bcf	6,0	;volatile
	bcf	5,7	;volatile
	bcf	5,6	;volatile
	bcf	5,4	;volatile
	return
__end_ofPL6:	
	opt stack 0

	psect	intentry
__pintentry:	
;incstack = 0
; Regs used in _Timer1_Isr: [wreg+status,2+status,0+pclath+cstack]

	opt stack 2
interrupt_function:	
	opt stack 2
saved_w	set	btemp
	btfsc	3,5
	goto SAVE_BANK1
	movwf	btemp
	goto EXIT_BANK_SAVE
SAVE_BANK1:
	bcf	3,5
	movwf	btemp
	bsf	3,5
EXIT_BANK_SAVE:
	swapf	3,w
	bcf	3,5	;RP0=0, select bank0
	movwf	??_Timer1_Isr
	movf	10,w
	movwf	??_Timer1_Isr+1
	ljmp	_Timer1_Isr

	psect	text26
__ptext26:	
;; *************** function _Kcomm_ISR *****************
;; Defined at:
;;		line 1080 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_comm_pack_tx
;; This function is called by:
;;		_Timer1_Isr
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Kcomm_ISR

_Kcomm_ISR:	
	opt stack 2

;main.c: 1082: static unsigned char bit_wait_fall;
;main.c: 1083: kcomm_timer++;

;incstack = 0
; Regs used in _Kcomm_ISR: [wreg+status,2+status,0+pclath+cstack]
	incf	_kcomm_timer,f
	btfsc	3,2
	incf	_kcomm_timer+1,f

;main.c: 1086: if(kcomm_wakeup)
	movf	_kcomm_wakeup,w
	btfsc	3,2
	goto	i1l4696

;main.c: 1087: {
;main.c: 1088: kcomm_wakeup_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	_kcomm_wakeup_cnt^(0+128),f
	btfsc	3,2
	incf	(_kcomm_wakeup_cnt+1)^(0+128),f

;main.c: 1089: if(kcomm_wakeup_cnt == 1)
	decf	_kcomm_wakeup_cnt^(0+128),w
	iorwf	(_kcomm_wakeup_cnt+1)^(0+128),w
	btfss	3,2
	goto	i1l4686

;main.c: 1090: {
;main.c: 1091: do { TRISB6 = 0; } while(0);
	bcf	3,5	;RP0=0, select bank0
	bcf	70,6	;volatile

;main.c: 1092: PORTB6 = 1;
	bsf	6,6	;volatile
i1l4686:	

;main.c: 1093: }
;main.c: 1094: if(kcomm_wakeup_cnt >= 1000u)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_kcomm_wakeup_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_wakeup_cnt^(0+128),w
	btfss	3,0
	return

;main.c: 1095: {
;main.c: 1096: PORTB6 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	6,6	;volatile

;main.c: 1097: do { TRISB6 = 1; } while(0);
	bsf	70,6	;volatile
	movlw	195

;main.c: 1098: kcomm_wakeup = 0;
	clrf	_kcomm_wakeup

;main.c: 1099: kcomm_wakeup_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_wakeup_cnt^(0+128)
	clrf	(_kcomm_wakeup_cnt+1)^(0+128)

;main.c: 1100: kcomm_low_cnt = 0;
	clrf	_kcomm_low_cnt^(0+128)
	clrf	(_kcomm_low_cnt+1)^(0+128)

;main.c: 1101: kcomm_state = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_state

;main.c: 1102: kcomm_cycle = 195;
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_cycle^(0+128)
	return
i1l4696:	

;main.c: 1105: }
;main.c: 1108: if(kcomm_state == 0)
	movf	_kcomm_state,w
	btfss	3,2
	goto	i1l4754

;main.c: 1109: {
;main.c: 1110: kcomm_cycle++;
	bsf	3,5	;RP0=1, select bank1
	incf	_kcomm_cycle^(0+128),f

;main.c: 1112: if(!((PORTB & 0x40) ? 1 : 0))
	bcf	3,5	;RP0=0, select bank0
	btfsc	6,6	;volatile
	goto	i1l4722

;main.c: 1113: {
;main.c: 1114: if(kcomm_low_cnt < 1000)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_kcomm_low_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_low_cnt^(0+128),w
	btfsc	3,0
	goto	i1l4706

;main.c: 1115: kcomm_low_cnt++;
	incf	_kcomm_low_cnt^(0+128),f
	btfsc	3,2
	incf	(_kcomm_low_cnt+1)^(0+128),f
i1l4706:	

;main.c: 1118: if(kcomm_low_cnt >= 1000)
	movlw	3
	subwf	(_kcomm_low_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_low_cnt^(0+128),w
	btfss	3,0
	goto	i1l4724

;main.c: 1119: {
;main.c: 1120: kcomm_low_cnt = 1000;
	movlw	232
	movwf	_kcomm_low_cnt^(0+128)
	movlw	3
	movwf	(_kcomm_low_cnt^(0+128)+1)

;main.c: 1122: if(kcomm_wakeup == 0)
	bcf	3,5	;RP0=0, select bank0
	movf	_kcomm_wakeup,w
	btfss	3,2
	goto	i1l4724

;main.c: 1123: {
;main.c: 1124: if(DIY_Flag2.OnrBit.b0 || DIY_Flag2.OnrBit.b2 || DIY_Flag2.OnrBit.b3 || DIY_Flag2.OnrBit.b4)
	btfss	_DIY_Flag2,0
	btfsc	_DIY_Flag2,2
	goto	i1l1323
	btfsc	_DIY_Flag2,3
	goto	i1l1323
	btfss	_DIY_Flag2,4
	goto	i1l4724
i1l1323:	

;main.c: 1125: {
;main.c: 1126: kcomm_wakeup = 1;
	clrf	_kcomm_wakeup
	incf	_kcomm_wakeup,f

;main.c: 1127: kcomm_wakeup_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_wakeup_cnt^(0+128)
	clrf	(_kcomm_wakeup_cnt+1)^(0+128)

;main.c: 1128: }
;main.c: 1129: }
;main.c: 1130: }
;main.c: 1131: }
	goto	i1l4724
i1l4722:	

;main.c: 1132: else
;main.c: 1133: {
;main.c: 1134: kcomm_low_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_low_cnt^(0+128)
	clrf	(_kcomm_low_cnt+1)^(0+128)
i1l4724:	

;main.c: 1135: }
;main.c: 1138: if(kcomm_cycle >= 200)
	movlw	200
	bsf	3,5	;RP0=1, select bank1
	subwf	_kcomm_cycle^(0+128),w
	btfss	3,0
	return

;main.c: 1139: {
;main.c: 1140: kcomm_cycle = 0;
	clrf	_kcomm_cycle^(0+128)

;main.c: 1142: if(kcomm_turn == 0)
	movf	_kcomm_turn^(0+128),w
	btfss	3,2
	goto	i1l4744

;main.c: 1143: {
;main.c: 1145: kcomm_tx_buf = comm_pack_tx();
	fcall	_comm_pack_tx
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_tx_buf^(0+128)

;main.c: 1146: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1147: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1148: kcomm_tx_done = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_tx_done^(0+128)
	bcf	3,5	;RP0=0, select bank0
	bcf	70,6	;volatile

;main.c: 1150: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1151: kcomm_state = 1;
	clrf	_kcomm_state
	incf	_kcomm_state,f

;main.c: 1152: }
	return
i1l4744:	

;main.c: 1153: else
;main.c: 1154: {
;main.c: 1156: kcomm_rx_buf = 0;
	clrf	_kcomm_rx_buf^(0+128)

;main.c: 1157: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1158: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1159: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done
	bcf	70,6	;volatile

;main.c: 1161: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1162: kcomm_state = 5;
	movlw	5
	movwf	_kcomm_state
	return
i1l4754:	

;main.c: 1166: }
;main.c: 1168: if(kcomm_state == 1)
	decfsz	_kcomm_state,w
	goto	i1l4764

;main.c: 1169: {
;main.c: 1170: if(kcomm_timer >= 20)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	20
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1333

;main.c: 1171: {
;main.c: 1172: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1173: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1174: kcomm_state = 2;
	movlw	2
	movwf	_kcomm_state

;main.c: 1175: }
	return
i1l1333:	

;main.c: 1176: else
;main.c: 1177: {
;main.c: 1178: PORTB6 = 1;
	bsf	6,6	;volatile
	return
i1l4764:	

;main.c: 1181: else if(kcomm_state == 2)
	movlw	2
	xorwf	_kcomm_state,w
	btfss	3,2
	goto	i1l4776

;main.c: 1182: {
;main.c: 1183: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1184: {
;main.c: 1185: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1186: kcomm_tx_shift = kcomm_tx_buf;
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_tx_buf^(0+128),w
	movwf	_kcomm_tx_shift^(0+128)

;main.c: 1187: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1188: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1189: kcomm_state = 3;
	movlw	3
	movwf	_kcomm_state
	return
i1l4776:	

;main.c: 1192: else if(kcomm_state == 3)
	movlw	3
	xorwf	_kcomm_state,w
	btfss	3,2
	goto	i1l4800

;main.c: 1193: {
;main.c: 1196: if(kcomm_timer >= 14)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	14
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1340
	movlw	8

;main.c: 1197: {
;main.c: 1199: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1200: kcomm_bit_idx ++;
	incf	_kcomm_bit_idx,f

;main.c: 1201: if(kcomm_bit_idx >= 8)
	subwf	_kcomm_bit_idx,w
	btfss	3,0
	goto	i1l1341

;main.c: 1202: {
;main.c: 1203: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1204: kcomm_state = 4;
	movlw	4
	movwf	_kcomm_state

;main.c: 1205: kcomm_cycle= 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_cycle^(0+128)

;main.c: 1206: }
	return
i1l1341:	

;main.c: 1207: else
;main.c: 1208: {
;main.c: 1209: kcomm_tx_shift <<= 1;
	bsf	3,5	;RP0=1, select bank1
	bcf	3,0
	rlf	_kcomm_tx_shift^(0+128),f
	return
i1l1340:	

;main.c: 1212: else
;main.c: 1213: {
;main.c: 1214: if(kcomm_tx_shift & 0x80)
	bsf	3,5	;RP0=1, select bank1
	btfss	_kcomm_tx_shift^(0+128),7
	goto	i1l4796

;main.c: 1215: {
;main.c: 1216: if(kcomm_timer <= 10)
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	11
L12:	
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1333

;main.c: 1220: else
;main.c: 1221: {
;main.c: 1222: PORTB6 = 0;
	bcf	6,6	;volatile
	return
i1l4796:	

;main.c: 1225: else
;main.c: 1226: {
;main.c: 1227: if(kcomm_timer <= 4)
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	5
	goto	L12
i1l4800:	

;main.c: 1238: else if(kcomm_state == 4)
	movlw	4
	xorwf	_kcomm_state,w
	btfss	3,2
	goto	i1l4808

;main.c: 1239: {
;main.c: 1240: if(kcomm_timer >= 20)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	20
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1241: {
;main.c: 1242: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1243: do { TRISB6 = 1; } while(0);
	bsf	70,6	;volatile

;main.c: 1244: kcomm_tx_done = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_tx_done^(0+128)
	incf	_kcomm_tx_done^(0+128),f

;main.c: 1245: kcomm_turn = 1;
	clrf	_kcomm_turn^(0+128)
	incf	_kcomm_turn^(0+128),f
i1l4806:	

;main.c: 1246: kcomm_timer = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1247: kcomm_state = 0;
	clrf	_kcomm_state
	return
i1l4808:	

;main.c: 1250: else if(kcomm_state == 5)
	movlw	5
	xorwf	_kcomm_state,w
	btfss	3,2
	goto	i1l4818

;main.c: 1251: {
;main.c: 1252: if(kcomm_timer >= 40)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	40
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1333

;main.c: 1253: {
;main.c: 1254: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1255: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1256: kcomm_state = 6;
	movlw	6
	movwf	_kcomm_state

;main.c: 1257: }
	return
i1l4818:	

;main.c: 1263: else if(kcomm_state == 6)
	movlw	6
	xorwf	_kcomm_state,w
	btfss	3,2
	goto	i1l4830

;main.c: 1264: {
;main.c: 1265: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1266: {
;main.c: 1267: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1268: bit_wait_fall = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)

;main.c: 1269: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1270: kcomm_rx_shift = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_rx_shift^(0+128)
	bcf	3,5	;RP0=0, select bank0
	bsf	70,6	;volatile

;main.c: 1272: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1273: kcomm_state = 9;
	movlw	9
	movwf	_kcomm_state

;main.c: 1274: }
;main.c: 1275: }
	return
i1l4830:	

;main.c: 1276: else if(kcomm_state == 9)
	movlw	9
	xorwf	_kcomm_state,w
	btfss	3,2
	goto	i1l4876

;main.c: 1277: {
;main.c: 1278: if(kcomm_timer >= ((kcomm_bit_idx == 0 && bit_wait_fall == 0) ? 400u : 60u))
	movf	_kcomm_bit_idx,w
	btfss	3,2
	goto	i1l4836
	bsf	3,5	;RP0=1, select bank1
	movf	Kcomm_ISR@bit_wait_fall^(0+128),w
	btfsc	3,2
	goto	i1l4838
i1l4836:	
	movlw	60
	bcf	3,5	;RP0=0, select bank0
	movwf	_Kcomm_ISR$634
	clrf	_Kcomm_ISR$634+1
	goto	i1l1370
i1l4838:	
	movlw	144
	bcf	3,5	;RP0=0, select bank0
	movwf	_Kcomm_ISR$634
	movlw	1
	movwf	_Kcomm_ISR$634+1
i1l1370:	
	movf	_Kcomm_ISR$634+1,w
	subwf	_kcomm_timer+1,w
	btfss	3,2
	goto	u432_25
	movf	_Kcomm_ISR$634,w
	subwf	_kcomm_timer,w
u432_25:	
	btfss	3,0
	goto	i1l4848

;main.c: 1279: {
;main.c: 1280: kcomm_rx_done = 0xFF;
	movlw	255
	movwf	_kcomm_rx_done

;main.c: 1281: kcomm_turn = 0;

;main.c: 1282: kcomm_timer = 0;
	fcall	PL8	;call to abstracted procedure
i1l4846:	

;main.c: 1283: kcomm_state = 0;
	clrf	_kcomm_state

;main.c: 1284: }
	return
i1l4848:	

;main.c: 1285: else if(bit_wait_fall == 0)
	bsf	3,5	;RP0=1, select bank1
	movf	Kcomm_ISR@bit_wait_fall^(0+128),w

;main.c: 1286: {
;main.c: 1288: if(((PORTB & 0x40) ? 1 : 0))
	bcf	3,5	;RP0=0, select bank0
	btfss	3,2
	goto	L13
	btfss	6,6	;volatile
	return

;main.c: 1289: {
;main.c: 1290: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1291: bit_wait_fall = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)
	incf	Kcomm_ISR@bit_wait_fall^(0+128),f
	return
L13:	
;main.c: 1294: else
;main.c: 1295: {
;main.c: 1297: if(!((PORTB & 0x40) ? 1 : 0))

	btfsc	6,6	;volatile
	return
	movlw	0

;main.c: 1298: {
;main.c: 1299: kcomm_rx_shift <<= 1;
	bsf	3,5	;RP0=1, select bank1
	bcf	3,0
	rlf	_kcomm_rx_shift^(0+128),f

;main.c: 1300: if(kcomm_timer >= 7)
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	7
	btfsc	3,2
	subwf	_kcomm_timer,w

;main.c: 1301: kcomm_rx_shift |= 1;
	bsf	3,5	;RP0=1, select bank1
	btfsc	3,0
	bsf	_kcomm_rx_shift^(0+128),0
	movlw	8

;main.c: 1303: bit_wait_fall = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)

;main.c: 1304: kcomm_bit_idx++;
	bcf	3,5	;RP0=0, select bank0
	incf	_kcomm_bit_idx,f

;main.c: 1306: if(kcomm_bit_idx >= 8)
	subwf	_kcomm_bit_idx,w
	btfss	3,0
	return

;main.c: 1307: {
;main.c: 1308: kcomm_rx_buf = kcomm_rx_shift;
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_rx_shift^(0+128),w
	movwf	_kcomm_rx_buf^(0+128)
	movlw	10

;main.c: 1309: kcomm_rx_done = 1;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_rx_done
	incf	_kcomm_rx_done,f

;main.c: 1310: kcomm_turn = 0;
	fcall	PL8	;call to abstracted procedure

;main.c: 1312: kcomm_state = 10;
	movwf	_kcomm_state
	return
i1l4876:	

;main.c: 1317: else if(kcomm_state == 10)
	movlw	10
	xorwf	_kcomm_state,w
	btfss	3,2
	goto	i1l4846

;main.c: 1318: {
;main.c: 1319: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return
	goto	i1l4806
__end_of_Kcomm_ISR:	
	opt stack 0
PL8:	
	opt stack 2
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_turn^(0+128)
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1
	return
__end_ofPL8:	
	opt stack 0

	psect	text27
__ptext27:	
;; *************** function _comm_pack_tx *****************
;; Defined at:
;;		line 1025 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lo              1    2[BANK0 ] unsigned char 
;;  result          1    1[BANK0 ] unsigned char 
;;  hi              1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Kcomm_ISR
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _comm_pack_tx

_comm_pack_tx:	
	opt stack 2

;main.c: 1027: unsigned char lo = 0;

;incstack = 0
; Regs used in _comm_pack_tx: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	clrf	comm_pack_tx@lo

;main.c: 1028: unsigned char hi;
;main.c: 1029: unsigned char result;
;main.c: 1031: if(DIY_Flag2.OnrBit.b0)
	btfss	_DIY_Flag2,0
	goto	i1l3902

;main.c: 1032: {
;main.c: 1033: lo |= 0x04;
	bsf	comm_pack_tx@lo,2

;main.c: 1036: if(DIY_Flag2.OnrBit.b1)
	btfss	_DIY_Flag2,1
	goto	i1l3902

;main.c: 1037: lo |= 0x02;
	bsf	comm_pack_tx@lo,1
i1l3902:	

;main.c: 1038: }
;main.c: 1041: lo = lo & 0x0F;
	movlw	15
	andwf	comm_pack_tx@lo,f

;main.c: 1042: hi = lo ^ 0x0F;
	movf	comm_pack_tx@lo,w
	xorlw	15
	movwf	comm_pack_tx@hi

;main.c: 1043: result = (hi << 4) | lo;
	swapf	comm_pack_tx@hi,w
	andlw	240
	iorwf	comm_pack_tx@lo,w
	movwf	comm_pack_tx@result

;main.c: 1044: return result;
	return
__end_of_comm_pack_tx:	
	opt stack 0
btemp	set	62	;btemp
wtemp0	set	62

;!
;!Data Sizes:
;!    Strings     0
;!    Constant    7
;!    Data        3
;!    BSS         68
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            46     13      39
;!    BANK1            80     12      57
;!
;!Pointer List with Targets:
;!
;!    None.
;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Timer1_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Battery_Update
;!    _Sleep_Func->_delay_us
;!    _ADC_Init->_delay_us
;!    _LedMode_Func->_show_gear_led
;!    _Key_Application->_Battery_Update
;!    _warn_flash_proc->_show_gear_led
;!    _Battery_Update->_adc_read_vdd
;!    _Gear5_Duty_Update->___wmul
;!    ___lwdiv->___wmul
;!    _Comm_Process->_comm_parse_rx
;!
;!Critical Paths under _Timer1_Isr in BANK0
;!
;!    _Timer1_Isr->_Kcomm_ISR
;!    _Kcomm_ISR->_comm_pack_tx
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sysinitial
;!    _Sleep_Func->_sysinitial
;!    _Gear5_Duty_Update->___lwdiv
;!
;!Critical Paths under _Timer1_Isr in BANK1
;!
;!    None.
;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2784
;!                           _ADC_Init
;!                     _Battery_Update
;!                       _Comm_Process
;!                         _Delay_Init
;!                  _Gear5_Duty_Update
;!                    _Key_Application
;!                           _Key_Func
;!                       _LedMode_Func
;!                            _SW_Func
;!                         _Sleep_Func
;!                      _T1_PWM_inital
;!                      _fan_ramp_proc
;!                             _inital
;!                         _ramInitial
;!                            _set_fan
;!                         _sysinitial
;! ---------------------------------------------------------------------------------
;! (1) _ramInitial                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _fan_ramp_proc                                        4     4      0     134
;!                                              7 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _T1_PWM_inital                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Func                                           1     1      0     548
;!                           _ADC_Init
;!                           _delay_us
;!                             _inital
;!                         _sysinitial
;! ---------------------------------------------------------------------------------
;! (1) _sysinitial                                          12    12      0     240
;!                                              0 BANK1     12    12      0
;! ---------------------------------------------------------------------------------
;! (1) _inital                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Init                                             0     0      0     154
;!                           _delay_us
;! ---------------------------------------------------------------------------------
;! (2) _delay_us                                             4     2      2     154
;!                                              7 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _SW_Func                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LedMode_Func                                         0     0      0     155
;!                      _show_gear_led
;! ---------------------------------------------------------------------------------
;! (1) _Key_Func                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Key_Application                                      3     3      0     619
;!                                              0 BANK1      3     3      0
;!                     _Battery_Update
;!                            _set_fan
;!                      _show_gear_led
;!                       _trigger_warn
;!                    _warn_flash_proc
;! ---------------------------------------------------------------------------------
;! (2) _warn_flash_proc                                      0     0      0     155
;!                      _show_gear_led
;! ---------------------------------------------------------------------------------
;! (2) _show_gear_led                                        1     1      0     155
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _trigger_warn                                         1     1      0      31
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _set_fan                                              1     1      0      96
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Battery_Update                                       2     2      0      40
;!                                             11 BANK0      2     2      0
;!                       _adc_read_vdd
;! ---------------------------------------------------------------------------------
;! (3) _adc_read_vdd                                         4     2      2      40
;!                                              7 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _Gear5_Duty_Update                                    0     0      0     527
;!                            ___lwdiv
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     178
;!                                              7 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     349
;!                                              0 BANK1      7     3      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _Delay_Init                                           4     2      2      89
;!                                              7 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _Comm_Process                                         1     1      0     182
;!                                             11 BANK0      1     1      0
;!                      _comm_parse_rx
;! ---------------------------------------------------------------------------------
;! (2) _comm_parse_rx                                        4     4      0     159
;!                                              7 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _Timer1_Isr                                           2     2      0     118
;!                                              5 BANK0      2     2      0
;!                          _Kcomm_ISR
;! ---------------------------------------------------------------------------------
;! (5) _Kcomm_ISR                                            2     2      0     118
;!                                              3 BANK0      2     2      0
;!                       _comm_pack_tx
;! ---------------------------------------------------------------------------------
;! (6) _comm_pack_tx                                         3     3      0      94
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Init
;!     _delay_us
;!   _Battery_Update
;!     _adc_read_vdd
;!   _Comm_Process
;!     _comm_parse_rx
;!   _Delay_Init
;!   _Gear5_Duty_Update
;!     ___lwdiv
;!       ___wmul (ARG)
;!     ___wmul
;!   _Key_Application
;!     _Battery_Update
;!       _adc_read_vdd
;!     _set_fan
;!     _show_gear_led
;!     _trigger_warn
;!     _warn_flash_proc
;!       _show_gear_led
;!   _Key_Func
;!   _LedMode_Func
;!     _show_gear_led
;!   _SW_Func
;!   _Sleep_Func
;!     _ADC_Init
;!       _delay_us
;!     _delay_us
;!     _inital
;!     _sysinitial
;!   _T1_PWM_inital
;!   _fan_ramp_proc
;!   _inital
;!   _ramInitial
;!   _set_fan
;!   _sysinitial
;!
;! _Timer1_Isr (ROOT)
;!   _Kcomm_ISR
;!     _comm_pack_tx
;!
;! Address spaces:
;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            2E      0       0       3        0.0%
;!BANK0               2E      D      27       4       84.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      C      39       6       71.3%
;!ABS                  0      0      60       7        0.0%
;!DATA                 0      0      60       8        0.0%
