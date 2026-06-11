	global	?_adc_read_vdd
	global	Battery_Update@loop_num
	global	Battery_Update@loop_sum
	global	Battery_Update@low_clr_debounce
	global	Battery_Update@low_debounce
	global	Battery_Update@startup_cnt
	global	Comm_Process@rx_ok
	global	Delay_Init@Delay_Duty
	global	Delay_Init@i
	global	FG_Detect@fg
	global	FG_Detect@fg_cnt
	global	FG_Detect@fg_last
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
	global	_B_KEYHX_Flag
	global	_B_LowPower_Flag
	global	_B_OnOff_Flag
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
	global	_Delay_Init
	signat	_Delay_Init,4217
	global	_FG_Detect
	signat	_FG_Detect,89
	global	_FG_Detect$634
	global	_FSR
	global	_Flag_AllClear
	signat	_Flag_AllClear,89
	FNCALL	_Flag_AllClear,_led_all_off
	global	_GIE
	global	_INDF
	global	_INTECON
	global	_INTEDG
	global	_IOCA
	global	_IOCB
	global	_Kcomm_ISR
	signat	_Kcomm_ISR,89
	FNCALL	_Kcomm_ISR,_comm_pack_tx
	global	_Kcomm_ISR$626
	global	_Key_Application
	signat	_Key_Application,89
	FNCALL	_Key_Application,_Battery_Update
	FNCALL	_Key_Application,_set_fan
	FNCALL	_Key_Application,_led_all_off
	FNCALL	_Key_Application,_show_gear_led
	FNCALL	_Key_Application,_trigger_warn
	FNCALL	_Key_Application,_warn_flash_proc
	global	_Key_Application$611
	global	_Key_Func
	signat	_Key_Func,89
	global	_LedMode_Func
	signat	_LedMode_Func,89
	FNCALL	_LedMode_Func,_led_all_off
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
	FNCALL	_Sleep_Func,_led_all_off
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
	global	__end_ofPL10
	global	__end_ofPL2
	global	__end_ofPL4
	global	__end_ofPL6
	global	__end_ofPL8
	global	__end_of_ADC_Init
	global	__end_of_Battery_Update
	global	__end_of_Comm_Process
	global	__end_of_Delay_Init
	global	__end_of_FG_Detect
	global	__end_of_Flag_AllClear
	global	__end_of_Kcomm_ISR
	global	__end_of_Key_Application
	global	__end_of_Key_Func
	global	__end_of_LedMode_Func
	global	__end_of_SW_Func
	global	__end_of_Sleep_Func
	global	__end_of_T1_PWM_inital
	global	__end_of_Timer1_Isr
	global	__end_of__initialization
	global	__end_of__stringtab
	global	__end_of_adc_read_vdd
	global	__end_of_c_fan_duty
	global	__end_of_comm_pack_tx
	global	__end_of_comm_parse_rx
	global	__end_of_delay_us
	global	__end_of_fan_ramp_proc
	global	__end_of_inital
	global	__end_of_led_all_off
	global	__end_of_main
	global	__end_of_ramInitial
	global	__end_of_set_fan
	global	__end_of_show_gear_led
	global	__end_of_sysinitial
	global	__end_of_trigger_warn
	global	__end_of_warn_flash_proc
	global	__initialization
	global	__pbitbssBANK0
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
	global	__pswtext1
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
	global	__size_of_FG_Detect
__size_of_FG_Detect	equ	__end_of_FG_Detect-_FG_Detect
	global	__size_of_Flag_AllClear
__size_of_Flag_AllClear	equ	__end_of_Flag_AllClear-_Flag_AllClear
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
	global	__size_of_led_all_off
__size_of_led_all_off	equ	__end_of_led_all_off-_led_all_off
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
	global	_fg_blink_ms
	global	_fg_blink_on
	global	_fg_pulse_cnt
	global	_g_PwrDone
	global	_g_battery_empty
	global	_g_current_pwm
	global	_g_fg_state
	global	_g_gear
	global	_g_k1_hold_ms
	global	_g_k1_prev
	global	_g_k2_hold_ms
	global	_g_k2_prev
	global	_g_offshow_flag
	global	_g_offshow_ms
	global	_g_overclock_pwm
	global	_g_pwr_alive_ms
	global	_g_pwr_delay_ms
	global	_g_slave_alive_ms
	global	_g_slave_chargefull
	global	_g_slave_charging
	global	_g_target_pwm
	global	_g_vdd_adc
	global	_g_warn_blink
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
	global	_led_all_off
	signat	_led_all_off,89
	global	_level
	global	_main
	signat	_main,89
	FNROOT	_main
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_Battery_Update
	FNCALL	_main,_Comm_Process
	FNCALL	_main,_Delay_Init
	FNCALL	_main,_FG_Detect
	FNCALL	_main,_Flag_AllClear
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
	FNCALL	_show_gear_led,_led_all_off
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
	FNCALL	_warn_flash_proc,_led_all_off
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
	psect	bitbssBANK0,global,bit,class=BANK0,space=1
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
	psect	text20,local,class=CODE,merge=1,delta=2
	psect	text21,local,class=CODE,merge=1,delta=2
	psect	text22,local,class=CODE,merge=1,delta=2
	psect	text23,local,class=CODE,merge=1,delta=2
	psect	text24,local,class=CODE,merge=1,delta=2
	psect	text25,local,class=CODE,merge=1,delta=2
	psect	intentry,global,class=CODE,delta=2
	psect	text26,local,class=CODE,merge=1,delta=2
	psect	swtext1,local,class=CONST,delta=2
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

	psect	bitbssBANK0
	file	"inital.as"
__pbitbssBANK0:	
	opt stack 0
FG_Detect@fg_last:	
	opt stack 0
	ds	1
_g_PwrDone:	
	opt stack 0
	ds	1
_g_offshow_flag:	
	opt stack 0
	ds	1
_g_warn_blink:	
	opt stack 0
	ds	1
_B_KEYHX_Flag:	
	opt stack 0
	ds	1
_fg_blink_on:	
	opt stack 0
	ds	1
_g_slave_chargefull:	
	opt stack 0
	ds	1
_g_slave_charging:	
	opt stack 0
	ds	1
_B_LowPower_Flag:	
	opt stack 0
	ds	1
_B_OnOff_Flag:	
	opt stack 0
	ds	1

	psect	bssBANK0
__pbssBANK0:	
	opt stack 0
FG_Detect@fg_cnt:	
	opt stack 0
	ds	2
_g_vdd_adc:	
	opt stack 0
	ds	2
_g_current_pwm:	
	opt stack 0
	ds	2
_kcomm_timer:	
	opt stack 0
	ds	2
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
_g_gear:	
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
LedMode_Func@breath_dir:	
	opt stack 0
	ds	1

	psect	bssBANK1
__pbssBANK1:	
	opt stack 0
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
_g_pwr_alive_ms:	
	opt stack 0
	ds	2
_fg_blink_ms:	
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
LedMode_Func@breath_cnt:	
	opt stack 0
	ds	1
_g_overclock_pwm:	
	opt stack 0
	ds	1
_g_warn_cnt:	
	opt stack 0
	ds	1
_g_target_pwm:	
	opt stack 0
	ds	1
_fg_pulse_cnt:	
	opt stack 0
	ds	1
_g_fg_state:	
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
??_Battery_Update:	
Comm_Process@rx_ok:	
; 1 bytes @ 0x0

	opt stack 0
_sysinitial$240:	
; 1 bytes @ 0x0

	opt stack 0

; 2 bytes @ 0x0
	ds	2
_Key_Application$611:	
	opt stack 0
_sysinitial$241:	
; 1 bytes @ 0x2

	opt stack 0

; 2 bytes @ 0x2
	ds	1
Key_Application@edge:	
	opt stack 0

; 1 bytes @ 0x3
	ds	1
Key_Application@cur:	
	opt stack 0
_sysinitial$242:	
; 1 bytes @ 0x4

	opt stack 0

; 2 bytes @ 0x4
	ds	2
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

??_led_all_off:	
; 1 bytes @ 0x0

??_Sleep_Func:	
; 1 bytes @ 0x0

??_adc_read_vdd:	
; 1 bytes @ 0x0

??_LedMode_Func:	
; 1 bytes @ 0x0

??_set_fan:	
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

??_FG_Detect:	
; 1 bytes @ 0x0

??_Flag_AllClear:	
; 1 bytes @ 0x0

??_main:	
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

?_led_all_off:	
; 1 bytes @ 0x0

?_Sleep_Func:	
; 1 bytes @ 0x0

?_LedMode_Func:	
; 1 bytes @ 0x0

?_Battery_Update:	
; 1 bytes @ 0x0

?_set_fan:	
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

?_FG_Detect:	
; 1 bytes @ 0x0

?_Flag_AllClear:	
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
_Kcomm_ISR$626:	
	opt stack 0

; 2 bytes @ 0x3
	ds	2
??_Timer1_Isr:	

; 1 bytes @ 0x5
	ds	3
?_Delay_Init:	
?_delay_us:	
; 1 bytes @ 0x8

??_fan_ramp_proc:	
; 1 bytes @ 0x8

?_adc_read_vdd:	
; 1 bytes @ 0x8

	opt stack 0
show_gear_led@gear:	
; 2 bytes @ 0x8

	opt stack 0
set_fan@gear:	
; 1 bytes @ 0x8

	opt stack 0
trigger_warn@led_num:	
; 1 bytes @ 0x8

	opt stack 0
comm_parse_rx@check:	
; 1 bytes @ 0x8

	opt stack 0
Delay_Init@Delay_Duty:	
; 1 bytes @ 0x8

	opt stack 0
delay_us@us:	
; 2 bytes @ 0x8

	opt stack 0
_FG_Detect$634:	
; 2 bytes @ 0x8

	opt stack 0

; 2 bytes @ 0x8
	ds	1
comm_parse_rx@hi:	
	opt stack 0

; 1 bytes @ 0x9
	ds	1
comm_parse_rx@raw:	
	opt stack 0
FG_Detect@fg:	
; 1 bytes @ 0xA

	opt stack 0
Delay_Init@i:	
; 1 bytes @ 0xA

	opt stack 0
delay_us@i:	
; 2 bytes @ 0xA

	opt stack 0
adc_read_vdd@result:	
; 2 bytes @ 0xA

	opt stack 0
fan_ramp_proc@target_fixed:	
; 2 bytes @ 0xA

	opt stack 0

; 2 bytes @ 0xA
	ds	1
comm_parse_rx@lo:	
	opt stack 0

; 1 bytes @ 0xB
	ds	1

	psect	maintext
__pmaintext:	
;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;
;; *************** function _main *****************
;; Defined at:
;;		line 1522 in file "main.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ADC_Init
;;		_Battery_Update
;;		_Comm_Process
;;		_Delay_Init
;;		_FG_Detect
;;		_Flag_AllClear
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
	opt stack 1

;main.c: 1524: ramInitial();

;incstack = 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_ramInitial

;main.c: 1525: inital();
	fcall	_inital

;main.c: 1526: Delay_Init(200);
	movlw	200
	movwf	Delay_Init@Delay_Duty
	clrf	Delay_Init@Delay_Duty+1
	fcall	_Delay_Init

;main.c: 1527: ADC_Init();
	fcall	_ADC_Init

;main.c: 1528: T1_PWM_inital();
	fcall	_T1_PWM_inital

;main.c: 1529: sysinitial();
	fcall	_sysinitial

;main.c: 1530: WDTEN = 1;
	bsf	65,7	;volatile

;main.c: 1532: Flag_AllClear();
	fcall	_Flag_AllClear

;main.c: 1533: set_fan(0);
	movlw	0
	fcall	_set_fan
l5725:	

;main.c: 1535: {
;main.c: 1536: T0IE = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	14,0	;volatile

;main.c: 1537: GIE = 1;
	bsf	14,7	;volatile

;main.c: 1538: if(DIY_Flag1.OnrBit.b0)
	btfss	_DIY_Flag1,0
	goto	l5725

;main.c: 1539: {
;main.c: 1540: DIY_Flag1.OnrBit.b0 = 0;
	bcf	_DIY_Flag1,0
	clrwdt	;# 

;main.c: 1546: Comm_Process();
	fcall	_Comm_Process

;main.c: 1547: if(g_slave_alive_ms > 0)
	bsf	3,5	;RP0=1, select bank1
	movf	_g_slave_alive_ms^(0+128),w
	iorwf	(_g_slave_alive_ms+1)^(0+128),w
	btfsc	3,2
	goto	l1422

;main.c: 1548: {
;main.c: 1549: g_slave_alive_ms--;
	movlw	1
	subwf	_g_slave_alive_ms^(0+128),f
	movlw	0
	btfss	3,0
	decf	(_g_slave_alive_ms+1)^(0+128),f
	subwf	(_g_slave_alive_ms+1)^(0+128),f

;main.c: 1550: }
	goto	l5747
l1422:	

;main.c: 1551: else
;main.c: 1552: {
;main.c: 1553: if(g_slave_charging || g_slave_chargefull)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l5741
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5743
l5741:	

;main.c: 1554: {
;main.c: 1556: g_gear = 0;
	clrf	_g_gear

;main.c: 1557: g_warn_flash = 0;
	clrf	_g_warn_flash
l5743:	

;main.c: 1558: }
;main.c: 1560: g_slave_charging = 0;
	bcf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)

;main.c: 1561: g_slave_chargefull = 0;
	bcf	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
l5747:	

;main.c: 1563: }
;main.c: 1564: if(g_pwr_alive_ms > 0)
	bsf	3,5	;RP0=1, select bank1
	movf	_g_pwr_alive_ms^(0+128),w
	iorwf	(_g_pwr_alive_ms+1)^(0+128),w
	btfsc	3,2
	goto	l1427

;main.c: 1565: g_pwr_alive_ms--;
	movlw	1
	subwf	_g_pwr_alive_ms^(0+128),f
	movlw	0
	btfss	3,0
	decf	(_g_pwr_alive_ms+1)^(0+128),f
	subwf	(_g_pwr_alive_ms+1)^(0+128),f
	goto	l5751
l1427:	

;main.c: 1566: else
;main.c: 1567: g_PwrDone = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_g_PwrDone/(0+8),_g_PwrDone& (0+7)
l5751:	

;main.c: 1570: Battery_Update();
	fcall	_Battery_Update

;main.c: 1571: Key_Func();
	fcall	_Key_Func

;main.c: 1572: SW_Func();
	fcall	_SW_Func

;main.c: 1573: Key_Application();
	fcall	_Key_Application

;main.c: 1574: FG_Detect();
	fcall	_FG_Detect

;main.c: 1575: fan_ramp_proc();
	fcall	_fan_ramp_proc

;main.c: 1576: LedMode_Func();
	fcall	_LedMode_Func

;main.c: 1577: Sleep_Func();
	fcall	_Sleep_Func
	goto	l5725
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
l3895:	

;inital.c: 72: INDF=0;
	clrf	0	;volatile

;inital.c: 73: FSR--;
	decf	4,f	;volatile

;inital.c: 74: }while(FSR != 0x0f);
	movlw	15
	xorwf	4,w	;volatile
	btfss	3,2
	goto	l3895

;inital.c: 76: FSR=0Xdf;
	movlw	223
	movwf	4	;volatile
l3903:	

;inital.c: 78: INDF=0;
	clrf	0	;volatile

;inital.c: 79: FSR--;
	decf	4,f	;volatile

;inital.c: 80: }while(FSR != 0x8f);
	movlw	143
	xorwf	4,w	;volatile
	btfsc	3,2
	return
	goto	l3903
__end_of_ramInitial:	
	opt stack 0

	psect	text2
	file	"main.c"
__ptext2:	
;; *************** function _fan_ramp_proc *****************
;; Defined at:
;;		line 652 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  target_fixed    2   10[BANK0 ] unsigned int 
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

;main.c: 654: unsigned int target_fixed = (unsigned int)g_target_pwm << 4;

;incstack = 0
; Regs used in _fan_ramp_proc: [wreg+status,2+status,0]
	bsf	3,5	;RP0=1, select bank1
	movf	_g_target_pwm^(0+128),w
	bcf	3,5	;RP0=0, select bank0
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

;main.c: 656: if(g_current_pwm < target_fixed)
	movf	fan_ramp_proc@target_fixed+1,w
	subwf	_g_current_pwm+1,w
	btfss	3,2
	goto	u3145
	movf	fan_ramp_proc@target_fixed,w
	subwf	_g_current_pwm,w
u3145:	
	btfsc	3,0
	goto	l4195

;main.c: 657: {
;main.c: 658: g_current_pwm += 1;
	incf	_g_current_pwm,f
	btfsc	3,2
	incf	_g_current_pwm+1,f

;main.c: 659: if(g_current_pwm > target_fixed) g_current_pwm = target_fixed;
	movf	_g_current_pwm+1,w
	subwf	fan_ramp_proc@target_fixed+1,w
	btfss	3,2
	goto	u3175
	movf	_g_current_pwm,w
	subwf	fan_ramp_proc@target_fixed,w
	goto	u3175
l4195:	

;main.c: 661: else if(g_current_pwm > target_fixed)
	movf	_g_current_pwm+1,w
	subwf	fan_ramp_proc@target_fixed+1,w
	btfss	3,2
	goto	u3165
	movf	_g_current_pwm,w
	subwf	fan_ramp_proc@target_fixed,w
u3165:	
	btfsc	3,0
	goto	l4201

;main.c: 662: {
;main.c: 663: g_current_pwm -= 1;
	movlw	1
	subwf	_g_current_pwm,f
	btfss	3,0
	decf	_g_current_pwm+1,f

;main.c: 664: if(g_current_pwm < target_fixed) g_current_pwm = target_fixed;
	movf	fan_ramp_proc@target_fixed+1,w
	subwf	_g_current_pwm+1,w
	btfss	3,2
	goto	u3175
	movf	fan_ramp_proc@target_fixed,w
	subwf	_g_current_pwm,w
u3175:	
	btfsc	3,0
	goto	l4201
	movf	fan_ramp_proc@target_fixed+1,w
	movwf	_g_current_pwm+1
	movf	fan_ramp_proc@target_fixed,w
	movwf	_g_current_pwm
l4201:	

;main.c: 665: }
;main.c: 667: PWM0P = (unsigned char)(g_current_pwm >> 4);
	movf	_g_current_pwm+1,w
	movwf	??_fan_ramp_proc+1
	movf	_g_current_pwm,w
	movwf	??_fan_ramp_proc
	movlw	4
u3185:	
	bcf	3,0
	rrf	??_fan_ramp_proc+1,f
	rrf	??_fan_ramp_proc,f
	addlw	-1
	btfss	3,2
	goto	u3185
	movf	??_fan_ramp_proc,w
	movwf	79	;volatile

;main.c: 668: if(PWM0P == 0) PORTB2 = 0;
	movf	79,w	;volatile
	btfsc	3,2
	bcf	6,2	;volatile
	return
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
;;		line 200 in file "main.c"
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
;;		_led_all_off
;;		_sysinitial
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Sleep_Func

_Sleep_Func:	
	opt stack 2

;main.c: 202: static unsigned int Sleep_Time = 0;
;main.c: 205: if(B_OnOff_Flag || B_KEYHX_Flag || g_slave_charging || g_slave_chargefull || g_offshow_flag || kcomm_wakeup)

;incstack = 0
; Regs used in _Sleep_Func: [wreg+status,2+status,0+pclath+cstack]
	bcf	3,5	;RP0=0, select bank0
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	btfsc	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
	goto	l5171
	btfss	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5171
	btfsc	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)
	goto	l5171
	movf	_kcomm_wakeup,w
	btfsc	3,2
	goto	l5173
l5171:	

;main.c: 206: {
;main.c: 207: Sleep_Time = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)
l5173:	

;main.c: 208: }
;main.c: 209: Sleep_Time++;
	bsf	3,5	;RP0=1, select bank1
	incf	Sleep_Func@Sleep_Time^(0+128),f
	btfsc	3,2
	incf	(Sleep_Func@Sleep_Time+1)^(0+128),f

;main.c: 210: if(Sleep_Time >= 1000)
	movlw	3
	subwf	(Sleep_Func@Sleep_Time+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	Sleep_Func@Sleep_Time^(0+128),w
	btfss	3,0
	return

;main.c: 211: {
;main.c: 212: Sleep_Time = 0;
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)

;main.c: 213: led_all_off();
	fcall	_led_all_off

;main.c: 215: GIE = 0;
	bcf	14,7	;volatile

;main.c: 216: T0IE = 0;
	bcf	14,0	;volatile

;main.c: 217: T1IE = 0;
	bcf	75,1	;volatile

;main.c: 218: T2IE = 0;
	bcf	75,6	;volatile

;main.c: 219: INTECON = 0;
	clrf	14	;volatile

;main.c: 220: PIR = 0;
	clrf	15	;volatile

;main.c: 222: ADCON0 = 0;
	clrf	90	;volatile

;main.c: 223: ADCON1 = 0;
	clrf	91	;volatile

;main.c: 224: ANSELL = 0;
	clrf	86	;volatile

;main.c: 225: ANSELH = 0;
	clrf	87	;volatile

;main.c: 228: TRISA = 0x0E;
	movlw	14
	movwf	69	;volatile

;main.c: 229: TRISB = 0x48;
	movlw	72

;main.c: 231: PHCON1 = 0xF1;

;main.c: 232: PHCON = 0xFF;

;main.c: 233: PDCON1 = 0xFF;

;main.c: 234: PDCON = 0xBF;
	fcall	PL2	;call to abstracted procedure

;main.c: 236: delay_us(1000);
	movlw	232
	movwf	delay_us@us
	movlw	3
	movwf	delay_us@us+1
	fcall	_delay_us

;main.c: 238: BOREN = 0;
	bcf	75,2	;volatile

;main.c: 239: WDTEN = 0;
	bcf	65,7	;volatile

;main.c: 242: IOCA = 0x0E;
	movlw	14
	movwf	7	;volatile

;main.c: 243: IOCB = 0x40;
	movlw	64
	movwf	9	;volatile

;main.c: 245: unsigned char temp;
;main.c: 246: temp = PORTA;
	movf	5,w	;volatile

;main.c: 247: temp = PORTB;
	movf	6,w	;volatile

;main.c: 250: PAIF = 0;
	bcf	15,0	;volatile

;main.c: 251: PBIF = 0;
	bcf	14,4	;volatile

;main.c: 252: PAIE = 1;
	bsf	15,1	;volatile

;main.c: 253: PBIE = 1;
	bsf	14,1	;volatile
	clrwdt	;# 
	nop	;# 
	sleep	;# 
	nop	;# 

;main.c: 262: WDTEN = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	65,7	;volatile

;main.c: 263: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 266: if(((PORTB & 0x40) ? 1 : 0))
	btfss	6,6	;volatile
	goto	l5249
	movlw	184

;main.c: 267: {
;main.c: 269: g_slave_charging = 1;
	bsf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)

;main.c: 270: g_slave_alive_ms = 3000;
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_slave_alive_ms^(0+128)
	movlw	11
	movwf	(_g_slave_alive_ms^(0+128)+1)
l1046:	
;main.c: 273: while(((PORTB & 0x40) ? 1 : 0))

	bcf	3,5	;RP0=0, select bank0
	btfss	6,6	;volatile
	goto	l5245
	clrwdt	;# 
	goto	l1046
l5245:	

;main.c: 278: }
;main.c: 281: kcomm_cycle = 195;
	movlw	195
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_cycle^(0+128)

;main.c: 282: kcomm_wakeup = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_wakeup
l5249:	

;main.c: 283: }
;main.c: 285: temp = PORTA;
	movf	5,w	;volatile

;main.c: 286: temp = PORTB;
	movf	6,w	;volatile

;main.c: 288: PAIF = 0;
	bcf	15,0	;volatile

;main.c: 289: PBIF = 0;
	bcf	14,4	;volatile

;main.c: 290: PAIE = 0;
	bcf	15,1	;volatile

;main.c: 291: PBIE = 0;
	bcf	14,1	;volatile

;main.c: 293: if(!PORTA2 || !PORTA1)
	btfsc	5,2	;volatile
	btfss	5,1	;volatile

;main.c: 294: {
;main.c: 295: B_KEYHX_Flag = 1;
	bsf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)

;main.c: 296: }
;main.c: 297: inital();
	fcall	_inital

;main.c: 298: sysinitial();
	fcall	_sysinitial

;main.c: 299: ADC_Init();
	fcall	_ADC_Init

;main.c: 300: BOREN = 1;
	bsf	75,2	;volatile

;main.c: 301: Sleep_Time = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)

;main.c: 302: DIY_Flag1.OnrBit.b0 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,0
	return
__end_of_Sleep_Func:	
	opt stack 0
PL2:	
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
__end_ofPL2:	
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
	fcall	PL2	;call to abstracted procedure

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
;;		line 310 in file "main.c"
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

;main.c: 312: ANSELL=0X20;

;incstack = 0
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	movlw	32
	movwf	86	;volatile

;main.c: 313: ANSELH=0X00;
	clrf	87	;volatile

;main.c: 314: ADCON0=0X15;
	movlw	21
	movwf	90	;volatile

;main.c: 315: adcon1_val = 0X08;
	movlw	8
	movwf	_adcon1_val

;main.c: 316: ADCON1 = adcon1_val;
	movwf	91	;volatile

;main.c: 317: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 318: delay_us(100);
	movlw	100
	movwf	delay_us@us
	clrf	delay_us@us+1
	ljmp	l3611
__end_of_ADC_Init:	
	opt stack 0

	psect	text8
__ptext8:	
;; *************** function _delay_us *****************
;; Defined at:
;;		line 180 in file "main.c"
;; Parameters:    Size  Location     Type
;;  us              2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK0 ] unsigned int 
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
l3611:	
;main.c: 182: unsigned int i;
;main.c: 184: while(us--)

;incstack = 0
; Regs used in _delay_us: [wreg+status,2+status,0]

	movlw	1
	subwf	delay_us@us,f
	movlw	0
	btfss	3,0
	decf	delay_us@us+1,f
	subwf	delay_us@us+1,f
	incfsz	delay_us@us,w
	goto	l3601
	incf	delay_us@us+1,w
	btfsc	3,2
	return
l3601:	

;main.c: 185: {
;main.c: 187: for(i = 0; i < 4; i++)
	clrf	delay_us@i
	clrf	delay_us@i+1
l1030:	
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
	goto	l3611
	goto	l1030
__end_of_delay_us:	
	opt stack 0

	psect	text9
__ptext9:	
;; *************** function _SW_Func *****************
;; Defined at:
;;		line 778 in file "main.c"
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

;main.c: 780: static unsigned char sw_time1 = 0;
;main.c: 781: static unsigned char sw_time2 = 0;
;main.c: 783: if(PORTA3)

;incstack = 0
; Regs used in _SW_Func: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	btfss	5,3	;volatile
	goto	l4267
	movlw	20

;main.c: 784: {
;main.c: 786: sw_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	SW_Func@sw_time2^(0+128)

;main.c: 787: sw_time1 ++;
	incf	SW_Func@sw_time1^(0+128),f

;main.c: 788: if(sw_time1 >= 20)
	subwf	SW_Func@sw_time1^(0+128),w
	btfss	3,0
	return

;main.c: 789: {
;main.c: 790: sw_time1 = 0;
	clrf	SW_Func@sw_time1^(0+128)

;main.c: 791: B_OnOff_Flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)

;main.c: 792: B_KEYHX_Flag = 0;
	bcf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)

;main.c: 793: g_PwrDone = 0;
	bcf	_g_PwrDone/(0+8),_g_PwrDone& (0+7)

;main.c: 794: g_pwr_delay_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_pwr_delay_ms^(0+128)
	clrf	(_g_pwr_delay_ms+1)^(0+128)
	return
l4267:	
	movlw	20

;main.c: 797: else
;main.c: 798: {
;main.c: 800: sw_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	SW_Func@sw_time1^(0+128)

;main.c: 801: sw_time2 ++;
	incf	SW_Func@sw_time2^(0+128),f

;main.c: 802: if(sw_time2 >= 20)
	subwf	SW_Func@sw_time2^(0+128),w
	btfss	3,0
	return

;main.c: 803: {
;main.c: 804: sw_time2 = 0;
	clrf	SW_Func@sw_time2^(0+128)

;main.c: 805: B_OnOff_Flag = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)

;main.c: 806: B_KEYHX_Flag = 0;
	bcf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
	return
__end_of_SW_Func:	
	opt stack 0

	psect	text10
__ptext10:	
;; *************** function _LedMode_Func *****************
;; Defined at:
;;		line 350 in file "main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_led_all_off
;;		_show_gear_led
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LedMode_Func

_LedMode_Func:	
	opt stack 2

;main.c: 353: static unsigned char chg_pwm_cnt = 0;
;main.c: 354: static unsigned char breath_duty = 0;
;main.c: 355: static unsigned char breath_dir = 1;
;main.c: 356: static unsigned char breath_cnt = 0;
;main.c: 359: if(g_battery_empty)

;incstack = 0
; Regs used in _LedMode_Func: [wreg+status,2+status,0+pclath+cstack]
	movf	_g_battery_empty,w
	btfsc	3,2
	goto	l1072
l5275:	

;main.c: 360: {
;main.c: 361: led_all_off();
	ljmp	l4931
l1072:	

;main.c: 363: }
;main.c: 365: if((g_slave_charging || g_slave_chargefull) && !B_OnOff_Flag)
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l1076
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l1074
l1076:	
	btfsc	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l1074
	movlw	50

;main.c: 366: {
;main.c: 368: breath_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	LedMode_Func@breath_cnt^(0+128),f

;main.c: 369: if(breath_cnt >= 50)
	subwf	LedMode_Func@breath_cnt^(0+128),w
	btfss	3,0
	goto	l5299

;main.c: 370: {
;main.c: 371: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 372: if(breath_dir)
	bcf	3,5	;RP0=0, select bank0
	movf	LedMode_Func@breath_dir,w
	btfsc	3,2
	goto	l5295

;main.c: 373: {
;main.c: 374: if(breath_duty < 20) breath_duty++;
	movlw	20
	subwf	LedMode_Func@breath_duty,w
	btfsc	3,0
	goto	l5293
	incf	LedMode_Func@breath_duty,f
	goto	l5299
l5293:	

;main.c: 375: else breath_dir = 0;
	clrf	LedMode_Func@breath_dir
	goto	l5299
l5295:	

;main.c: 377: else
;main.c: 378: {
;main.c: 379: if(breath_duty > 0) breath_duty--;
	movf	LedMode_Func@breath_duty,w
	btfsc	3,2
	goto	l1082
	decf	LedMode_Func@breath_duty,f
	goto	l5299
l1082:	

;main.c: 380: else breath_dir = 1;
	clrf	LedMode_Func@breath_dir
	incf	LedMode_Func@breath_dir,f
l5299:	
	movlw	20

;main.c: 381: }
;main.c: 382: }
;main.c: 385: chg_pwm_cnt++;
	bcf	3,5	;RP0=0, select bank0
	incf	LedMode_Func@chg_pwm_cnt,f

;main.c: 386: if(chg_pwm_cnt >= 20)
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfsc	3,0

;main.c: 387: chg_pwm_cnt = 0;
	clrf	LedMode_Func@chg_pwm_cnt

;main.c: 389: if(g_slave_chargefull)
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5315

;main.c: 390: {
;main.c: 392: (PORTB1 = 0); (PORTB0 = 0); (PORTA7 = 0); (PORTA6 = 0); (PORTA4 = 0);
	fcall	PL8	;call to abstracted procedure

;main.c: 393: breath_duty = 20;
	movlw	20
	movwf	LedMode_Func@breath_duty

;main.c: 394: breath_dir = 0;
	clrf	LedMode_Func@breath_dir

;main.c: 395: breath_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 396: }
	return
l5315:	

;main.c: 397: else
;main.c: 398: {
;main.c: 404: if(level >= 2) { (PORTA4 = 0); }
	movlw	2
	subwf	_level,w
	btfss	3,0
	goto	l5319
l5317:	
	bcf	5,4	;volatile
	goto	l5325
l5319:	

;main.c: 405: else if(level == 1) { if(chg_pwm_cnt < breath_duty) (PORTA4 = 0); else (PORTA4 = 1); }
	decfsz	_level,w
	goto	l1090
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5317
l1090:	
	bsf	5,4	;volatile
l5325:	

;main.c: 409: if(level >= 3) { (PORTA6 = 0); }
	movlw	3
	subwf	_level,w
	btfss	3,0
	goto	l5329
l5327:	
	bcf	5,6	;volatile
	goto	l5335
l5329:	

;main.c: 410: else if(level == 2) { if(chg_pwm_cnt < breath_duty) (PORTA6 = 0); else (PORTA6 = 1); }
	movlw	2
	xorwf	_level,w
	btfss	3,2
	goto	l1096
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5327
l1096:	
	bsf	5,6	;volatile
l5335:	

;main.c: 414: if(level >= 4) { (PORTA7 = 0); }
	movlw	4
	subwf	_level,w
	btfss	3,0
	goto	l5339
l5337:	
	bcf	5,7	;volatile
	goto	l5345
l5339:	

;main.c: 415: else if(level == 3) { if(chg_pwm_cnt < breath_duty) (PORTA7 = 0); else (PORTA7 = 1); }
	movlw	3
	xorwf	_level,w
	btfss	3,2
	goto	l1102
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5337
l1102:	
	bsf	5,7	;volatile
l5345:	

;main.c: 419: if(level >= 5) { (PORTB0 = 0); }
	movlw	5
	subwf	_level,w
	btfss	3,0
	goto	l5349
l5347:	
	bcf	6,0	;volatile
	goto	l5355
l5349:	

;main.c: 420: else if(level == 4) { if(chg_pwm_cnt < breath_duty) (PORTB0 = 0); else (PORTB0 = 1); }
	movlw	4
	xorwf	_level,w
	btfss	3,2
	goto	l1108
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5347
l1108:	
	bsf	6,0	;volatile
l5355:	

;main.c: 424: if(level >= 6) { (PORTB1 = 0); }
	movlw	6
	subwf	_level,w
	btfsc	3,0
	goto	l5357
	goto	l5359
l5361:	
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfsc	3,0
	goto	l1114
l5357:	
	bcf	6,1	;volatile
	return
l5359:	

;main.c: 425: else if(level == 5) { if(chg_pwm_cnt < breath_duty) (PORTB1 = 0); else (PORTB1 = 1); }
	movlw	5
	xorwf	_level,w
	btfsc	3,2
	goto	l5361
l1114:	
	bsf	6,1	;volatile
	return
l1074:	

;main.c: 429: }
;main.c: 432: if(B_OnOff_Flag && g_gear == 6)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l1117
	movlw	6
	xorwf	_g_gear,w
	btfss	3,2
	goto	l1117
	movlw	20

;main.c: 433: {
;main.c: 434: breath_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	LedMode_Func@breath_cnt^(0+128),f

;main.c: 435: if(breath_cnt >= 20)
	subwf	LedMode_Func@breath_cnt^(0+128),w
	btfss	3,0
	return

;main.c: 436: {
;main.c: 437: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 438: if(breath_dir)
	bcf	3,5	;RP0=0, select bank0
	movf	LedMode_Func@breath_dir,w
	btfsc	3,2
	goto	l5381

;main.c: 439: {
;main.c: 440: if(breath_duty < 50) breath_duty++;
	movlw	50
	subwf	LedMode_Func@breath_duty,w
	btfsc	3,0
	goto	l5379
	incf	LedMode_Func@breath_duty,f
	goto	l5385
l5379:	

;main.c: 441: else breath_dir = 0;
	clrf	LedMode_Func@breath_dir
	goto	l5385
l5381:	

;main.c: 443: else
;main.c: 444: {
;main.c: 445: if(breath_duty > 0) breath_duty--;
	movf	LedMode_Func@breath_duty,w
	btfsc	3,2
	goto	l1123
	decf	LedMode_Func@breath_duty,f
	goto	l5385
l1123:	

;main.c: 446: else breath_dir = 1;
	clrf	LedMode_Func@breath_dir
	incf	LedMode_Func@breath_dir,f
l5385:	

;main.c: 447: }
;main.c: 448: g_overclock_pwm = breath_duty;
	movf	LedMode_Func@breath_duty,w
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_overclock_pwm^(0+128)
	return
l1117:	

;main.c: 451: }
;main.c: 454: if(!g_slave_charging && !g_slave_chargefull && g_gear != 6)
	btfss	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5397
	movlw	6
	xorwf	_g_gear,w
	btfsc	3,2
	goto	l5397

;main.c: 455: {
;main.c: 456: breath_duty = 0;
	clrf	LedMode_Func@breath_duty

;main.c: 457: breath_dir = 1;
	clrf	LedMode_Func@breath_dir
	incf	LedMode_Func@breath_dir,f

;main.c: 458: breath_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 459: chg_pwm_cnt = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	LedMode_Func@chg_pwm_cnt
l5397:	

;main.c: 460: }
;main.c: 463: if(!B_OnOff_Flag && g_offshow_flag)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	btfss	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)
	goto	l1126

;main.c: 464: {
;main.c: 465: show_gear_led(level);
	movf	_level,w
	ljmp	_show_gear_led
l1126:	

;main.c: 467: }
;main.c: 470: if(B_OnOff_Flag && g_warn_flash > 0)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l1127
	movf	_g_warn_flash,w
	btfss	3,2
	return
l1127:	

;main.c: 475: if(B_OnOff_Flag)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l5275

;main.c: 476: {
;main.c: 477: if(g_fg_state == 3)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	xorwf	_g_fg_state^(0+128),w
	btfss	3,2
	goto	l5425

;main.c: 478: {
;main.c: 479: fg_blink_ms++;
	incf	_fg_blink_ms^(0+128),f
	btfsc	3,2
	incf	(_fg_blink_ms+1)^(0+128),f

;main.c: 480: if(fg_blink_ms >= 500)
	movlw	1
	subwf	(_fg_blink_ms+1)^(0+128),w
	movlw	244
	btfsc	3,2
	subwf	_fg_blink_ms^(0+128),w
	btfss	3,0
	goto	l5419
	movlw	(0+1) shl (_fg_blink_on& (0+7))

;main.c: 481: {
;main.c: 482: fg_blink_ms = 0;
	clrf	_fg_blink_ms^(0+128)
	clrf	(_fg_blink_ms+1)^(0+128)

;main.c: 483: fg_blink_on = !fg_blink_on;
	bcf	3,5	;RP0=0, select bank0
	xorwf	_fg_blink_on/(0+8),f
l5419:	

;main.c: 484: }
;main.c: 485: led_all_off();
	fcall	_led_all_off

;main.c: 486: if(fg_blink_on) (PORTB1 = 0);
	btfss	_fg_blink_on/(0+8),_fg_blink_on& (0+7)
	return
	goto	l5357
l5425:	

;main.c: 488: else
;main.c: 489: {
;main.c: 490: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	ljmp	_show_gear_led
__end_of_LedMode_Func:	
	opt stack 0

	psect	text11
__ptext11:	
;; *************** function _Key_Func *****************
;; Defined at:
;;		line 726 in file "main.c"
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

;main.c: 728: static unsigned char key1_time1 = 0;
;main.c: 729: static unsigned char key1_time2 = 0;
;main.c: 730: static unsigned char key2_time1 = 0;
;main.c: 731: static unsigned char key2_time2 = 0;
;main.c: 733: if(!PORTA2)

;incstack = 0
; Regs used in _Key_Func: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	btfsc	5,2	;volatile
	goto	l4219
	movlw	10

;main.c: 734: {
;main.c: 735: key1_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key1_time2^(0+128)

;main.c: 736: key1_time1 ++;
	incf	Key_Func@key1_time1^(0+128),f

;main.c: 737: if(key1_time1 >= 10)
	subwf	Key_Func@key1_time1^(0+128),w
	btfss	3,0
	goto	l4229

;main.c: 738: {
;main.c: 739: key1_time1 = 0;
	clrf	Key_Func@key1_time1^(0+128)

;main.c: 740: DIY_Flag1.OnrBit.b1 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,1
	goto	l4229
l4219:	
	movlw	10

;main.c: 743: else
;main.c: 744: {
;main.c: 746: key1_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key1_time1^(0+128)

;main.c: 747: key1_time2 ++;
	incf	Key_Func@key1_time2^(0+128),f

;main.c: 748: if(key1_time2 >= 10)
	subwf	Key_Func@key1_time2^(0+128),w
	btfss	3,0
	goto	l4229

;main.c: 749: {
;main.c: 750: key1_time2 = 0;
	clrf	Key_Func@key1_time2^(0+128)

;main.c: 751: DIY_Flag1.OnrBit.b1 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,1
l4229:	

;main.c: 752: }
;main.c: 753: }
;main.c: 755: if(!PORTA1)
	bcf	3,5	;RP0=0, select bank0
	btfsc	5,1	;volatile
	goto	l4241
	movlw	10

;main.c: 756: {
;main.c: 757: key2_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key2_time2^(0+128)

;main.c: 758: key2_time1 ++;
	incf	Key_Func@key2_time1^(0+128),f

;main.c: 759: if(key2_time1 >= 10)
	subwf	Key_Func@key2_time1^(0+128),w
	btfss	3,0
	return

;main.c: 760: {
;main.c: 761: key2_time1 = 0;
	clrf	Key_Func@key2_time1^(0+128)

;main.c: 762: DIY_Flag1.OnrBit.b2 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,2
	return
l4241:	
	movlw	10

;main.c: 765: else
;main.c: 766: {
;main.c: 768: key2_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key2_time1^(0+128)

;main.c: 769: key2_time2 ++;
	incf	Key_Func@key2_time2^(0+128),f

;main.c: 770: if(key2_time2 >= 10)
	subwf	Key_Func@key2_time2^(0+128),w
	btfss	3,0
	return

;main.c: 771: {
;main.c: 772: key2_time2 = 0;
	clrf	Key_Func@key2_time2^(0+128)

;main.c: 773: DIY_Flag1.OnrBit.b2 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,2
	return
__end_of_Key_Func:	
	opt stack 0

	psect	text12
__ptext12:	
;; *************** function _Key_Application *****************
;; Defined at:
;;		line 827 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cur             1    4[BANK1 ] unsigned char 
;;  edge            1    3[BANK1 ] unsigned char 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Battery_Update
;;		_led_all_off
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
	opt stack 1

;main.c: 829: unsigned char edge;
;main.c: 830: unsigned char cur;
;main.c: 831: static unsigned char off_key_prev = 0;
;main.c: 832: warn_flash_proc();

;incstack = 0
; Regs used in _Key_Application: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_warn_flash_proc

;main.c: 835: if(g_vdd_adc <= 2363u)
	movlw	9
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_vdd_adc+1,w
	movlw	60
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5437

;main.c: 836: {
;main.c: 837: g_battery_empty = 1;
	clrf	_g_battery_empty
	incf	_g_battery_empty,f

;main.c: 838: }
	goto	l5441
l5437:	

;main.c: 839: else if(g_vdd_adc >= 2387u)
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	83
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0

;main.c: 840: {
;main.c: 841: g_battery_empty = 0;
	clrf	_g_battery_empty
l5441:	

;main.c: 842: }
;main.c: 844: if(g_battery_empty)
	movf	_g_battery_empty,w
	btfsc	3,2
	goto	l1245
	movlw	0

;main.c: 845: {
;main.c: 846: B_OnOff_Flag = 0;
	bcf	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)

;main.c: 847: set_fan(0);
	fcall	_set_fan

;main.c: 848: led_all_off();
	fcall	_led_all_off

;main.c: 849: g_offshow_flag = 0;
	bcf	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)

;main.c: 850: g_offshow_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)

;main.c: 851: g_warn_flash = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_warn_flash

;main.c: 852: g_gear = 0;
	clrf	_g_gear
	goto	l5457
l5465:	

;main.c: 863: {
;main.c: 864: edge = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Application@edge^(0+128)

;main.c: 865: if(B_KEYHX_Flag)
	bcf	3,5	;RP0=0, select bank0
	btfss	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
	goto	l1248

;main.c: 866: {
;main.c: 867: edge = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Application@edge^(0+128)
	incf	Key_Application@edge^(0+128),f

;main.c: 868: B_KEYHX_Flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
l1248:	

;main.c: 869: }
;main.c: 870: cur = DIY_Flag1.OnrBit.b1 || DIY_Flag1.OnrBit.b2;
	bsf	3,5	;RP0=1, select bank1
	clrf	_Key_Application$611^(0+128)
	incf	_Key_Application$611^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,1
	btfsc	_DIY_Flag1,2
	goto	l5475
	bsf	3,5	;RP0=1, select bank1
	clrf	_Key_Application$611^(0+128)
l5475:	
	bsf	3,5	;RP0=1, select bank1
	movf	_Key_Application$611^(0+128),w
	movwf	Key_Application@cur^(0+128)

;main.c: 871: if(cur && !off_key_prev)
	movf	Key_Application@cur^(0+128),w
	btfsc	3,2
	goto	l5483
	movf	Key_Application@off_key_prev^(0+128),w
	btfss	3,2
	goto	l5483

;main.c: 872: edge = 1;
	clrf	Key_Application@edge^(0+128)
	incf	Key_Application@edge^(0+128),f
l5483:	

;main.c: 873: off_key_prev = cur;
	movf	Key_Application@cur^(0+128),w
	movwf	Key_Application@off_key_prev^(0+128)

;main.c: 874: if(edge)
	movf	Key_Application@edge^(0+128),w
	btfsc	3,2
	goto	l5495

;main.c: 875: {
;main.c: 876: Battery_Update();
	fcall	_Battery_Update

;main.c: 877: g_offshow_flag = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)

;main.c: 878: g_offshow_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)

;main.c: 879: show_gear_led(level);
	bcf	3,5	;RP0=0, select bank0
	movf	_level,w
	fcall	_show_gear_led
l5495:	

;main.c: 880: }
;main.c: 881: if(g_offshow_flag)
	bcf	3,5	;RP0=0, select bank0
	btfss	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)
	goto	l5507

;main.c: 882: {
;main.c: 883: g_offshow_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_offshow_ms^(0+128),f
	btfsc	3,2
	incf	(_g_offshow_ms+1)^(0+128),f

;main.c: 884: if(g_offshow_ms >= 5000)
	movlw	19
	subwf	(_g_offshow_ms+1)^(0+128),w
	movlw	136
	btfsc	3,2
	subwf	_g_offshow_ms^(0+128),w

;main.c: 885: {
;main.c: 886: g_offshow_flag = 0;
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L1
	bcf	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)

;main.c: 887: g_offshow_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)

;main.c: 888: led_all_off();
	fcall	_led_all_off
l5507:	

;main.c: 889: }
;main.c: 890: }
;main.c: 892: if(g_gear != 0)
	bcf	3,5	;RP0=0, select bank0
L1:	
	movf	_g_gear,w
	movlw	0
	btfsc	3,2
	goto	L2

;main.c: 893: {
;main.c: 894: g_gear = 0;
	clrf	_g_gear

;main.c: 895: set_fan(0);
	fcall	_set_fan

;main.c: 896: led_all_off();
	fcall	_led_all_off

;main.c: 897: g_warn_flash = 0;
	clrf	_g_warn_flash
	goto	l5457
l5525:	

;main.c: 911: {
;main.c: 913: set_fan(0);
	movlw	0
	fcall	_set_fan

;main.c: 914: g_pwr_delay_ms = 0;
	clrf	_g_pwr_delay_ms^(0+128)
	clrf	(_g_pwr_delay_ms+1)^(0+128)
l5529:	

;main.c: 915: led_all_off();
	fcall	_led_all_off
l5457:	

;main.c: 853: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0
L2:	
	bcf	3,5	;RP0=0, select bank0

;main.c: 854: g_k2_prev = DIY_Flag1.OnrBit.b2;
	fcall	PL4	;call to abstracted procedure
l5461:	

;main.c: 855: g_k2_hold_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k2_hold_ms^(0+128)
	clrf	(_g_k2_hold_ms+1)^(0+128)
	return
l1245:	

;main.c: 857: }
;main.c: 862: if(B_OnOff_Flag == 0)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l5465

;main.c: 903: }
;main.c: 910: if(!g_PwrDone)
	btfss	_g_PwrDone/(0+8),_g_PwrDone& (0+7)
	goto	l5525

;main.c: 920: }
;main.c: 923: if(g_pwr_delay_ms < 500)
	movlw	1
	bsf	3,5	;RP0=1, select bank1
	subwf	(_g_pwr_delay_ms+1)^(0+128),w
	movlw	244
	btfsc	3,2
	subwf	_g_pwr_delay_ms^(0+128),w
	btfsc	3,0
	goto	l1257

;main.c: 924: {
;main.c: 925: g_pwr_delay_ms++;
	incf	_g_pwr_delay_ms^(0+128),f
	btfsc	3,2
	incf	(_g_pwr_delay_ms+1)^(0+128),f

;main.c: 926: set_fan(1);
	movlw	1
	fcall	_set_fan
	goto	l5529
l1257:	

;main.c: 932: }
;main.c: 934: if(g_slave_charging || g_slave_chargefull)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l1260
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5587
l1260:	
	movlw	1

;main.c: 935: {
;main.c: 936: g_gear = 1;
	clrf	_g_gear
	incf	_g_gear,f

;main.c: 937: set_fan(1);
	fcall	_set_fan

;main.c: 938: g_offshow_flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)

;main.c: 940: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	goto	l5565

;main.c: 941: show_gear_led(1);
	movlw	1
	fcall	_show_gear_led
l5565:	

;main.c: 944: if(DIY_Flag1.OnrBit.b2 && !g_k2_prev) trigger_warn(5);
	btfss	_DIY_Flag1,2
	goto	l5571
	movf	_g_k2_prev,w
	btfss	3,2
	goto	l5571
	movlw	5
	fcall	_trigger_warn
l5571:	

;main.c: 945: if(DIY_Flag1.OnrBit.b1 && !g_k1_prev) trigger_warn(5);
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,1
	goto	l5457
	movf	_g_k1_prev,w
	btfss	3,2
	goto	l5457
	movlw	5
	fcall	_trigger_warn
	goto	l5457
l5587:	

;main.c: 952: else
;main.c: 953: {
;main.c: 955: if(g_gear == 0)
	movf	_g_gear,w
	btfss	3,2
	goto	l5595
	movlw	1

;main.c: 956: {
;main.c: 957: g_gear = 1;
	clrf	_g_gear
	incf	_g_gear,f

;main.c: 958: set_fan(1);
	fcall	_set_fan

;main.c: 959: show_gear_led(1);
	movlw	1
	fcall	_show_gear_led
l5595:	

;main.c: 960: }
;main.c: 962: if(g_warn_flash > 0)
	movf	_g_warn_flash,w
	btfsc	3,2
	goto	l1266

;main.c: 963: {
;main.c: 964: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0

;main.c: 965: g_k2_prev = DIY_Flag1.OnrBit.b2;
	fcall	PL4	;call to abstracted procedure

;main.c: 966: g_k1_hold_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k1_hold_ms^(0+128)
	clrf	(_g_k1_hold_ms+1)^(0+128)
	goto	l5461
l1266:	

;main.c: 969: }
;main.c: 972: if(DIY_Flag1.OnrBit.b2)
	btfss	_DIY_Flag1,2
	goto	l5623

;main.c: 973: {
;main.c: 974: g_k2_hold_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_k2_hold_ms^(0+128),f
	btfsc	3,2
	incf	(_g_k2_hold_ms+1)^(0+128),f

;main.c: 976: if(g_k2_hold_ms == 500)
	movlw	244
	xorwf	_g_k2_hold_ms^(0+128),w
	btfss	3,2
	goto	l5649
	decf	(_g_k2_hold_ms+1)^(0+128),w
	btfss	3,2
	goto	l5649

;main.c: 977: {
;main.c: 978: g_k2_hold_ms = 400;
	movlw	144
	movwf	_g_k2_hold_ms^(0+128)
	movlw	1
	movwf	(_g_k2_hold_ms^(0+128)+1)

;main.c: 979: if(g_gear < 5)
	movlw	5
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfsc	3,0
	goto	l5617

;main.c: 980: {
;main.c: 981: g_gear++;
	incf	_g_gear,f

;main.c: 982: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 983: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 984: }
	goto	l5649
l5617:	

;main.c: 985: else if(g_gear == 5)
	movlw	5
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5649

;main.c: 986: {
;main.c: 987: g_gear = 6;
	movlw	6
	movwf	_g_gear

;main.c: 988: set_fan(6);
	movlw	6
	fcall	_set_fan

;main.c: 989: }
;main.c: 990: }
;main.c: 991: }
	goto	l5649
l5623:	

;main.c: 992: else
;main.c: 993: {
;main.c: 995: if(g_k2_prev)
	movf	_g_k2_prev,w
	btfsc	3,2
	goto	l5647

;main.c: 996: {
;main.c: 997: if(g_gear == 6)
	movlw	6
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5633

;main.c: 998: {
;main.c: 1000: g_gear = 5;
	movlw	5
	movwf	_g_gear

;main.c: 1001: set_fan(5);
	movlw	5
	fcall	_set_fan

;main.c: 1002: show_gear_led(5);
	movlw	5
	fcall	_show_gear_led

;main.c: 1003: }
	goto	l5647
l5633:	

;main.c: 1004: else if(g_k2_hold_ms < 500)
	movlw	1
	bsf	3,5	;RP0=1, select bank1
	subwf	(_g_k2_hold_ms+1)^(0+128),w
	movlw	244
	btfsc	3,2
	subwf	_g_k2_hold_ms^(0+128),w
	btfsc	3,0
	goto	l5647

;main.c: 1005: {
;main.c: 1007: if(g_gear < 5)
	movlw	5
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfsc	3,0
	goto	l5643

;main.c: 1008: {
;main.c: 1009: g_gear++;
	incf	_g_gear,f

;main.c: 1010: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 1011: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 1012: }
	goto	l5647
l5643:	

;main.c: 1013: else if(g_gear == 5)
	movlw	5
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5647

;main.c: 1014: {
;main.c: 1015: trigger_warn(1);
	movlw	1
	fcall	_trigger_warn
l5647:	

;main.c: 1016: }
;main.c: 1017: }
;main.c: 1018: }
;main.c: 1019: g_k2_hold_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k2_hold_ms^(0+128)
	clrf	(_g_k2_hold_ms+1)^(0+128)
l5649:	

;main.c: 1020: }
;main.c: 1021: g_k2_prev = DIY_Flag1.OnrBit.b2;
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag1,2
	movlw	1
	movwf	_g_k2_prev

;main.c: 1024: if(DIY_Flag1.OnrBit.b1)
	btfss	_DIY_Flag1,1
	goto	l5665

;main.c: 1025: {
;main.c: 1026: g_k1_hold_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_k1_hold_ms^(0+128),f
	btfsc	3,2
	incf	(_g_k1_hold_ms+1)^(0+128),f

;main.c: 1028: if(g_k1_hold_ms == 500)
	movlw	244
	xorwf	_g_k1_hold_ms^(0+128),w
	btfss	3,2
	goto	l5683
	decf	(_g_k1_hold_ms+1)^(0+128),w
	btfss	3,2
	goto	l5683

;main.c: 1029: {
;main.c: 1030: g_k1_hold_ms = 400;
	movlw	144
	movwf	_g_k1_hold_ms^(0+128)
	movlw	1
	movwf	(_g_k1_hold_ms^(0+128)+1)

;main.c: 1032: if(g_gear > 1)
	movlw	2
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfss	3,0
	goto	l5683

;main.c: 1033: {
;main.c: 1034: g_gear--;
	decf	_g_gear,f

;main.c: 1035: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 1036: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led
	goto	l5683
l5665:	

;main.c: 1041: else
;main.c: 1042: {
;main.c: 1044: if(g_k1_prev)
	movf	_g_k1_prev,w
	btfsc	3,2
	goto	l5681

;main.c: 1045: {
;main.c: 1046: if(g_k1_hold_ms < 500)
	movlw	1
	bsf	3,5	;RP0=1, select bank1
	subwf	(_g_k1_hold_ms+1)^(0+128),w
	movlw	244
	btfsc	3,2
	subwf	_g_k1_hold_ms^(0+128),w
	btfsc	3,0
	goto	l5681

;main.c: 1047: {
;main.c: 1049: if(g_gear > 1)
	movlw	2
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_gear,w
	btfss	3,0
	goto	l5677

;main.c: 1050: {
;main.c: 1051: g_gear--;
	decf	_g_gear,f

;main.c: 1052: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 1053: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 1054: }
	goto	l5681
l5677:	

;main.c: 1055: else if(g_gear == 1)
	decfsz	_g_gear,w
	goto	l5681

;main.c: 1056: {
;main.c: 1057: trigger_warn(5);
	movlw	5
	fcall	_trigger_warn
l5681:	

;main.c: 1058: }
;main.c: 1059: }
;main.c: 1060: }
;main.c: 1061: g_k1_hold_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k1_hold_ms^(0+128)
	clrf	(_g_k1_hold_ms+1)^(0+128)
l5683:	

;main.c: 1062: }
;main.c: 1063: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag1,1
	movlw	1
	movwf	_g_k1_prev
	return
__end_of_Key_Application:	
	opt stack 0
PL4:	
	opt stack 1
	btfsc	_DIY_Flag1,1
	movlw	1
	movwf	_g_k1_prev
	movlw	0
	btfsc	_DIY_Flag1,2
	movlw	1
	movwf	_g_k2_prev
	return
__end_ofPL4:	
	opt stack 0

	psect	text13
__ptext13:	
;; *************** function _warn_flash_proc *****************
;; Defined at:
;;		line 691 in file "main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_led_all_off
;;		_show_gear_led
;; This function is called by:
;;		_Key_Application
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _warn_flash_proc

_warn_flash_proc:	
	opt stack 1

;main.c: 693: if(g_warn_flash == 0)

;incstack = 0
; Regs used in _warn_flash_proc: [wreg+status,2+status,0+pclath+cstack]
	bcf	3,5	;RP0=0, select bank0
	movf	_g_warn_flash,w
	btfsc	3,2
	return
	movlw	150

;main.c: 695: g_warn_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_warn_cnt^(0+128),f

;main.c: 696: if(g_warn_cnt < 150)
	subwf	_g_warn_cnt^(0+128),w
	btfss	3,0
	return
	movlw	(0+1) shl (_g_warn_blink& (0+7))

;main.c: 698: g_warn_cnt = 0;
	clrf	_g_warn_cnt^(0+128)

;main.c: 701: g_warn_blink = !g_warn_blink;
	bcf	3,5	;RP0=0, select bank0
	xorwf	_g_warn_blink/(0+8),f

;main.c: 702: g_warn_flash--;
	decf	_g_warn_flash,f

;main.c: 704: if(g_warn_led == 1)
	decfsz	_g_warn_led,w
	goto	l5121

;main.c: 705: {
;main.c: 707: (PORTA4 = 0); (PORTA6 = 0); (PORTA7 = 0); (PORTB0 = 0);
	bcf	5,4	;volatile
	bcf	5,6	;volatile
	bcf	5,7	;volatile
	bcf	6,0	;volatile

;main.c: 708: if(g_warn_blink) (PORTB1 = 1); else (PORTB1 = 0);
	btfss	_g_warn_blink/(0+8),_g_warn_blink& (0+7)
	goto	l1202
	bsf	6,1	;volatile
	goto	l5129
l1202:	
	bcf	6,1	;volatile
	goto	l5129
l5121:	

;main.c: 710: else if(g_warn_led == 5)
	movlw	5
	xorwf	_g_warn_led,w
	btfss	3,2
	goto	l5129

;main.c: 711: {
;main.c: 713: led_all_off();
	fcall	_led_all_off

;main.c: 714: if(!g_warn_blink)
	btfsc	_g_warn_blink/(0+8),_g_warn_blink& (0+7)
	goto	l5129

;main.c: 715: (PORTA4 = 0);
	bcf	5,4	;volatile
l5129:	

;main.c: 716: }
;main.c: 719: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	return

;main.c: 720: {
;main.c: 721: show_gear_led(g_gear);
	movf	_g_gear,w
	ljmp	_show_gear_led
__end_of_warn_flash_proc:	
	opt stack 0

	psect	text14
__ptext14:	
;; *************** function _show_gear_led *****************
;; Defined at:
;;		line 621 in file "main.c"
;; Parameters:    Size  Location     Type
;;  gear            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  gear            1    8[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_led_all_off
;; This function is called by:
;;		_LedMode_Func
;;		_warn_flash_proc
;;		_Key_Application
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _show_gear_led

_show_gear_led:	
	opt stack 2

;incstack = 0
; Regs used in _show_gear_led: [wreg+status,2+status,0+pclath+cstack]
;show_gear_led@gear stored from wreg
	bcf	3,5	;RP0=0, select bank0
	movwf	show_gear_led@gear

;main.c: 623: led_all_off();
	fcall	_led_all_off

;main.c: 624: if(gear >= 1) (PORTA4 = 0);
	movf	show_gear_led@gear,w
	btfss	3,2
	bcf	5,4	;volatile

;main.c: 625: if(gear >= 2) (PORTA6 = 0);
	movlw	2
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	5,6	;volatile

;main.c: 626: if(gear >= 3) (PORTA7 = 0);
	movlw	3
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	5,7	;volatile

;main.c: 627: if(gear >= 4) (PORTB0 = 0);
	movlw	4
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	6,0	;volatile

;main.c: 628: if(gear >= 5) (PORTB1 = 0);
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
;;		line 678 in file "main.c"
;; Parameters:    Size  Location     Type
;;  led_num         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led_num         1    8[BANK0 ] unsigned char 
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

;main.c: 680: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	return

;main.c: 681: {
;main.c: 682: g_warn_flash = 4;
	movlw	4
	movwf	_g_warn_flash

;main.c: 683: g_warn_led = led_num;
	movf	trigger_warn@led_num,w
	movwf	_g_warn_led

;main.c: 684: g_warn_blink = 0;
	bcf	_g_warn_blink/(0+8),_g_warn_blink& (0+7)

;main.c: 685: g_warn_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_warn_cnt^(0+128)
	return
__end_of_trigger_warn:	
	opt stack 0

	psect	text16
__ptext16:	
;; *************** function _set_fan *****************
;; Defined at:
;;		line 636 in file "main.c"
;; Parameters:    Size  Location     Type
;;  gear            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  gear            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/100
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

;main.c: 638: if(gear == 0)
	movf	set_fan@gear,w
	btfss	3,2
	goto	l5085

;main.c: 639: {
;main.c: 640: g_target_pwm = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_target_pwm^(0+128)
	return
l5085:	

;main.c: 642: }
;main.c: 643: if(gear > 6)
	movlw	7
	subwf	set_fan@gear,w
	btfss	3,0
	goto	l5089

;main.c: 644: gear = 6;
	movlw	6
	movwf	set_fan@gear
l5089:	

;main.c: 646: g_target_pwm = c_fan_duty[gear];
	movf	set_fan@gear,w
	addlw	low ((_c_fan_duty-__stringbase)| (0+32768))
	movwf	4
	fcall	stringdir
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_target_pwm^(0+128)
	return
__end_of_set_fan:	
	opt stack 0

	psect	text17
__ptext17:	
;; *************** function _Battery_Update *****************
;; Defined at:
;;		line 577 in file "main.c"
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
;;      Temps:          0       0       2
;;      Totals:         0       0       2
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

;main.c: 579: static unsigned char loop_num = 0;
;main.c: 580: static unsigned int loop_sum = 0;
;main.c: 581: static unsigned char low_debounce = 0;
;main.c: 582: static unsigned char low_clr_debounce = 0;
;main.c: 583: static unsigned char startup_cnt = 50;
;main.c: 585: loop_sum += adc_read_vdd();

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

;main.c: 586: loop_num++;
	incf	Battery_Update@loop_num^(0+128),f

;main.c: 587: if(loop_num < 8) return;
	subwf	Battery_Update@loop_num^(0+128),w
	btfss	3,0
	return

;main.c: 589: g_vdd_adc = (unsigned int)(loop_sum >> 3);
	movf	(Battery_Update@loop_sum+1)^(0+128),w
	movwf	(??_Battery_Update^(0+128)+1)
	movf	Battery_Update@loop_sum^(0+128),w
	movwf	??_Battery_Update^(0+128)
	bcf	3,0
	rrf	(??_Battery_Update^(0+128)+1),f
	rrf	??_Battery_Update^(0+128),f
	bcf	3,0
	rrf	(??_Battery_Update^(0+128)+1),f
	rrf	??_Battery_Update^(0+128),f
	bcf	3,0
	rrf	(??_Battery_Update^(0+128)+1),f
	rrf	??_Battery_Update^(0+128),f
	movf	??_Battery_Update^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	_g_vdd_adc
	bsf	3,5	;RP0=1, select bank1
	movf	(??_Battery_Update+1)^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	_g_vdd_adc+1

;main.c: 590: loop_num = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@loop_num^(0+128)

;main.c: 591: loop_sum = 0;
	clrf	Battery_Update@loop_sum^(0+128)
	clrf	(Battery_Update@loop_sum+1)^(0+128)

;main.c: 593: if(g_slave_chargefull) level = 6;
	bcf	3,5	;RP0=0, select bank0
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5027
l5025:	
	movlw	6
	goto	L3
l5027:	

;main.c: 594: else if(g_vdd_adc < 2363u) level = 0;
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	59
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5031
	clrf	_level
	goto	l5053
l5031:	

;main.c: 595: else if(g_vdd_adc < 2544u) level = 1;
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	240
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5035
	clrf	_level
	incf	_level,f
	goto	l5053
l5035:	

;main.c: 596: else if(g_vdd_adc < 2914u) level = 2;
	movlw	11
	subwf	_g_vdd_adc+1,w
	movlw	98
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5039
	movlw	2
	goto	L3
l5039:	

;main.c: 597: else if(g_vdd_adc < 3072u) level = 3;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	0
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5043
	movlw	3
	goto	L3
l5043:	

;main.c: 598: else if(g_vdd_adc < 3229u) level = 4;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	157
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5047
	movlw	4
	goto	L3
l5047:	

;main.c: 599: else if(g_vdd_adc < 3308u) level = 5;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	236
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5025
	movlw	5
L3:	
	movwf	_level
l5053:	

;main.c: 602: if(startup_cnt > 0) { startup_cnt--; B_LowPower_Flag = 0; return; }
	bsf	3,5	;RP0=1, select bank1
	movf	Battery_Update@startup_cnt^(0+128),w
	btfsc	3,2
	goto	l1161
	decf	Battery_Update@startup_cnt^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
	return
l1161:	

;main.c: 604: if(!B_LowPower_Flag)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
	goto	l5069

;main.c: 605: {
;main.c: 606: if(g_vdd_adc < 2521u) { if(++low_debounce >= 5) B_LowPower_Flag = 1; }
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	217
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5067
	movlw	5
	bsf	3,5	;RP0=1, select bank1
	incf	Battery_Update@low_debounce^(0+128),f
	subwf	Battery_Update@low_debounce^(0+128),w
	btfss	3,0
	return
	bcf	3,5	;RP0=0, select bank0
	bsf	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
	return
l5071:	
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	incf	Battery_Update@low_clr_debounce^(0+128),f
	subwf	Battery_Update@low_clr_debounce^(0+128),w
	btfss	3,0
	return
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
l5067:	

;main.c: 607: else { low_debounce = 0; }
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@low_debounce^(0+128)
	return
l5069:	

;main.c: 609: else
;main.c: 610: {
;main.c: 611: if(g_vdd_adc >= 2544u) { if(++low_clr_debounce >= 3) { B_LowPower_Flag = 0; low_debounce = 0; } }
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	240
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5071

;main.c: 612: else { low_clr_debounce = 0; }
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@low_clr_debounce^(0+128)
	return
__end_of_Battery_Update:	
	opt stack 0

	psect	text18
__ptext18:	
;; *************** function _adc_read_vdd *****************
;; Defined at:
;;		line 324 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2   10[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
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

;main.c: 326: unsigned int result;
;main.c: 329: ADCON0 = 0x15;

;incstack = 0
; Regs used in _adc_read_vdd: [wreg+status,2+status,0]
	movlw	21
	bcf	3,5	;RP0=0, select bank0
	movwf	90	;volatile

;main.c: 330: ADCON1 = adcon1_val;
	movf	_adcon1_val,w
	movwf	91	;volatile

;main.c: 331: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 333: ADIF = 0;
	bcf	15,2	;volatile

;main.c: 334: ADON = 1;
	bsf	90,1	;volatile
l1058:	
;main.c: 337: while(ADON)

	bcf	3,5	;RP0=0, select bank0
	btfss	90,1	;volatile
	goto	l4941
	clrwdt	;# 
	goto	l1058
l4941:	

;main.c: 345: }
;main.c: 347: result = ((unsigned int)ADRESH << 4) | (ADRESL >> 4);
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

;main.c: 348: return result;
	movf	adc_read_vdd@result+1,w
	movwf	?_adc_read_vdd+1
	movf	adc_read_vdd@result,w
	movwf	?_adc_read_vdd
	return
__end_of_adc_read_vdd:	
	opt stack 0

	psect	text19
__ptext19:	
;; *************** function _Flag_AllClear *****************
;; Defined at:
;;		line 1478 in file "main.c"
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
;;		_led_all_off
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Flag_AllClear

_Flag_AllClear:	
	opt stack 3

;main.c: 1480: led_all_off();

;incstack = 0
; Regs used in _Flag_AllClear: [wreg+status,2+status,0+pclath+cstack]
	fcall	_led_all_off

;main.c: 1516: g_vdd_adc = 3308u;
	movlw	236
	movwf	_g_vdd_adc
	movlw	12
	movwf	_g_vdd_adc+1
	return
__end_of_Flag_AllClear:	
	opt stack 0

	psect	text20
__ptext20:	
;; *************** function _led_all_off *****************
;; Defined at:
;;		line 195 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/100
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
;;		_LedMode_Func
;;		_show_gear_led
;;		_warn_flash_proc
;;		_Key_Application
;;		_Flag_AllClear
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _led_all_off

_led_all_off:	
	opt stack 3
l4931:	
;incstack = 0
; Regs used in _led_all_off: []

	bcf	3,5	;RP0=0, select bank0
	fcall	PL6	;call to abstracted procedure
	return
__end_of_led_all_off:	
	opt stack 0

	psect	text21
__ptext21:	
;; *************** function _FG_Detect *****************
;; Defined at:
;;		line 1425 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  fg              1   10[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _FG_Detect

_FG_Detect:	
	opt stack 4

;main.c: 1427: static unsigned int fg_cnt = 0;
;main.c: 1428: static bit fg_last = 0;
;main.c: 1430: if(!B_OnOff_Flag)

;incstack = 0
; Regs used in _FG_Detect: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	btfsc	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l4769

;main.c: 1431: {
;main.c: 1432: g_fg_state = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_fg_state^(0+128)

;main.c: 1433: fg_pulse_cnt = 0;
	clrf	_fg_pulse_cnt^(0+128)

;main.c: 1434: fg_cnt = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	FG_Detect@fg_cnt
	clrf	FG_Detect@fg_cnt+1

;main.c: 1435: fg_last = 0;
	bcf	FG_Detect@fg_last/(0+8),FG_Detect@fg_last& (0+7)
	return
l4769:	

;main.c: 1437: }
;main.c: 1438: unsigned char fg = ((PORTB & 0x08) ? 1 : 0);
	btfss	6,3	;volatile
	goto	u4110
	movlw	1
	goto	u4120
u4110:	
	movlw	0
u4120:	
	movwf	FG_Detect@fg

;main.c: 1440: if(fg != fg_last)
	movlw	0
	btfsc	FG_Detect@fg_last/(0+8),FG_Detect@fg_last& (0+7)
	movlw	1
	xorwf	FG_Detect@fg,w
	btfsc	3,2
	goto	l4799

;main.c: 1441: {
;main.c: 1442: if(!fg)
	movf	FG_Detect@fg,w
	btfss	3,2
	goto	l4781

;main.c: 1443: {
;main.c: 1444: if(fg_cnt >= 2 && fg_cnt <= 6)
	movlw	0
	subwf	FG_Detect@fg_cnt+1,w
	movlw	2
	btfsc	3,2
	subwf	FG_Detect@fg_cnt,w
	btfss	3,0
	goto	l4779
	movlw	0
	subwf	FG_Detect@fg_cnt+1,w
	movlw	7
	btfsc	3,2
	subwf	FG_Detect@fg_cnt,w

;main.c: 1445: fg_pulse_cnt++;
	bsf	3,5	;RP0=1, select bank1
	btfsc	3,0
	goto	L5
	incf	_fg_pulse_cnt^(0+128),f
	goto	l1402
l4781:	

;main.c: 1449: else
;main.c: 1450: {
;main.c: 1451: if(fg_pulse_cnt >= 2 && fg_cnt >= 80 && fg_cnt <= 150)
	movlw	2
	bsf	3,5	;RP0=1, select bank1
	subwf	_fg_pulse_cnt^(0+128),w
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L6
	subwf	FG_Detect@fg_cnt+1,w
	movlw	80
	btfsc	3,2
	subwf	FG_Detect@fg_cnt,w
	movlw	0
	btfss	3,0
	goto	L7
	subwf	FG_Detect@fg_cnt+1,w
	movlw	151
	btfsc	3,2
	subwf	FG_Detect@fg_cnt,w
	btfsc	3,0
	goto	l4791

;main.c: 1452: {
;main.c: 1453: g_fg_state = 3;
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_fg_state^(0+128)
	goto	l4779
l4791:	

;main.c: 1456: else if(fg_cnt < 7)
	movlw	0
L7:	
	bcf	3,5	;RP0=0, select bank0
L6:	
	subwf	FG_Detect@fg_cnt+1,w
	movlw	7
	btfsc	3,2
	subwf	FG_Detect@fg_cnt,w
	btfss	3,0
	goto	l1402
l4779:	

;main.c: 1446: else
;main.c: 1447: fg_pulse_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
L5:	
	clrf	_fg_pulse_cnt^(0+128)
l1402:	

;main.c: 1463: }
;main.c: 1464: }
;main.c: 1465: fg_cnt = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	FG_Detect@fg_cnt
	clrf	FG_Detect@fg_cnt+1

;main.c: 1466: fg_last = fg;
	bcf	FG_Detect@fg_last/(0+8),FG_Detect@fg_last& (0+7)
	btfsc	FG_Detect@fg,0
	bsf	FG_Detect@fg_last/(0+8),FG_Detect@fg_last& (0+7)

;main.c: 1467: }
	return
l4799:	

;main.c: 1468: else
;main.c: 1469: {
;main.c: 1470: fg_cnt++;
	incf	FG_Detect@fg_cnt,f
	btfsc	3,2
	incf	FG_Detect@fg_cnt+1,f

;main.c: 1471: if(fg_cnt == 500)
	movlw	244
	xorwf	FG_Detect@fg_cnt,w
	btfsc	3,2
	decfsz	FG_Detect@fg_cnt+1,w
	return

;main.c: 1472: {
;main.c: 1473: g_fg_state = fg ? 1 : 2;
	movf	FG_Detect@fg,w
	btfss	3,2
	goto	l4807
	movlw	2
	movwf	_FG_Detect$634
	goto	L4
l4807:	
	clrf	_FG_Detect$634
	incf	_FG_Detect$634,f
L4:	
	clrf	_FG_Detect$634+1
	movf	_FG_Detect$634,w
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_fg_state^(0+128)

;main.c: 1474: fg_pulse_cnt = 0;
	clrf	_fg_pulse_cnt^(0+128)
	return
__end_of_FG_Detect:	
	opt stack 0

	psect	text22
__ptext22:	
;; *************** function _Delay_Init *****************
;; Defined at:
;;		line 168 in file "main.c"
;; Parameters:    Size  Location     Type
;;  Delay_Duty      2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK0 ] unsigned int 
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

;main.c: 170: unsigned int i;
;main.c: 172: for(i = 0; i <= Delay_Duty; i ++)

;incstack = 0
; Regs used in _Delay_Init: [wreg+status,2+status,0]
	clrf	Delay_Init@i
	clrf	Delay_Init@i+1
l3913:	
	movf	Delay_Init@i+1,w
	subwf	Delay_Init@Delay_Duty+1,w
	btfss	3,2
	goto	u2605
	movf	Delay_Init@i,w
	subwf	Delay_Init@Delay_Duty,w
u2605:	
	btfss	3,0
	return
	clrwdt	;# 
	bcf	3,5	;RP0=0, select bank0
	incf	Delay_Init@i,f
	btfsc	3,2
	incf	Delay_Init@i+1,f
	goto	l3913
__end_of_Delay_Init:	
	opt stack 0

	psect	text23
__ptext23:	
;; *************** function _Comm_Process *****************
;; Defined at:
;;		line 1387 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rx_ok           1    0[BANK1 ] unsigned char 
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
;;      Locals:         0       0       1
;;      Temps:          0       0       0
;;      Totals:         0       0       1
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

;main.c: 1389: unsigned char rx_ok;
;main.c: 1391: if(kcomm_tx_done == 1)

;incstack = 0
; Regs used in _Comm_Process: [wreg+status,2+status,0+pclath+cstack]
	bsf	3,5	;RP0=1, select bank1
	decfsz	_kcomm_tx_done^(0+128),w
	goto	l5689

;main.c: 1392: {
;main.c: 1393: kcomm_tx_done = 0;
	clrf	_kcomm_tx_done^(0+128)
l5689:	

;main.c: 1394: }
;main.c: 1396: if(kcomm_rx_done == 1)
	bcf	3,5	;RP0=0, select bank0
	decfsz	_kcomm_rx_done,w
	goto	l5711

;main.c: 1397: {
;main.c: 1398: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done

;main.c: 1399: rx_ok = comm_parse_rx(kcomm_rx_buf);
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_rx_buf^(0+128),w
	fcall	_comm_parse_rx
	bsf	3,5	;RP0=1, select bank1
	movwf	Comm_Process@rx_ok^(0+128)

;main.c: 1400: if(rx_ok)
	movf	Comm_Process@rx_ok^(0+128),w
	btfsc	3,2
	goto	l5699

;main.c: 1401: g_slave_alive_ms = 200;
	movlw	200
	movwf	_g_slave_alive_ms^(0+128)
	clrf	(_g_slave_alive_ms+1)^(0+128)
l5699:	

;main.c: 1402: if(g_slave_charging || g_slave_chargefull || g_PwrDone)
	bcf	3,5	;RP0=0, select bank0
	btfss	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5705
	btfss	_g_PwrDone/(0+8),_g_PwrDone& (0+7)
	goto	l5707
l5705:	

;main.c: 1403: g_slave_alive_ms = 200;
	movlw	200
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_slave_alive_ms^(0+128)
	clrf	(_g_slave_alive_ms+1)^(0+128)
l5707:	

;main.c: 1404: if(g_PwrDone)
	bcf	3,5	;RP0=0, select bank0
	btfss	_g_PwrDone/(0+8),_g_PwrDone& (0+7)
	return

;main.c: 1405: g_pwr_alive_ms = 2000;
	movlw	208
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_pwr_alive_ms^(0+128)
	movlw	7
	movwf	(_g_pwr_alive_ms^(0+128)+1)
	return
l5711:	

;main.c: 1407: else if(kcomm_rx_done == 0xFF)
	incfsz	_kcomm_rx_done,w
	return

;main.c: 1408: {
;main.c: 1409: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done
	return
__end_of_Comm_Process:	
	opt stack 0

	psect	text24
__ptext24:	
;; *************** function _comm_parse_rx *****************
;; Defined at:
;;		line 1104 in file "main.c"
;; Parameters:    Size  Location     Type
;;  raw             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  raw             1   10[BANK0 ] unsigned char 
;;  lo              1   11[BANK0 ] unsigned char 
;;  hi              1    9[BANK0 ] unsigned char 
;;  check           1    8[BANK0 ] unsigned char 
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

;main.c: 1106: unsigned char lo;
;main.c: 1107: unsigned char hi;
;main.c: 1108: unsigned char check;
;main.c: 1110: lo = raw & 0x0F;
	movwf	comm_parse_rx@lo
	movlw	15
	andwf	comm_parse_rx@lo,f

;main.c: 1111: hi = (raw >> 4) & 0x0F;
	swapf	comm_parse_rx@raw,w
	andlw	15
	movwf	comm_parse_rx@hi
	movlw	15
	andwf	comm_parse_rx@hi,f

;main.c: 1112: check = lo + hi;
	movf	comm_parse_rx@hi,w
	addwf	comm_parse_rx@lo,w
	movwf	comm_parse_rx@check

;main.c: 1114: if(check != 0x0F)
	xorlw	15
	btfss	3,2

;main.c: 1115: return 0;
	retlw	0

;main.c: 1118: if(lo & 0x04)
	btfss	comm_parse_rx@lo,2
	goto	l1299

;main.c: 1119: g_slave_charging = 1;
	bsf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l1300
l1299:	

;main.c: 1120: else
;main.c: 1121: g_slave_charging = 0;
	bcf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
l1300:	

;main.c: 1123: if(lo & 0x01)
	btfss	comm_parse_rx@lo,0
	goto	l1301

;main.c: 1124: g_slave_chargefull = 1;
	bsf	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l1302
l1301:	

;main.c: 1125: else
;main.c: 1126: g_slave_chargefull = 0;
	bcf	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
l1302:	

;main.c: 1129: if(lo & 0x08)
	btfsc	comm_parse_rx@lo,3

;main.c: 1130: g_PwrDone = 1;
	bsf	_g_PwrDone/(0+8),_g_PwrDone& (0+7)

;main.c: 1132: return 1;
	retlw	1
__end_of_comm_parse_rx:	
	opt stack 0

	psect	text25
__ptext25:	
;; *************** function _Timer1_Isr *****************
;; Defined at:
;;		line 1583 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
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
	opt stack 1

;main.c: 1585: static unsigned char timer_ms = 0;
;main.c: 1586: static unsigned char pwm_cnt = 0;
;main.c: 1588: if(T0IF == 1)
	btfss	14,3	;volatile
	goto	i1l4889

;main.c: 1589: {
;main.c: 1590: T0IF = 0;
	bcf	14,3	;volatile

;main.c: 1591: T0 = 168;
	movlw	168
	movwf	1	;volatile
	movlw	20

;main.c: 1592: timer_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	Timer1_Isr@timer_ms^(0+128),f

;main.c: 1594: if(timer_ms >= 20)
	subwf	Timer1_Isr@timer_ms^(0+128),w
	btfss	3,0
	goto	i1l4889

;main.c: 1595: {
;main.c: 1596: timer_ms = 0;
	clrf	Timer1_Isr@timer_ms^(0+128)

;main.c: 1597: DIY_Flag1.OnrBit.b0 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,0
i1l4889:	

;main.c: 1598: }
;main.c: 1599: }
;main.c: 1601: if(B_OnOff_Flag && g_gear == 6 && !g_slave_charging && !g_slave_chargefull)
	bcf	3,5	;RP0=0, select bank0
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	i1l4907
	movlw	6
	xorwf	_g_gear,w
	btfsc	3,2
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	i1l4907
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	i1l4907
	movlw	50

;main.c: 1602: {
;main.c: 1603: pwm_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	Timer1_Isr@pwm_cnt^(0+128),f

;main.c: 1604: if(pwm_cnt >= 50) pwm_cnt = 0;
	subwf	Timer1_Isr@pwm_cnt^(0+128),w
	btfsc	3,0
	clrf	Timer1_Isr@pwm_cnt^(0+128)

;main.c: 1606: if(pwm_cnt < g_overclock_pwm)
	movf	_g_overclock_pwm^(0+128),w
	subwf	Timer1_Isr@pwm_cnt^(0+128),w

;main.c: 1607: {
;main.c: 1608: (PORTB1 = 0); (PORTB0 = 0); (PORTA7 = 0); (PORTA6 = 0); (PORTA4 = 0);
	bcf	3,5	;RP0=0, select bank0
	btfsc	3,0
	goto	L8
	fcall	PL8	;call to abstracted procedure

;main.c: 1609: }
	goto	i1l4907
L8:	
;main.c: 1610: else
;main.c: 1611: {
;main.c: 1612: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);

	fcall	PL6	;call to abstracted procedure
i1l4907:	

;main.c: 1613: }
;main.c: 1614: }
;main.c: 1616: Kcomm_ISR();
	fcall	_Kcomm_ISR

;main.c: 1617: T1IF = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	75,0	;volatile
	movf	??_Timer1_Isr+2,w
	movwf	10
	movf	??_Timer1_Isr+1,w
	movwf	4
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
	bsf	6,1	;volatile
	bsf	6,0	;volatile
	bsf	5,7	;volatile
	bsf	5,6	;volatile
	bsf	5,4	;volatile
	return
__end_ofPL6:	
	opt stack 0
PL8:	
	opt stack 2
	bcf	6,1	;volatile
	bcf	6,0	;volatile
	bcf	5,7	;volatile
	bcf	5,6	;volatile
	bcf	5,4	;volatile
	return
__end_ofPL8:	
	opt stack 0

	psect	intentry
__pintentry:	
;incstack = 0
; Regs used in _Timer1_Isr: [wreg-fsr0h+status,2+status,0+pclath+cstack]

	opt stack 1
interrupt_function:	
	opt stack 1
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
	movf	4,w
	movwf	??_Timer1_Isr+1
	movf	10,w
	movwf	??_Timer1_Isr+2
	ljmp	_Timer1_Isr

	psect	text26
__ptext26:	
;; *************** function _Kcomm_ISR *****************
;; Defined at:
;;		line 1137 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
	opt stack 1

;main.c: 1139: static unsigned char bit_wait_fall;
;main.c: 1140: kcomm_timer++;

;incstack = 0
; Regs used in _Kcomm_ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	incf	_kcomm_timer,f
	btfsc	3,2
	incf	_kcomm_timer+1,f

;main.c: 1142: if(kcomm_wakeup)
	movf	_kcomm_wakeup,w
	btfsc	3,2
	goto	i1l4551

;main.c: 1143: {
;main.c: 1144: kcomm_wakeup_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	_kcomm_wakeup_cnt^(0+128),f
	btfsc	3,2
	incf	(_kcomm_wakeup_cnt+1)^(0+128),f

;main.c: 1145: if(kcomm_wakeup_cnt == 1)
	decf	_kcomm_wakeup_cnt^(0+128),w
	iorwf	(_kcomm_wakeup_cnt+1)^(0+128),w
	btfss	3,2
	goto	i1l4541

;main.c: 1146: {
;main.c: 1147: do { TRISB6 = 0; } while(0);
	bcf	3,5	;RP0=0, select bank0
	bcf	70,6	;volatile

;main.c: 1148: PORTB6 = 1;
	bsf	6,6	;volatile
i1l4541:	

;main.c: 1149: }
;main.c: 1150: if(kcomm_wakeup_cnt >= 1000u)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_kcomm_wakeup_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_wakeup_cnt^(0+128),w
	btfss	3,0
	return

;main.c: 1151: {
;main.c: 1152: PORTB6 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	6,6	;volatile

;main.c: 1153: do { TRISB6 = 1; } while(0);
	bsf	70,6	;volatile
	movlw	195

;main.c: 1154: kcomm_wakeup = 0;
	clrf	_kcomm_wakeup

;main.c: 1155: kcomm_wakeup_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_wakeup_cnt^(0+128)
	clrf	(_kcomm_wakeup_cnt+1)^(0+128)

;main.c: 1156: kcomm_low_cnt = 0;
	clrf	_kcomm_low_cnt^(0+128)
	clrf	(_kcomm_low_cnt+1)^(0+128)

;main.c: 1157: kcomm_state = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_state

;main.c: 1158: kcomm_cycle = 195;
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_cycle^(0+128)
	return
i1l4551:	

;main.c: 1161: }
;main.c: 1164: if(kcomm_state == 0)
	movf	_kcomm_state,w
	btfss	3,2
	goto	i1l4725

;main.c: 1165: {
;main.c: 1166: kcomm_cycle++;
	bsf	3,5	;RP0=1, select bank1
	incf	_kcomm_cycle^(0+128),f

;main.c: 1168: if(!((PORTB & 0x40) ? 1 : 0))
	bcf	3,5	;RP0=0, select bank0
	btfsc	6,6	;volatile
	goto	i1l4577

;main.c: 1169: {
;main.c: 1170: if(kcomm_low_cnt < 1000)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_kcomm_low_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_low_cnt^(0+128),w
	btfsc	3,0
	goto	i1l4561

;main.c: 1171: kcomm_low_cnt++;
	incf	_kcomm_low_cnt^(0+128),f
	btfsc	3,2
	incf	(_kcomm_low_cnt+1)^(0+128),f
i1l4561:	

;main.c: 1174: if(kcomm_low_cnt >= 1000)
	movlw	3
	subwf	(_kcomm_low_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_low_cnt^(0+128),w
	btfss	3,0
	goto	i1l4579

;main.c: 1175: {
;main.c: 1176: kcomm_low_cnt = 1000;
	movlw	232
	movwf	_kcomm_low_cnt^(0+128)
	movlw	3
	movwf	(_kcomm_low_cnt^(0+128)+1)

;main.c: 1178: if(kcomm_wakeup == 0)
	bcf	3,5	;RP0=0, select bank0
	movf	_kcomm_wakeup,w
	btfss	3,2
	goto	i1l4579

;main.c: 1179: {
;main.c: 1180: if(B_OnOff_Flag || g_slave_charging || g_slave_chargefull || g_PwrDone)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	i1l1323
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	i1l1323
	btfss	_g_PwrDone/(0+8),_g_PwrDone& (0+7)
	goto	i1l4579
i1l1323:	

;main.c: 1181: {
;main.c: 1182: kcomm_wakeup = 1;
	clrf	_kcomm_wakeup
	incf	_kcomm_wakeup,f

;main.c: 1183: kcomm_wakeup_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_wakeup_cnt^(0+128)
	clrf	(_kcomm_wakeup_cnt+1)^(0+128)

;main.c: 1184: }
;main.c: 1185: }
;main.c: 1186: }
;main.c: 1187: }
	goto	i1l4579
i1l4577:	

;main.c: 1188: else
;main.c: 1189: {
;main.c: 1190: kcomm_low_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_low_cnt^(0+128)
	clrf	(_kcomm_low_cnt+1)^(0+128)
i1l4579:	

;main.c: 1191: }
;main.c: 1194: if(kcomm_cycle >= 200)
	movlw	200
	bsf	3,5	;RP0=1, select bank1
	subwf	_kcomm_cycle^(0+128),w
	btfss	3,0
	return

;main.c: 1195: {
;main.c: 1196: kcomm_cycle = 0;
	clrf	_kcomm_cycle^(0+128)

;main.c: 1198: if(kcomm_turn == 0)
	movf	_kcomm_turn^(0+128),w
	btfss	3,2
	goto	i1l4599

;main.c: 1199: {
;main.c: 1201: kcomm_tx_buf = comm_pack_tx();
	fcall	_comm_pack_tx
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_tx_buf^(0+128)

;main.c: 1202: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1203: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1204: kcomm_tx_done = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_tx_done^(0+128)
	bcf	3,5	;RP0=0, select bank0
	bcf	70,6	;volatile

;main.c: 1206: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1207: kcomm_state = 1;
	clrf	_kcomm_state
	incf	_kcomm_state,f

;main.c: 1208: }
	return
i1l4599:	

;main.c: 1209: else
;main.c: 1210: {
;main.c: 1212: kcomm_rx_buf = 0;
	clrf	_kcomm_rx_buf^(0+128)

;main.c: 1213: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1214: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1215: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done
	bcf	70,6	;volatile

;main.c: 1217: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1218: kcomm_state = 5;
	movlw	5
	movwf	_kcomm_state
	return
i1l4609:	

;main.c: 1227: if(kcomm_timer >= 20)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	20
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1334

;main.c: 1228: {
;main.c: 1229: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1230: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1231: kcomm_state = 2;
	movlw	2
	movwf	_kcomm_state

;main.c: 1232: }
	return
i1l1334:	

;main.c: 1233: else
;main.c: 1234: {
;main.c: 1235: PORTB6 = 1;
	bsf	6,6	;volatile
	return
i1l4617:	

;main.c: 1240: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1241: {
;main.c: 1242: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1243: kcomm_tx_shift = kcomm_tx_buf;
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_tx_buf^(0+128),w
	movwf	_kcomm_tx_shift^(0+128)

;main.c: 1244: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1245: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1246: kcomm_state = 3;
	movlw	3
	movwf	_kcomm_state
	return
i1l4627:	

;main.c: 1253: if(kcomm_timer >= 14)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	14
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1340
	movlw	8

;main.c: 1254: {
;main.c: 1256: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1257: kcomm_bit_idx ++;
	incf	_kcomm_bit_idx,f

;main.c: 1258: if(kcomm_bit_idx >= 8)
	subwf	_kcomm_bit_idx,w
	btfss	3,0
	goto	i1l1341

;main.c: 1259: {
;main.c: 1260: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1261: kcomm_state = 4;
	movlw	4
	movwf	_kcomm_state

;main.c: 1263: kcomm_cycle= 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_cycle^(0+128)

;main.c: 1264: }
	return
i1l1341:	

;main.c: 1265: else
;main.c: 1266: {
;main.c: 1267: kcomm_tx_shift <<= 1;
	bsf	3,5	;RP0=1, select bank1
	bcf	3,0
	rlf	_kcomm_tx_shift^(0+128),f
	return
i1l1340:	

;main.c: 1270: else
;main.c: 1271: {
;main.c: 1272: if(kcomm_tx_shift & 0x80)
	bsf	3,5	;RP0=1, select bank1
	btfss	_kcomm_tx_shift^(0+128),7
	goto	i1l4645

;main.c: 1273: {
;main.c: 1274: if(kcomm_timer <= 10)
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	11
L9:	
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1334

;main.c: 1278: else
;main.c: 1279: {
;main.c: 1280: PORTB6 = 0;
	bcf	6,6	;volatile
	return
i1l4645:	

;main.c: 1283: else
;main.c: 1284: {
;main.c: 1285: if(kcomm_timer <= 4)
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	5
	goto	L9
i1l4649:	

;main.c: 1297: if(kcomm_timer >= 20)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	20
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1298: {
;main.c: 1299: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1300: do { TRISB6 = 1; } while(0);
	bsf	70,6	;volatile

;main.c: 1301: kcomm_tx_done = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_tx_done^(0+128)
	incf	_kcomm_tx_done^(0+128),f

;main.c: 1302: kcomm_turn = 1;
	clrf	_kcomm_turn^(0+128)
	incf	_kcomm_turn^(0+128),f
i1l4653:	

;main.c: 1303: kcomm_timer = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1304: kcomm_state = 0;
	clrf	_kcomm_state
	return
i1l4655:	

;main.c: 1309: if(kcomm_timer >= 40)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	40
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1334

;main.c: 1310: {
;main.c: 1311: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1312: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1313: kcomm_state = 6;
	movlw	6
	movwf	_kcomm_state

;main.c: 1314: }
	return
i1l4663:	

;main.c: 1322: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1323: {
;main.c: 1324: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1325: bit_wait_fall = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)

;main.c: 1326: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1327: kcomm_rx_shift = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_rx_shift^(0+128)
	bcf	3,5	;RP0=0, select bank0
	bsf	70,6	;volatile

;main.c: 1329: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1330: kcomm_state = 9;
	movlw	9
	movwf	_kcomm_state
	return
i1l4673:	

;main.c: 1335: if(kcomm_timer >= ((kcomm_bit_idx == 0 && bit_wait_fall == 0) ? 400u : 60u))
	movf	_kcomm_bit_idx,w
	btfss	3,2
	goto	i1l4677
	bsf	3,5	;RP0=1, select bank1
	movf	Kcomm_ISR@bit_wait_fall^(0+128),w
	btfsc	3,2
	goto	i1l4679
i1l4677:	
	movlw	60
	bcf	3,5	;RP0=0, select bank0
	movwf	_Kcomm_ISR$626
	clrf	_Kcomm_ISR$626+1
	goto	i1l1366
i1l4679:	
	movlw	144
	bcf	3,5	;RP0=0, select bank0
	movwf	_Kcomm_ISR$626
	movlw	1
	movwf	_Kcomm_ISR$626+1
i1l1366:	
	movf	_Kcomm_ISR$626+1,w
	subwf	_kcomm_timer+1,w
	btfss	3,2
	goto	u395_25
	movf	_Kcomm_ISR$626,w
	subwf	_kcomm_timer,w
u395_25:	
	btfss	3,0
	goto	i1l4689

;main.c: 1336: {
;main.c: 1337: kcomm_rx_done = 0xFF;
	movlw	255
	movwf	_kcomm_rx_done

;main.c: 1338: kcomm_turn = 0;

;main.c: 1339: kcomm_timer = 0;
	fcall	PL10	;call to abstracted procedure
i1l4687:	

;main.c: 1340: kcomm_state = 0;
	clrf	_kcomm_state

;main.c: 1341: break;
	return
i1l4689:	

;main.c: 1342: }
;main.c: 1343: if(bit_wait_fall == 0)
	bsf	3,5	;RP0=1, select bank1
	movf	Kcomm_ISR@bit_wait_fall^(0+128),w

;main.c: 1344: {
;main.c: 1346: if(((PORTB & 0x40) ? 1 : 0))
	bcf	3,5	;RP0=0, select bank0
	btfss	3,2
	goto	L10
	btfss	6,6	;volatile
	return

;main.c: 1347: {
;main.c: 1348: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1349: bit_wait_fall = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)
	incf	Kcomm_ISR@bit_wait_fall^(0+128),f
	return
L10:	
;main.c: 1352: else
;main.c: 1353: {
;main.c: 1355: if(!((PORTB & 0x40) ? 1 : 0))

	btfsc	6,6	;volatile
	return
	movlw	0

;main.c: 1356: {
;main.c: 1357: kcomm_rx_shift <<= 1;
	bsf	3,5	;RP0=1, select bank1
	bcf	3,0
	rlf	_kcomm_rx_shift^(0+128),f

;main.c: 1358: if(kcomm_timer >= 7)
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	7
	btfsc	3,2
	subwf	_kcomm_timer,w

;main.c: 1359: kcomm_rx_shift |= 1;
	bsf	3,5	;RP0=1, select bank1
	btfsc	3,0
	bsf	_kcomm_rx_shift^(0+128),0
	movlw	8

;main.c: 1361: bit_wait_fall = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)

;main.c: 1362: kcomm_bit_idx++;
	bcf	3,5	;RP0=0, select bank0
	incf	_kcomm_bit_idx,f

;main.c: 1364: if(kcomm_bit_idx >= 8)
	subwf	_kcomm_bit_idx,w
	btfss	3,0
	return

;main.c: 1365: {
;main.c: 1366: kcomm_rx_buf = kcomm_rx_shift;
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_rx_shift^(0+128),w
	movwf	_kcomm_rx_buf^(0+128)
	movlw	10

;main.c: 1367: kcomm_rx_done = 1;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_rx_done
	incf	_kcomm_rx_done,f

;main.c: 1368: kcomm_turn = 0;
	fcall	PL10	;call to abstracted procedure

;main.c: 1370: kcomm_state = 10;
	movwf	_kcomm_state
	return
i1l4717:	

;main.c: 1376: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return
	goto	i1l4653
i1l4725:	
	movf	_kcomm_state,w

; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           19     9 (fixed)
; simple_byte           25    13 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte
	addlw	-1
	btfss	3,0
	goto	i1l4687
	movwf	4
	movlw	10
	subwf	4,w
	btfsc	3,0
	goto	i1l4687
	movlw	high i1S5783
	movwf	10
	movlw	low i1S5783
	addwf	4,w
	movwf	2
	return
__end_of_Kcomm_ISR:	
	opt stack 0
PL10:	
	opt stack 1
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_turn^(0+128)
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1
	return
__end_ofPL10:	
	opt stack 0

	psect	swtext1
__pswtext1:	
	opt stack 1
i1S5783:	
	ljmp	i1l4609
	ljmp	i1l4617
	ljmp	i1l4627
	ljmp	i1l4649
	ljmp	i1l4655
	ljmp	i1l4663
	ljmp	i1l4687
	ljmp	i1l4687
	ljmp	i1l4673
	ljmp	i1l4717

	psect	text27
__ptext27:	
;; *************** function _comm_pack_tx *****************
;; Defined at:
;;		line 1072 in file "main.c"
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
	opt stack 1

;main.c: 1074: unsigned char lo = 0;

;incstack = 0
; Regs used in _comm_pack_tx: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	clrf	comm_pack_tx@lo

;main.c: 1075: unsigned char hi;
;main.c: 1076: unsigned char result;
;main.c: 1079: if(!PORTA3)
	btfss	5,3	;volatile

;main.c: 1080: {
;main.c: 1081: lo |= 0x01;
	bsf	comm_pack_tx@lo,0

;main.c: 1082: }
;main.c: 1084: if(B_OnOff_Flag)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	i1l3857

;main.c: 1085: {
;main.c: 1086: lo |= 0x04;
	bsf	comm_pack_tx@lo,2

;main.c: 1089: if(B_LowPower_Flag)
	btfss	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
	goto	i1l3857

;main.c: 1090: lo |= 0x02;
	bsf	comm_pack_tx@lo,1
i1l3857:	

;main.c: 1091: }
;main.c: 1094: lo = lo & 0x0F;
	movlw	15
	andwf	comm_pack_tx@lo,f

;main.c: 1095: hi = lo ^ 0x0F;
	movf	comm_pack_tx@lo,w
	xorlw	15
	movwf	comm_pack_tx@hi

;main.c: 1096: result = (hi << 4) | lo;
	swapf	comm_pack_tx@hi,w
	andlw	240
	iorwf	comm_pack_tx@lo,w
	movwf	comm_pack_tx@result

;main.c: 1097: return result;
	return
__end_of_comm_pack_tx:	
	opt stack 0
btemp	set	62	;btemp
wtemp0	set	62

;!
;!Data Sizes:
;!    Strings     0
;!    Constant    7
;!    Data        2
;!    BSS         71
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            46     12      38
;!    BANK1            80     12      61
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
;!    _main->_Delay_Init
;!    _main->_fan_ramp_proc
;!    _Sleep_Func->_delay_us
;!    _ADC_Init->_delay_us
;!    _LedMode_Func->_show_gear_led
;!    _warn_flash_proc->_show_gear_led
;!    _Battery_Update->_adc_read_vdd
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
;!    _Key_Application->_Battery_Update
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
;! (0) _main                                                 0     0      0    2485
;!                           _ADC_Init
;!                     _Battery_Update
;!                       _Comm_Process
;!                         _Delay_Init
;!                          _FG_Detect
;!                      _Flag_AllClear
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
;!                                              8 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _T1_PWM_inital                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Func                                           1     1      0     548
;!                           _ADC_Init
;!                           _delay_us
;!                             _inital
;!                        _led_all_off
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
;!                                              8 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _SW_Func                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LedMode_Func                                         0     0      0     155
;!                        _led_all_off
;!                      _show_gear_led
;! ---------------------------------------------------------------------------------
;! (1) _Key_Func                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Key_Application                                      3     3      0     619
;!                                              2 BANK1      3     3      0
;!                     _Battery_Update
;!                        _led_all_off
;!                            _set_fan
;!                      _show_gear_led
;!                       _trigger_warn
;!                    _warn_flash_proc
;! ---------------------------------------------------------------------------------
;! (2) _warn_flash_proc                                      0     0      0     155
;!                        _led_all_off
;!                      _show_gear_led
;! ---------------------------------------------------------------------------------
;! (2) _show_gear_led                                        1     1      0     155
;!                                              8 BANK0      1     1      0
;!                        _led_all_off
;! ---------------------------------------------------------------------------------
;! (2) _trigger_warn                                         1     1      0      31
;!                                              8 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _set_fan                                              1     1      0      96
;!                                              8 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Battery_Update                                       2     2      0      40
;!                                              0 BANK1      2     2      0
;!                       _adc_read_vdd
;! ---------------------------------------------------------------------------------
;! (3) _adc_read_vdd                                         4     2      2      40
;!                                              8 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _Flag_AllClear                                        0     0      0       0
;!                        _led_all_off
;! ---------------------------------------------------------------------------------
;! (2) _led_all_off                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _FG_Detect                                            3     3      0     113
;!                                              8 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _Delay_Init                                           4     2      2      89
;!                                              8 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _Comm_Process                                         1     1      0     297
;!                                              0 BANK1      1     1      0
;!                      _comm_parse_rx
;! ---------------------------------------------------------------------------------
;! (2) _comm_parse_rx                                        4     4      0     263
;!                                              8 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Timer1_Isr                                           3     3      0     119
;!                                              5 BANK0      3     3      0
;!                          _Kcomm_ISR
;! ---------------------------------------------------------------------------------
;! (6) _Kcomm_ISR                                            2     2      0     119
;!                                              3 BANK0      2     2      0
;!                       _comm_pack_tx
;! ---------------------------------------------------------------------------------
;! (7) _comm_pack_tx                                         3     3      0      95
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
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
;!   _FG_Detect
;!   _Flag_AllClear
;!     _led_all_off
;!   _Key_Application
;!     _Battery_Update
;!       _adc_read_vdd
;!     _led_all_off
;!     _set_fan
;!     _show_gear_led
;!       _led_all_off
;!     _trigger_warn
;!     _warn_flash_proc
;!       _led_all_off
;!       _show_gear_led
;!         _led_all_off
;!   _Key_Func
;!   _LedMode_Func
;!     _led_all_off
;!     _show_gear_led
;!       _led_all_off
;!   _SW_Func
;!   _Sleep_Func
;!     _ADC_Init
;!       _delay_us
;!     _delay_us
;!     _inital
;!     _led_all_off
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
;!BITBANK0            2E      0       2       3        4.3%
;!BANK0               2E      C      26       4       82.6%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      C      3D       6       76.3%
;!ABS                  0      0      63       7        0.0%
;!DATA                 0      0      63       8        0.0%
