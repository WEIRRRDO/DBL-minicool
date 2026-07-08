	global	?_adc_read_vdd
	global	Battery_Update@adc_val
	global	Battery_Update@loop_max
	global	Battery_Update@loop_min
	global	Battery_Update@loop_num
	global	Battery_Update@loop_sum
	global	Battery_Update@low_clr_debounce
	global	Battery_Update@low_debounce
	global	Battery_Update@startup_cnt
	global	Comm_Process@rx_ok
	global	Delay_Init@Delay_Duty
	global	Delay_Init@i
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
	global	LedMode_Func@disp_level
	global	LedMode_Func@lv_debounce
	global	PL10
	global	PL12
	global	PL14
	global	PL16
	global	PL18
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
	global	_FSR
	global	_Flag_AllClear
	signat	_Flag_AllClear,89
	global	_GIE
	global	_INDF
	global	_INTECON
	global	_INTEDG
	global	_IOCA
	global	_IOCB
	global	_Kcomm_ISR
	signat	_Kcomm_ISR,89
	FNCALL	_Kcomm_ISR,_comm_pack_tx
	global	_Kcomm_ISR$624
	global	_Key_Application
	signat	_Key_Application,89
	FNCALL	_Key_Application,_Battery_Update
	FNCALL	_Key_Application,_set_fan
	FNCALL	_Key_Application,_show_gear_led
	FNCALL	_Key_Application,_trigger_warn
	FNCALL	_Key_Application,_warn_flash_proc
	global	_Key_Application$609
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
	global	__end_ofPL10
	global	__end_ofPL12
	global	__end_ofPL14
	global	__end_ofPL16
	global	__end_ofPL18
	global	__end_ofPL2
	global	__end_ofPL4
	global	__end_ofPL6
	global	__end_ofPL8
	global	__end_of_ADC_Init
	global	__end_of_Battery_Update
	global	__end_of_Comm_Process
	global	__end_of_Delay_Init
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
	global	__pdataBANK1
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
	global	_g_offshow_flag
	global	_g_offshow_ms
	global	_g_overclock_pwm
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
	global	_level
	global	_main
	signat	_main,89
	FNROOT	_main
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_Battery_Update
	FNCALL	_main,_Comm_Process
	FNCALL	_main,_Delay_Init
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
	global	adc_read_vdd@ad_delay
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
	psect	idataBANK1,global,class=CODE,delta=2
	psect	strings,global,class=STRING,delta=2
	psect	cinit,global,class=CODE,merge=1,delta=2
	psect	bitbssBANK0,global,bit,class=BANK0,space=1
	psect	bssBANK0,global,class=BANK0,space=1
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
	psect	intentry,global,class=CODE,delta=2
	psect	text24,local,class=CODE,merge=1,delta=2
	psect	swtext1,local,class=CONST,delta=2
	psect	text25,local,class=CODE,merge=1,delta=2
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

	psect	idataBANK1
__pidataBANK1:	
	opt stack 0
	file	"main.c"

;initializer for Battery_Update@startup_cnt
	retlw	50

;initializer for LedMode_Func@breath_dir
	retlw	1

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
	retlw	31
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
_g_offshow_flag:	
	opt stack 0
	ds	1
_g_warn_blink:	
	opt stack 0
	ds	1
_B_KEYHX_Flag:	
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
_g_vdd_adc:	
	opt stack 0
	ds	2
_g_current_pwm:	
	opt stack 0
	ds	2
_g_k2_hold_ms:	
	opt stack 0
	ds	2
_g_k1_hold_ms:	
	opt stack 0
	ds	2
_kcomm_timer:	
	opt stack 0
	ds	2
LedMode_Func@disp_level:	
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

	psect	bssBANK1
__pbssBANK1:	
	opt stack 0
Battery_Update@loop_sum:	
	opt stack 0
	ds	2
Battery_Update@loop_max:	
	opt stack 0
	ds	2
Battery_Update@loop_min:	
	opt stack 0
	ds	2
Sleep_Func@Sleep_Time:	
	opt stack 0
	ds	2
_g_slave_alive_ms:	
	opt stack 0
	ds	2
_g_offshow_ms:	
	opt stack 0
	ds	2
_g_pwr_delay_ms:	
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
Battery_Update@loop_num:	
	opt stack 0
	ds	1
Battery_Update@low_clr_debounce:	
	opt stack 0
	ds	1
Battery_Update@low_debounce:	
	opt stack 0
	ds	1
LedMode_Func@lv_debounce:	
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
_g_k2_prev:	
	opt stack 0
	ds	1
_g_target_pwm:	
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
	file	"main.c"
Battery_Update@startup_cnt:	
	opt stack 0
	ds	1
LedMode_Func@breath_dir:	
	opt stack 0
	ds	1

	psect	cstackBANK1
__pcstackBANK1:	
	opt stack 0
Comm_Process@rx_ok:	
	opt stack 0
_sysinitial$240:	
; 1 bytes @ 0x0

	opt stack 0
adc_read_vdd@ad_delay:	
; 2 bytes @ 0x0

	opt stack 0

; 2 bytes @ 0x0
	ds	2
_sysinitial$241:	
	opt stack 0
adc_read_vdd@result:	
; 2 bytes @ 0x2

	opt stack 0

; 2 bytes @ 0x2
	ds	2
_Key_Application$609:	
	opt stack 0
_sysinitial$242:	
; 1 bytes @ 0x4

	opt stack 0

; 2 bytes @ 0x4
	ds	1
Key_Application@edge:	
	opt stack 0

; 1 bytes @ 0x5
	ds	1
Key_Application@cur:	
	opt stack 0
_sysinitial$243:	
; 1 bytes @ 0x6

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

??_Battery_Update:	
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
_Kcomm_ISR$624:	
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

; 2 bytes @ 0x8
	ds	1
comm_parse_rx@hi:	
	opt stack 0

; 1 bytes @ 0x9
	ds	1
comm_parse_rx@raw:	
	opt stack 0
Delay_Init@i:	
; 1 bytes @ 0xA

	opt stack 0
delay_us@i:	
; 2 bytes @ 0xA

	opt stack 0
Battery_Update@adc_val:	
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
;;		line 1453 in file "main.c"
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
	opt stack 2

;main.c: 1455: ramInitial();

;incstack = 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_ramInitial

;main.c: 1456: inital();
	fcall	_inital

;main.c: 1457: Delay_Init(200);
	movlw	200
	movwf	Delay_Init@Delay_Duty
	clrf	Delay_Init@Delay_Duty+1
	fcall	_Delay_Init

;main.c: 1458: ADC_Init();
	fcall	_ADC_Init

;main.c: 1459: T1_PWM_inital();
	fcall	_T1_PWM_inital

;main.c: 1460: sysinitial();
	fcall	_sysinitial

;main.c: 1461: WDTEN = 1;
	bsf	65,7	;volatile

;main.c: 1463: Flag_AllClear();
	fcall	_Flag_AllClear

;main.c: 1464: set_fan(0);
	movlw	0
	fcall	_set_fan
l5742:	

;main.c: 1466: {
;main.c: 1467: T0IE = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	14,0	;volatile

;main.c: 1468: GIE = 1;
	bsf	14,7	;volatile

;main.c: 1469: if(DIY_Flag1.OnrBit.b0)
	btfss	_DIY_Flag1,0
	goto	l5742

;main.c: 1470: {
;main.c: 1471: DIY_Flag1.OnrBit.b0 = 0;
	bcf	_DIY_Flag1,0
	clrwdt	;# 

;main.c: 1477: Comm_Process();
	fcall	_Comm_Process

;main.c: 1478: if(g_slave_alive_ms > 0)
	bsf	3,5	;RP0=1, select bank1
	movf	_g_slave_alive_ms^(0+128),w
	iorwf	(_g_slave_alive_ms+1)^(0+128),w
	btfsc	3,2
	goto	l1405

;main.c: 1479: {
;main.c: 1480: g_slave_alive_ms--;
	movlw	1
	subwf	_g_slave_alive_ms^(0+128),f
	movlw	0
	btfss	3,0
	decf	(_g_slave_alive_ms+1)^(0+128),f
	subwf	(_g_slave_alive_ms+1)^(0+128),f

;main.c: 1481: }
	goto	l5764
l1405:	

;main.c: 1482: else
;main.c: 1483: {
;main.c: 1484: if(g_slave_charging || g_slave_chargefull)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l5758
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5760
l5758:	

;main.c: 1485: {
;main.c: 1487: g_gear = 0;
	clrf	_g_gear

;main.c: 1488: g_warn_flash = 0;
	clrf	_g_warn_flash
l5760:	

;main.c: 1489: }
;main.c: 1491: g_slave_charging = 0;
	bcf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)

;main.c: 1492: g_slave_chargefull = 0;
	bcf	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
l5764:	

;main.c: 1493: }
;main.c: 1495: Battery_Update();
	fcall	_Battery_Update

;main.c: 1496: Key_Func();
	fcall	_Key_Func

;main.c: 1497: SW_Func();
	fcall	_SW_Func

;main.c: 1498: Key_Application();
	fcall	_Key_Application

;main.c: 1499: fan_ramp_proc();
	fcall	_fan_ramp_proc

;main.c: 1500: LedMode_Func();
	fcall	_LedMode_Func

;main.c: 1501: Sleep_Func();
	fcall	_Sleep_Func
	goto	l5742
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
l3902:	

;inital.c: 72: INDF=0;
	clrf	0	;volatile

;inital.c: 73: FSR--;
	decf	4,f	;volatile

;inital.c: 74: }while(FSR != 0x0f);
	movlw	15
	xorwf	4,w	;volatile
	btfss	3,2
	goto	l3902

;inital.c: 76: FSR=0Xdf;
	movlw	223
	movwf	4	;volatile
l3910:	

;inital.c: 78: INDF=0;
	clrf	0	;volatile

;inital.c: 79: FSR--;
	decf	4,f	;volatile

;inital.c: 80: }while(FSR != 0x8f);
	movlw	143
	xorwf	4,w	;volatile
	btfsc	3,2
	return
	goto	l3910
__end_of_ramInitial:	
	opt stack 0

	psect	text2
	file	"main.c"
__ptext2:	
;; *************** function _fan_ramp_proc *****************
;; Defined at:
;;		line 661 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  target_fixed    2   10[BANK0 ] unsigned int 
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

;main.c: 663: unsigned int target_fixed = (unsigned int)g_target_pwm << 4;

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

;main.c: 665: if(g_current_pwm < target_fixed)
	movf	fan_ramp_proc@target_fixed+1,w
	subwf	_g_current_pwm+1,w
	btfss	3,2
	goto	u3155
	movf	fan_ramp_proc@target_fixed,w
	subwf	_g_current_pwm,w
u3155:	
	btfsc	3,0
	goto	l4192

;main.c: 666: {
;main.c: 667: g_current_pwm += 1;
	incf	_g_current_pwm,f
	btfsc	3,2
	incf	_g_current_pwm+1,f

;main.c: 668: if(g_current_pwm > target_fixed) g_current_pwm = target_fixed;
	movf	_g_current_pwm+1,w
	subwf	fan_ramp_proc@target_fixed+1,w
	btfss	3,2
	goto	u3185
	movf	_g_current_pwm,w
	subwf	fan_ramp_proc@target_fixed,w
	goto	u3185
l4192:	

;main.c: 670: else if(g_current_pwm > target_fixed)
	movf	_g_current_pwm+1,w
	subwf	fan_ramp_proc@target_fixed+1,w
	btfss	3,2
	goto	u3175
	movf	_g_current_pwm,w
	subwf	fan_ramp_proc@target_fixed,w
u3175:	
	btfsc	3,0
	goto	l4198

;main.c: 671: {
;main.c: 672: g_current_pwm -= 1;
	movlw	1
	subwf	_g_current_pwm,f
	btfss	3,0
	decf	_g_current_pwm+1,f

;main.c: 673: if(g_current_pwm < target_fixed) g_current_pwm = target_fixed;
	movf	fan_ramp_proc@target_fixed+1,w
	subwf	_g_current_pwm+1,w
	btfss	3,2
	goto	u3185
	movf	fan_ramp_proc@target_fixed,w
	subwf	_g_current_pwm,w
u3185:	
	btfsc	3,0
	goto	l4198
	movf	fan_ramp_proc@target_fixed+1,w
	movwf	_g_current_pwm+1
	movf	fan_ramp_proc@target_fixed,w
	movwf	_g_current_pwm
l4198:	

;main.c: 674: }
;main.c: 676: PWM0P = (unsigned char)(g_current_pwm >> 4);
	movf	_g_current_pwm+1,w
	movwf	??_fan_ramp_proc+1
	movf	_g_current_pwm,w
	movwf	??_fan_ramp_proc
	movlw	4
u3195:	
	bcf	3,0
	rrf	??_fan_ramp_proc+1,f
	rrf	??_fan_ramp_proc,f
	addlw	-1
	btfss	3,2
	goto	u3195
	movf	??_fan_ramp_proc,w
	movwf	79	;volatile

;main.c: 677: if(PWM0P == 0) PORTB2 = 0;
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
;;		line 234 in file "main.c"
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

;main.c: 236: static unsigned int Sleep_Time = 0;
;main.c: 239: if(B_OnOff_Flag || B_KEYHX_Flag || g_slave_charging || g_slave_chargefull || g_offshow_flag || kcomm_wakeup)

;incstack = 0
; Regs used in _Sleep_Func: [wreg+status,2+status,0+pclath+cstack]
	bcf	3,5	;RP0=0, select bank0
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	btfsc	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
	goto	l5176
	btfss	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5176
	btfsc	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)
	goto	l5176
	movf	_kcomm_wakeup,w
	btfsc	3,2
	goto	l5178
l5176:	

;main.c: 240: {
;main.c: 241: Sleep_Time = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)
l5178:	

;main.c: 242: }
;main.c: 243: Sleep_Time++;
	bsf	3,5	;RP0=1, select bank1
	incf	Sleep_Func@Sleep_Time^(0+128),f
	btfsc	3,2
	incf	(Sleep_Func@Sleep_Time+1)^(0+128),f

;main.c: 244: if(Sleep_Time >= 1000)
	movlw	3
	subwf	(Sleep_Func@Sleep_Time+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	Sleep_Func@Sleep_Time^(0+128),w
	btfss	3,0
	return

;main.c: 245: {
;main.c: 246: Sleep_Time = 0;
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)

;main.c: 247: (PORTB1 = 1);
	bcf	3,5	;RP0=0, select bank0

;main.c: 248: (PORTB0 = 1);

;main.c: 249: (PORTA7 = 1);

;main.c: 250: (PORTA6 = 1);

;main.c: 251: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 253: GIE = 0;
	bcf	14,7	;volatile

;main.c: 254: T0IE = 0;
	bcf	14,0	;volatile

;main.c: 255: T1IE = 0;
	bcf	75,1	;volatile

;main.c: 256: T2IE = 0;
	bcf	75,6	;volatile

;main.c: 257: INTECON = 0;
	clrf	14	;volatile

;main.c: 258: PIR = 0;
	clrf	15	;volatile

;main.c: 260: ADCON0 = 0;
	clrf	90	;volatile

;main.c: 261: ADCON1 = 0;
	clrf	91	;volatile

;main.c: 262: ANSELL = 0;
	clrf	86	;volatile

;main.c: 263: ANSELH = 0;
	clrf	87	;volatile

;main.c: 266: TRISA = 0x0E;
	movlw	14
	movwf	69	;volatile

;main.c: 267: TRISB = 0x48;
	movlw	72

;main.c: 269: PHCON1 = 0xF1;

;main.c: 270: PHCON = 0xFF;

;main.c: 271: PDCON1 = 0xFF;

;main.c: 272: PDCON = 0xBF;
	fcall	PL4	;call to abstracted procedure

;main.c: 274: delay_us(1000);
	movlw	232
	movwf	delay_us@us
	movlw	3
	movwf	delay_us@us+1
	fcall	_delay_us

;main.c: 276: BOREN = 0;
	bcf	75,2	;volatile

;main.c: 277: WDTEN = 0;
	bcf	65,7	;volatile

;main.c: 280: IOCA = 0x0E;
	movlw	14
	movwf	7	;volatile

;main.c: 281: IOCB = 0x40;
	movlw	64
	movwf	9	;volatile

;main.c: 283: unsigned char temp;
;main.c: 284: temp = PORTA;
	movf	5,w	;volatile

;main.c: 285: temp = PORTB;
	movf	6,w	;volatile

;main.c: 288: PAIF = 0;
	bcf	15,0	;volatile

;main.c: 289: PBIF = 0;
	bcf	14,4	;volatile

;main.c: 290: PAIE = 1;
	bsf	15,1	;volatile

;main.c: 291: PBIE = 1;
	bsf	14,1	;volatile
	clrwdt	;# 
	nop	;# 
	sleep	;# 
	nop	;# 

;main.c: 300: WDTEN = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	65,7	;volatile

;main.c: 301: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 304: if(((PORTB & 0x40) ? 1 : 0))
	btfss	6,6	;volatile
	goto	l5250
	movlw	184

;main.c: 305: {
;main.c: 307: g_slave_charging = 1;
	bsf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)

;main.c: 308: g_slave_alive_ms = 3000;
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_slave_alive_ms^(0+128)
	movlw	11
	movwf	(_g_slave_alive_ms^(0+128)+1)
l1031:	
;main.c: 311: while(((PORTB & 0x40) ? 1 : 0))

	bcf	3,5	;RP0=0, select bank0
	btfss	6,6	;volatile
	goto	l5246
	clrwdt	;# 
	goto	l1031
l5246:	

;main.c: 316: }
;main.c: 319: kcomm_cycle = 195;
	movlw	195
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_cycle^(0+128)

;main.c: 320: kcomm_wakeup = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_wakeup
l5250:	

;main.c: 321: }
;main.c: 323: temp = PORTA;
	movf	5,w	;volatile

;main.c: 324: temp = PORTB;
	movf	6,w	;volatile

;main.c: 326: PAIF = 0;
	bcf	15,0	;volatile

;main.c: 327: PBIF = 0;
	bcf	14,4	;volatile

;main.c: 328: PAIE = 0;
	bcf	15,1	;volatile

;main.c: 329: PBIE = 0;
	bcf	14,1	;volatile

;main.c: 331: if(!PORTA2 || !PORTA1)
	btfsc	5,2	;volatile
	btfss	5,1	;volatile

;main.c: 332: {
;main.c: 333: B_KEYHX_Flag = 1;
	bsf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)

;main.c: 334: }
;main.c: 335: inital();
	fcall	_inital

;main.c: 336: sysinitial();
	fcall	_sysinitial

;main.c: 337: ADC_Init();
	fcall	_ADC_Init

;main.c: 338: BOREN = 1;
	bsf	75,2	;volatile

;main.c: 339: Sleep_Time = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Sleep_Func@Sleep_Time^(0+128)
	clrf	(Sleep_Func@Sleep_Time+1)^(0+128)

;main.c: 340: DIY_Flag1.OnrBit.b0 = 0;
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
;;		line 348 in file "main.c"
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

;main.c: 350: ANSELL=0X20;

;incstack = 0
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	movlw	32
	movwf	86	;volatile

;main.c: 351: ANSELH=0X00;
	clrf	87	;volatile

;main.c: 352: ADCON0=0X15;
	movlw	21
	movwf	90	;volatile

;main.c: 353: adcon1_val = 0X08;
	movlw	8
	movwf	_adcon1_val

;main.c: 354: ADCON1 = adcon1_val;
	movwf	91	;volatile

;main.c: 355: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 356: delay_us(100);
	movlw	100
	movwf	delay_us@us
	clrf	delay_us@us+1
	ljmp	l3588
__end_of_ADC_Init:	
	opt stack 0

	psect	text8
__ptext8:	
;; *************** function _delay_us *****************
;; Defined at:
;;		line 218 in file "main.c"
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
l3588:	
;main.c: 220: unsigned int i;
;main.c: 222: while(us--)

;incstack = 0
; Regs used in _delay_us: [wreg+status,2+status,0]

	movlw	1
	subwf	delay_us@us,f
	movlw	0
	btfss	3,0
	decf	delay_us@us+1,f
	subwf	delay_us@us+1,f
	incfsz	delay_us@us,w
	goto	l3578
	incf	delay_us@us+1,w
	btfsc	3,2
	return
l3578:	

;main.c: 223: {
;main.c: 225: for(i = 0; i < 4; i++)
	clrf	delay_us@i
	clrf	delay_us@i+1
l1018:	
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
	goto	l3588
	goto	l1018
__end_of_delay_us:	
	opt stack 0

	psect	text9
__ptext9:	
;; *************** function _SW_Func *****************
;; Defined at:
;;		line 789 in file "main.c"
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

;main.c: 791: static unsigned char sw_time1 = 0;
;main.c: 792: static unsigned char sw_time2 = 0;
;main.c: 794: if(PORTA3)

;incstack = 0
; Regs used in _SW_Func: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	btfss	5,3	;volatile
	goto	l4262
	movlw	20

;main.c: 795: {
;main.c: 797: sw_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	SW_Func@sw_time2^(0+128)

;main.c: 798: sw_time1 ++;
	incf	SW_Func@sw_time1^(0+128),f

;main.c: 799: if(sw_time1 >= 20)
	subwf	SW_Func@sw_time1^(0+128),w
	btfss	3,0
	return

;main.c: 800: {
;main.c: 801: sw_time1 = 0;
	clrf	SW_Func@sw_time1^(0+128)

;main.c: 802: B_OnOff_Flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
l4260:	

;main.c: 803: B_KEYHX_Flag = 0;
	bcf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
	return
l4262:	
	movlw	20

;main.c: 806: else
;main.c: 807: {
;main.c: 809: sw_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	SW_Func@sw_time1^(0+128)

;main.c: 810: sw_time2 ++;
	incf	SW_Func@sw_time2^(0+128),f

;main.c: 811: if(sw_time2 >= 20)
	subwf	SW_Func@sw_time2^(0+128),w
	btfss	3,0
	return

;main.c: 812: {
;main.c: 813: sw_time2 = 0;
	clrf	SW_Func@sw_time2^(0+128)

;main.c: 814: B_OnOff_Flag = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l4260
__end_of_SW_Func:	
	opt stack 0

	psect	text10
__ptext10:	
;; *************** function _LedMode_Func *****************
;; Defined at:
;;		line 388 in file "main.c"
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

;main.c: 391: static unsigned char chg_pwm_cnt = 0;
;main.c: 392: static unsigned char breath_duty = 0;
;main.c: 393: static unsigned char breath_dir = 1;
;main.c: 394: static unsigned char breath_cnt = 0;
;main.c: 395: static unsigned char disp_level = 0;
;main.c: 396: static unsigned char lv_debounce = 0;
;main.c: 399: if(g_battery_empty)

;incstack = 0
; Regs used in _LedMode_Func: [wreg+status,2+status,0+pclath+cstack]
	movf	_g_battery_empty,w
	btfsc	3,2
	goto	l5278
l5276:	

;main.c: 400: {
;main.c: 401: (PORTB1 = 1);

;main.c: 402: (PORTB0 = 1);

;main.c: 403: (PORTA7 = 1);

;main.c: 404: (PORTA6 = 1);

;main.c: 405: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 406: return;
	return
l5278:	

;main.c: 407: }
;main.c: 409: if(disp_level != level)
	movf	LedMode_Func@disp_level,w
	xorwf	_level,w
	btfsc	3,2
	goto	l5288

;main.c: 410: {
;main.c: 411: if(lv_debounce < 3) lv_debounce++;
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	LedMode_Func@lv_debounce^(0+128),w
	btfss	3,0
	incf	LedMode_Func@lv_debounce^(0+128),f

;main.c: 412: if(lv_debounce >= 3) disp_level = level;
	movlw	3
	subwf	LedMode_Func@lv_debounce^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L1
	movf	_level,w
	movwf	LedMode_Func@disp_level
	goto	l5290
l5288:	

;main.c: 414: else
;main.c: 415: {
;main.c: 416: lv_debounce = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@lv_debounce^(0+128)
l5290:	

;main.c: 417: }
;main.c: 419: if((g_slave_charging || g_slave_chargefull) && !B_OnOff_Flag)
	bcf	3,5	;RP0=0, select bank0
L1:	
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l1070
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l1068
l1070:	
	btfsc	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l1068
	movlw	50

;main.c: 420: {
;main.c: 422: breath_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	LedMode_Func@breath_cnt^(0+128),f

;main.c: 423: if(breath_cnt >= 50)
	subwf	LedMode_Func@breath_cnt^(0+128),w
	btfss	3,0
	goto	l5312

;main.c: 424: {
;main.c: 425: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 426: if(breath_dir)
	movf	LedMode_Func@breath_dir^(0+128),w
	btfsc	3,2
	goto	l5308

;main.c: 427: {
;main.c: 428: if(breath_duty < 20) breath_duty++;
	movlw	20
	bcf	3,5	;RP0=0, select bank0
	subwf	LedMode_Func@breath_duty,w
	btfsc	3,0
	goto	l5306
	incf	LedMode_Func@breath_duty,f
	goto	l5312
l5306:	

;main.c: 429: else breath_dir = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_dir^(0+128)
	goto	l5312
l5308:	

;main.c: 431: else
;main.c: 432: {
;main.c: 433: if(breath_duty > 0) breath_duty--;
	bcf	3,5	;RP0=0, select bank0
	movf	LedMode_Func@breath_duty,w
	btfsc	3,2
	goto	l1076
	decf	LedMode_Func@breath_duty,f
	goto	l5312
l1076:	

;main.c: 434: else breath_dir = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_dir^(0+128)
	incf	LedMode_Func@breath_dir^(0+128),f
l5312:	
	movlw	20

;main.c: 435: }
;main.c: 436: }
;main.c: 439: chg_pwm_cnt++;
	bcf	3,5	;RP0=0, select bank0
	incf	LedMode_Func@chg_pwm_cnt,f

;main.c: 440: if(chg_pwm_cnt >= 20)
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfsc	3,0

;main.c: 441: chg_pwm_cnt = 0;
	clrf	LedMode_Func@chg_pwm_cnt

;main.c: 443: if(g_slave_chargefull)
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5328

;main.c: 444: {
;main.c: 446: (PORTB1 = 0); (PORTB0 = 0); (PORTA7 = 0); (PORTA6 = 0); (PORTA4 = 0);
	fcall	PL16	;call to abstracted procedure

;main.c: 447: breath_duty = 20;
	movlw	20
	movwf	LedMode_Func@breath_duty

;main.c: 448: breath_dir = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_dir^(0+128)

;main.c: 449: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 450: }
	return
l5328:	

;main.c: 451: else
;main.c: 452: {
;main.c: 458: if(disp_level >= 2) { (PORTA4 = 0); }
	movlw	2
	subwf	LedMode_Func@disp_level,w
	btfss	3,0
	goto	l5332
l5330:	
	bcf	5,4	;volatile
	goto	l5338
l5332:	

;main.c: 459: else if(disp_level == 1) { if(chg_pwm_cnt < breath_duty) (PORTA4 = 0); else (PORTA4 = 1); }
	decfsz	LedMode_Func@disp_level,w
	goto	l1084
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5330
l1084:	
	bsf	5,4	;volatile
l5338:	

;main.c: 463: if(disp_level >= 3) { (PORTA6 = 0); }
	movlw	3
	subwf	LedMode_Func@disp_level,w
	btfss	3,0
	goto	l5342
l5340:	
	bcf	5,6	;volatile
	goto	l5348
l5342:	

;main.c: 464: else if(disp_level == 2) { if(chg_pwm_cnt < breath_duty) (PORTA6 = 0); else (PORTA6 = 1); }
	movlw	2
	xorwf	LedMode_Func@disp_level,w
	btfss	3,2
	goto	l1090
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5340
l1090:	
	bsf	5,6	;volatile
l5348:	

;main.c: 468: if(disp_level >= 4) { (PORTA7 = 0); }
	movlw	4
	subwf	LedMode_Func@disp_level,w
	btfss	3,0
	goto	l5352
l5350:	
	bcf	5,7	;volatile
	goto	l5358
l5352:	

;main.c: 469: else if(disp_level == 3) { if(chg_pwm_cnt < breath_duty) (PORTA7 = 0); else (PORTA7 = 1); }
	movlw	3
	xorwf	LedMode_Func@disp_level,w
	btfss	3,2
	goto	l1096
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5350
l1096:	
	bsf	5,7	;volatile
l5358:	

;main.c: 473: if(disp_level >= 5) { (PORTB0 = 0); }
	movlw	5
	subwf	LedMode_Func@disp_level,w
	btfss	3,0
	goto	l5362
l5360:	
	bcf	6,0	;volatile
	goto	l5368
l5362:	

;main.c: 474: else if(disp_level == 4) { if(chg_pwm_cnt < breath_duty) (PORTB0 = 0); else (PORTB0 = 1); }
	movlw	4
	xorwf	LedMode_Func@disp_level,w
	btfss	3,2
	goto	l1102
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfss	3,0
	goto	l5360
l1102:	
	bsf	6,0	;volatile
l5368:	

;main.c: 478: if(disp_level >= 6) { (PORTB1 = 0); }
	movlw	6
	subwf	LedMode_Func@disp_level,w
	btfsc	3,0
	goto	l5370
	goto	l5372
l5374:	
	movf	LedMode_Func@breath_duty,w
	subwf	LedMode_Func@chg_pwm_cnt,w
	btfsc	3,0
	goto	l1108
l5370:	
	bcf	6,1	;volatile
	return
l5372:	

;main.c: 479: else if(disp_level == 5) { if(chg_pwm_cnt < breath_duty) (PORTB1 = 0); else (PORTB1 = 1); }
	movlw	5
	xorwf	LedMode_Func@disp_level,w
	btfsc	3,2
	goto	l5374
l1108:	
	bsf	6,1	;volatile
	return
l1068:	

;main.c: 483: }
;main.c: 486: if(B_OnOff_Flag && g_gear == 6)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l1111
	movlw	6
	xorwf	_g_gear,w
	btfss	3,2
	goto	l1111
	movlw	20

;main.c: 487: {
;main.c: 488: breath_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	LedMode_Func@breath_cnt^(0+128),f

;main.c: 489: if(breath_cnt >= 20)
	subwf	LedMode_Func@breath_cnt^(0+128),w
	btfss	3,0
	return

;main.c: 490: {
;main.c: 491: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 492: if(breath_dir)
	movf	LedMode_Func@breath_dir^(0+128),w
	btfsc	3,2
	goto	l5394

;main.c: 493: {
;main.c: 494: if(breath_duty < 50) breath_duty++;
	movlw	50
	bcf	3,5	;RP0=0, select bank0
	subwf	LedMode_Func@breath_duty,w
	btfsc	3,0
	goto	l5392
	incf	LedMode_Func@breath_duty,f
	goto	l5398
l5392:	

;main.c: 495: else breath_dir = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_dir^(0+128)
	goto	l5398
l5394:	

;main.c: 497: else
;main.c: 498: {
;main.c: 499: if(breath_duty > 0) breath_duty--;
	bcf	3,5	;RP0=0, select bank0
	movf	LedMode_Func@breath_duty,w
	btfsc	3,2
	goto	l1117
	decf	LedMode_Func@breath_duty,f
	goto	l5398
l1117:	

;main.c: 500: else breath_dir = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_dir^(0+128)
	incf	LedMode_Func@breath_dir^(0+128),f
l5398:	

;main.c: 501: }
;main.c: 502: g_overclock_pwm = breath_duty;
	bcf	3,5	;RP0=0, select bank0
	movf	LedMode_Func@breath_duty,w
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_overclock_pwm^(0+128)
	return
l1111:	

;main.c: 505: }
;main.c: 508: if(!g_slave_charging && !g_slave_chargefull && g_gear != 6)
	btfss	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5410
	movlw	6
	xorwf	_g_gear,w
	btfsc	3,2
	goto	l5410

;main.c: 509: {
;main.c: 510: breath_duty = 0;
	clrf	LedMode_Func@breath_duty

;main.c: 511: breath_dir = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	LedMode_Func@breath_dir^(0+128)
	incf	LedMode_Func@breath_dir^(0+128),f

;main.c: 512: breath_cnt = 0;
	clrf	LedMode_Func@breath_cnt^(0+128)

;main.c: 513: chg_pwm_cnt = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	LedMode_Func@chg_pwm_cnt
l5410:	

;main.c: 514: }
;main.c: 517: if(!B_OnOff_Flag && g_offshow_flag)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	btfss	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)
	goto	l1120

;main.c: 518: {
;main.c: 519: show_gear_led(level);
	movf	_level,w
	ljmp	_show_gear_led
l1120:	

;main.c: 521: }
;main.c: 524: if(B_OnOff_Flag && g_warn_flash > 0)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l1121
	movf	_g_warn_flash,w
	btfss	3,2
	return
l1121:	

;main.c: 528: if(B_OnOff_Flag)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l5276

;main.c: 529: {
;main.c: 530: show_gear_led(g_gear);
	movf	_g_gear,w
	ljmp	_show_gear_led
__end_of_LedMode_Func:	
	opt stack 0

	psect	text11
__ptext11:	
;; *************** function _Key_Func *****************
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

;psect for function _Key_Func

_Key_Func:	
	opt stack 4

;main.c: 739: static unsigned char key1_time1 = 0;
;main.c: 740: static unsigned char key1_time2 = 0;
;main.c: 741: static unsigned char key2_time1 = 0;
;main.c: 742: static unsigned char key2_time2 = 0;
;main.c: 744: if(!PORTA2)

;incstack = 0
; Regs used in _Key_Func: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	btfsc	5,2	;volatile
	goto	l4216
	movlw	10

;main.c: 745: {
;main.c: 746: key1_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key1_time2^(0+128)

;main.c: 747: key1_time1 ++;
	incf	Key_Func@key1_time1^(0+128),f

;main.c: 748: if(key1_time1 >= 10)
	subwf	Key_Func@key1_time1^(0+128),w
	btfss	3,0
	goto	l4226

;main.c: 749: {
;main.c: 750: key1_time1 = 0;
	clrf	Key_Func@key1_time1^(0+128)

;main.c: 751: DIY_Flag1.OnrBit.b1 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,1
	goto	l4226
l4216:	
	movlw	10

;main.c: 754: else
;main.c: 755: {
;main.c: 757: key1_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key1_time1^(0+128)

;main.c: 758: key1_time2 ++;
	incf	Key_Func@key1_time2^(0+128),f

;main.c: 759: if(key1_time2 >= 10)
	subwf	Key_Func@key1_time2^(0+128),w
	btfss	3,0
	goto	l4226

;main.c: 760: {
;main.c: 761: key1_time2 = 0;
	clrf	Key_Func@key1_time2^(0+128)

;main.c: 762: DIY_Flag1.OnrBit.b1 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,1
l4226:	

;main.c: 763: }
;main.c: 764: }
;main.c: 766: if(!PORTA1)
	bcf	3,5	;RP0=0, select bank0
	btfsc	5,1	;volatile
	goto	l4238
	movlw	10

;main.c: 767: {
;main.c: 768: key2_time2 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key2_time2^(0+128)

;main.c: 769: key2_time1 ++;
	incf	Key_Func@key2_time1^(0+128),f

;main.c: 770: if(key2_time1 >= 10)
	subwf	Key_Func@key2_time1^(0+128),w
	btfss	3,0
	return

;main.c: 771: {
;main.c: 772: key2_time1 = 0;
	clrf	Key_Func@key2_time1^(0+128)

;main.c: 773: DIY_Flag1.OnrBit.b2 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,2
	return
l4238:	
	movlw	10

;main.c: 776: else
;main.c: 777: {
;main.c: 779: key2_time1 = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Func@key2_time1^(0+128)

;main.c: 780: key2_time2 ++;
	incf	Key_Func@key2_time2^(0+128),f

;main.c: 781: if(key2_time2 >= 10)
	subwf	Key_Func@key2_time2^(0+128),w
	btfss	3,0
	return

;main.c: 782: {
;main.c: 783: key2_time2 = 0;
	clrf	Key_Func@key2_time2^(0+128)

;main.c: 784: DIY_Flag1.OnrBit.b2 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_DIY_Flag1,2
	return
__end_of_Key_Func:	
	opt stack 0

	psect	text12
__ptext12:	
;; *************** function _Key_Application *****************
;; Defined at:
;;		line 836 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cur             1    6[BANK1 ] unsigned char 
;;  edge            1    5[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 100/0
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

;main.c: 838: unsigned char edge;
;main.c: 839: unsigned char cur;
;main.c: 840: static unsigned char off_key_prev = 0;
;main.c: 841: warn_flash_proc();

;incstack = 0
; Regs used in _Key_Application: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_warn_flash_proc

;main.c: 844: if(g_vdd_adc <= 2363u)
	movlw	9
	bcf	3,5	;RP0=0, select bank0
	subwf	_g_vdd_adc+1,w
	movlw	60
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5432

;main.c: 845: {
;main.c: 846: g_battery_empty = 1;
	clrf	_g_battery_empty
	incf	_g_battery_empty,f

;main.c: 847: }
	goto	l5436
l5432:	

;main.c: 848: else if(g_vdd_adc >= 2387u)
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	83
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0

;main.c: 849: {
;main.c: 850: g_battery_empty = 0;
	clrf	_g_battery_empty
l5436:	

;main.c: 851: }
;main.c: 853: if(g_battery_empty)
	movf	_g_battery_empty,w
	btfsc	3,2
	goto	l1248
	movlw	0

;main.c: 854: {
;main.c: 855: B_OnOff_Flag = 0;
	bcf	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)

;main.c: 856: set_fan(0);
	fcall	_set_fan

;main.c: 857: (PORTB1 = 1);
	bcf	3,5	;RP0=0, select bank0

;main.c: 858: (PORTB0 = 1);

;main.c: 859: (PORTA7 = 1);

;main.c: 860: (PORTA6 = 1);

;main.c: 861: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 862: g_offshow_flag = 0;

;main.c: 863: g_offshow_ms = 0;

;main.c: 864: g_warn_flash = 0;
	fcall	PL12	;call to abstracted procedure
	clrf	_g_warn_flash

;main.c: 865: g_gear = 0;
	clrf	_g_gear
	goto	l5460
l5468:	

;main.c: 876: {
;main.c: 877: g_pwr_delay_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_pwr_delay_ms^(0+128)
	clrf	(_g_pwr_delay_ms+1)^(0+128)

;main.c: 878: edge = 0;
	clrf	Key_Application@edge^(0+128)

;main.c: 879: if(B_KEYHX_Flag)
	bcf	3,5	;RP0=0, select bank0
	btfss	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
	goto	l1251

;main.c: 880: {
;main.c: 881: edge = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	Key_Application@edge^(0+128)
	incf	Key_Application@edge^(0+128),f

;main.c: 882: B_KEYHX_Flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)
l1251:	

;main.c: 883: }
;main.c: 884: cur = DIY_Flag1.OnrBit.b1 || DIY_Flag1.OnrBit.b2;
	bsf	3,5	;RP0=1, select bank1
	clrf	_Key_Application$609^(0+128)
	incf	_Key_Application$609^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,1
	btfsc	_DIY_Flag1,2
	goto	l5478
	bsf	3,5	;RP0=1, select bank1
	clrf	_Key_Application$609^(0+128)
l5478:	
	bsf	3,5	;RP0=1, select bank1
	movf	_Key_Application$609^(0+128),w
	movwf	Key_Application@cur^(0+128)

;main.c: 885: if(cur && !off_key_prev)
	movf	Key_Application@cur^(0+128),w
	btfsc	3,2
	goto	l5486
	movf	Key_Application@off_key_prev^(0+128),w
	btfss	3,2
	goto	l5486

;main.c: 886: edge = 1;
	clrf	Key_Application@edge^(0+128)
	incf	Key_Application@edge^(0+128),f
l5486:	

;main.c: 887: off_key_prev = cur;
	movf	Key_Application@cur^(0+128),w
	movwf	Key_Application@off_key_prev^(0+128)

;main.c: 888: if(edge)
	movf	Key_Application@edge^(0+128),w
	btfsc	3,2
	goto	l5498

;main.c: 889: {
;main.c: 890: Battery_Update();
	fcall	_Battery_Update

;main.c: 891: g_offshow_flag = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)

;main.c: 892: g_offshow_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)

;main.c: 893: show_gear_led(level);
	bcf	3,5	;RP0=0, select bank0
	movf	_level,w
	fcall	_show_gear_led
l5498:	

;main.c: 894: }
;main.c: 895: if(g_offshow_flag)
	bcf	3,5	;RP0=0, select bank0
	btfss	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)
	goto	l5518

;main.c: 896: {
;main.c: 897: g_offshow_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_offshow_ms^(0+128),f
	btfsc	3,2
	incf	(_g_offshow_ms+1)^(0+128),f

;main.c: 898: if(g_offshow_ms >= 5000)
	movlw	19
	subwf	(_g_offshow_ms+1)^(0+128),w
	movlw	136
	btfsc	3,2
	subwf	_g_offshow_ms^(0+128),w

;main.c: 899: {
;main.c: 900: g_offshow_flag = 0;
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L2

;main.c: 901: g_offshow_ms = 0;

;main.c: 902: (PORTB1 = 1);
	fcall	PL12	;call to abstracted procedure

;main.c: 903: (PORTB0 = 1);

;main.c: 904: (PORTA7 = 1);

;main.c: 905: (PORTA6 = 1);

;main.c: 906: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure
l5518:	

;main.c: 907: }
;main.c: 908: }
;main.c: 910: if(g_gear != 0)
	bcf	3,5	;RP0=0, select bank0
L2:	
	movf	_g_gear,w
	movlw	0
	btfsc	3,2
	goto	L3

;main.c: 911: {
;main.c: 912: g_gear = 0;
	clrf	_g_gear

;main.c: 913: set_fan(0);
	fcall	_set_fan

;main.c: 914: (PORTB1 = 1);
	bcf	3,5	;RP0=0, select bank0

;main.c: 915: (PORTB0 = 1);

;main.c: 916: (PORTA7 = 1);

;main.c: 917: (PORTA6 = 1);

;main.c: 918: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 919: g_warn_flash = 0;
	clrf	_g_warn_flash
	goto	l5460
l5546:	

;main.c: 932: {
;main.c: 933: g_pwr_delay_ms++;
	incf	_g_pwr_delay_ms^(0+128),f
	btfsc	3,2
	incf	(_g_pwr_delay_ms+1)^(0+128),f

;main.c: 934: (PORTB1 = 1);
	bcf	3,5	;RP0=0, select bank0

;main.c: 935: (PORTB0 = 1);

;main.c: 936: (PORTA7 = 1);

;main.c: 937: (PORTA6 = 1);

;main.c: 938: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure
l5460:	

;main.c: 866: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0
L3:	
	bcf	3,5	;RP0=0, select bank0

;main.c: 867: g_k2_prev = DIY_Flag1.OnrBit.b2;
	fcall	PL6	;call to abstracted procedure
l5464:	

;main.c: 868: g_k2_hold_ms = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_k2_hold_ms
	clrf	_g_k2_hold_ms+1
	return
l1248:	

;main.c: 870: }
;main.c: 875: if(B_OnOff_Flag == 0)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	l5468

;main.c: 925: }
;main.c: 931: if(g_pwr_delay_ms < 1000)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_g_pwr_delay_ms+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_g_pwr_delay_ms^(0+128),w
	btfss	3,0
	goto	l5546

;main.c: 943: }
;main.c: 946: if(g_slave_charging || g_slave_chargefull)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l1262
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5598
l1262:	
	movlw	1

;main.c: 947: {
;main.c: 948: g_gear = 1;
	clrf	_g_gear
	incf	_g_gear,f

;main.c: 949: set_fan(1);
	fcall	_set_fan

;main.c: 950: g_offshow_flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)

;main.c: 952: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	goto	l5576

;main.c: 953: show_gear_led(1);
	movlw	1
	fcall	_show_gear_led
l5576:	

;main.c: 956: if(DIY_Flag1.OnrBit.b2 && !g_k2_prev) trigger_warn(5);
	btfss	_DIY_Flag1,2
	goto	l5582
	bsf	3,5	;RP0=1, select bank1
	movf	_g_k2_prev^(0+128),w
	btfss	3,2
	goto	l5582
	movlw	5
	fcall	_trigger_warn
l5582:	

;main.c: 957: if(DIY_Flag1.OnrBit.b1 && !g_k1_prev) trigger_warn(5);
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,1
	goto	l5460
	movf	_g_k1_prev,w
	btfss	3,2
	goto	l5460
	movlw	5
	fcall	_trigger_warn
	goto	l5460
l5598:	

;main.c: 964: else
;main.c: 965: {
;main.c: 967: if(g_gear == 0)
	movf	_g_gear,w
	btfss	3,2
	goto	l5606
	movlw	1

;main.c: 968: {
;main.c: 969: g_gear = 1;
	clrf	_g_gear
	incf	_g_gear,f

;main.c: 970: set_fan(1);
	fcall	_set_fan

;main.c: 971: show_gear_led(1);
	movlw	1
	fcall	_show_gear_led
l5606:	

;main.c: 972: }
;main.c: 974: if(g_warn_flash > 0)
	movf	_g_warn_flash,w
	btfsc	3,2
	goto	l1268

;main.c: 975: {
;main.c: 976: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0

;main.c: 977: g_k2_prev = DIY_Flag1.OnrBit.b2;
	fcall	PL6	;call to abstracted procedure

;main.c: 978: g_k1_hold_ms = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_k1_hold_ms
	clrf	_g_k1_hold_ms+1
	goto	l5464
l1268:	

;main.c: 981: }
;main.c: 984: if(DIY_Flag1.OnrBit.b2)
	btfss	_DIY_Flag1,2
	goto	l5642

;main.c: 985: {
;main.c: 986: g_k2_hold_ms++;
	incf	_g_k2_hold_ms,f
	btfsc	3,2
	incf	_g_k2_hold_ms+1,f

;main.c: 988: if(g_k2_hold_ms == 500 || g_k2_hold_ms == 600 || g_k2_hold_ms == 700 || g_k2_hold_ms == 800 || g_k2_hold_ms == 900)
	movlw	244
	xorwf	_g_k2_hold_ms,w
	btfsc	3,2
	decf	_g_k2_hold_ms+1,w
	btfsc	3,2
	goto	l5628
	movlw	88
	xorwf	_g_k2_hold_ms,w
	movlw	2
	btfsc	3,2
	xorwf	_g_k2_hold_ms+1,w
	btfsc	3,2
	goto	l5628
	movlw	188
	xorwf	_g_k2_hold_ms,w
	movlw	2
	btfsc	3,2
	xorwf	_g_k2_hold_ms+1,w
	btfsc	3,2
	goto	l5628
	movlw	32
	xorwf	_g_k2_hold_ms,w
	movlw	3
	btfsc	3,2
	xorwf	_g_k2_hold_ms+1,w
	btfsc	3,2
	goto	l5628
	movlw	132
	xorwf	_g_k2_hold_ms,w
	movlw	3
	btfsc	3,2
	xorwf	_g_k2_hold_ms+1,w
	btfss	3,2
	goto	l5668
l5628:	

;main.c: 989: {
;main.c: 990: if(g_gear < 5)
	movlw	5
	subwf	_g_gear,w
	btfsc	3,0
	goto	l5636

;main.c: 991: {
;main.c: 992: g_gear++;
	incf	_g_gear,f

;main.c: 993: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 994: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 995: }
	goto	l5668
l5636:	

;main.c: 996: else if(g_gear == 5)
	movlw	5
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5668

;main.c: 997: {
;main.c: 998: g_gear = 6;
	movlw	6
	movwf	_g_gear

;main.c: 999: set_fan(6);
	movlw	6
	fcall	_set_fan

;main.c: 1000: }
;main.c: 1001: }
;main.c: 1002: }
	goto	l5668
l5642:	

;main.c: 1003: else
;main.c: 1004: {
;main.c: 1006: if(g_k2_prev)
	bsf	3,5	;RP0=1, select bank1
	movf	_g_k2_prev^(0+128),w
	btfsc	3,2
	goto	l5666

;main.c: 1007: {
;main.c: 1008: if(g_gear == 6)
	movlw	6
	bcf	3,5	;RP0=0, select bank0
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5652

;main.c: 1009: {
;main.c: 1011: g_gear = 5;
	movlw	5
	movwf	_g_gear

;main.c: 1012: set_fan(5);
	movlw	5
	fcall	_set_fan

;main.c: 1013: show_gear_led(5);
	movlw	5
	fcall	_show_gear_led

;main.c: 1014: }
	goto	l5666
l5652:	

;main.c: 1015: else if(g_k2_hold_ms < 500)
	movlw	1
	subwf	_g_k2_hold_ms+1,w
	movlw	244
	btfsc	3,2
	subwf	_g_k2_hold_ms,w
	btfsc	3,0
	goto	l5666

;main.c: 1016: {
;main.c: 1018: if(g_gear < 5)
	movlw	5
	subwf	_g_gear,w
	btfsc	3,0
	goto	l5662

;main.c: 1019: {
;main.c: 1020: g_gear++;
	incf	_g_gear,f

;main.c: 1021: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 1022: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 1023: }
	goto	l5666
l5662:	

;main.c: 1024: else if(g_gear == 5)
	movlw	5
	xorwf	_g_gear,w
	btfss	3,2
	goto	l5666

;main.c: 1025: {
;main.c: 1026: trigger_warn(1);
	movlw	1
	fcall	_trigger_warn
l5666:	

;main.c: 1027: }
;main.c: 1028: }
;main.c: 1029: }
;main.c: 1030: g_k2_hold_ms = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_k2_hold_ms
	clrf	_g_k2_hold_ms+1
l5668:	

;main.c: 1031: }
;main.c: 1032: g_k2_prev = DIY_Flag1.OnrBit.b2;
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	btfsc	_DIY_Flag1,2
	movlw	1
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_k2_prev^(0+128)

;main.c: 1035: if(DIY_Flag1.OnrBit.b1)
	bcf	3,5	;RP0=0, select bank0
	btfss	_DIY_Flag1,1
	goto	l5692

;main.c: 1036: {
;main.c: 1037: g_k1_hold_ms++;
	incf	_g_k1_hold_ms,f
	btfsc	3,2
	incf	_g_k1_hold_ms+1,f

;main.c: 1039: if(g_k1_hold_ms == 500 || g_k1_hold_ms == 600 || g_k1_hold_ms == 700 || g_k1_hold_ms == 800 || g_k1_hold_ms == 900)
	movlw	244
	xorwf	_g_k1_hold_ms,w
	btfsc	3,2
	decf	_g_k1_hold_ms+1,w
	btfsc	3,2
	goto	l5684
	movlw	88
	xorwf	_g_k1_hold_ms,w
	movlw	2
	btfsc	3,2
	xorwf	_g_k1_hold_ms+1,w
	btfsc	3,2
	goto	l5684
	movlw	188
	xorwf	_g_k1_hold_ms,w
	movlw	2
	btfsc	3,2
	xorwf	_g_k1_hold_ms+1,w
	btfsc	3,2
	goto	l5684
	movlw	32
	xorwf	_g_k1_hold_ms,w
	movlw	3
	btfsc	3,2
	xorwf	_g_k1_hold_ms+1,w
	btfsc	3,2
	goto	l5684
	movlw	132
	xorwf	_g_k1_hold_ms,w
	movlw	3
	btfsc	3,2
	xorwf	_g_k1_hold_ms+1,w
	btfss	3,2
	goto	l5710
l5684:	

;main.c: 1040: {
;main.c: 1041: if(g_gear > 1)
	movlw	2
	subwf	_g_gear,w
	btfss	3,0
	goto	l5710

;main.c: 1042: {
;main.c: 1043: g_gear--;
	decf	_g_gear,f

;main.c: 1044: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 1045: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led
	goto	l5710
l5692:	

;main.c: 1049: else
;main.c: 1050: {
;main.c: 1052: if(g_k1_prev)
	movf	_g_k1_prev,w
	btfsc	3,2
	goto	l5708

;main.c: 1053: {
;main.c: 1054: if(g_k1_hold_ms < 500)
	movlw	1
	subwf	_g_k1_hold_ms+1,w
	movlw	244
	btfsc	3,2
	subwf	_g_k1_hold_ms,w
	btfsc	3,0
	goto	l5708

;main.c: 1055: {
;main.c: 1057: if(g_gear > 1)
	movlw	2
	subwf	_g_gear,w
	btfss	3,0
	goto	l5704

;main.c: 1058: {
;main.c: 1059: g_gear--;
	decf	_g_gear,f

;main.c: 1060: set_fan(g_gear);
	movf	_g_gear,w
	fcall	_set_fan

;main.c: 1061: show_gear_led(g_gear);
	bcf	3,5	;RP0=0, select bank0
	movf	_g_gear,w
	fcall	_show_gear_led

;main.c: 1062: }
	goto	l5708
l5704:	

;main.c: 1063: else if(g_gear == 1)
	decfsz	_g_gear,w
	goto	l5708

;main.c: 1064: {
;main.c: 1065: trigger_warn(5);
	movlw	5
	fcall	_trigger_warn
l5708:	

;main.c: 1066: }
;main.c: 1067: }
;main.c: 1068: }
;main.c: 1069: g_k1_hold_ms = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_k1_hold_ms
	clrf	_g_k1_hold_ms+1
l5710:	

;main.c: 1070: }
;main.c: 1071: g_k1_prev = DIY_Flag1.OnrBit.b1;
	movlw	0
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
PL6:	
	opt stack 2
	btfsc	_DIY_Flag1,1
	movlw	1
	movwf	_g_k1_prev
	movlw	0
	btfsc	_DIY_Flag1,2
	movlw	1
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_k2_prev^(0+128)
	return
__end_ofPL6:	
	opt stack 0
PL12:	
	opt stack 4
	bcf	_g_offshow_flag/(0+8),_g_offshow_flag& (0+7)
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_offshow_ms^(0+128)
	clrf	(_g_offshow_ms+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	return
__end_ofPL12:	
	opt stack 0

	psect	text13
__ptext13:	
;; *************** function _warn_flash_proc *****************
;; Defined at:
;;		line 700 in file "main.c"
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

;main.c: 702: if(g_warn_flash == 0)

;incstack = 0
; Regs used in _warn_flash_proc: [wreg+status,2+status,0+pclath+cstack]
	bcf	3,5	;RP0=0, select bank0
	movf	_g_warn_flash,w
	btfsc	3,2
	return
	movlw	150

;main.c: 704: g_warn_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	_g_warn_cnt^(0+128),f

;main.c: 705: if(g_warn_cnt < 150)
	subwf	_g_warn_cnt^(0+128),w
	btfss	3,0
	return
	movlw	(0+1) shl (_g_warn_blink& (0+7))

;main.c: 707: g_warn_cnt = 0;
	clrf	_g_warn_cnt^(0+128)

;main.c: 710: g_warn_blink = !g_warn_blink;
	bcf	3,5	;RP0=0, select bank0
	xorwf	_g_warn_blink/(0+8),f

;main.c: 711: g_warn_flash--;
	decf	_g_warn_flash,f

;main.c: 713: if(g_warn_led == 1)
	decfsz	_g_warn_led,w
	goto	l5126

;main.c: 714: {
;main.c: 716: (PORTA4 = 0); (PORTA6 = 0); (PORTA7 = 0); (PORTB0 = 0);
	bcf	5,4	;volatile
	bcf	5,6	;volatile
	bcf	5,7	;volatile
	bcf	6,0	;volatile

;main.c: 717: if(g_warn_blink) (PORTB1 = 1); else (PORTB1 = 0);
	btfss	_g_warn_blink/(0+8),_g_warn_blink& (0+7)
	goto	l1204
	bsf	6,1	;volatile
	goto	l5132
l1204:	
	bcf	6,1	;volatile
	goto	l5132
l5126:	

;main.c: 719: else if(g_warn_led == 5)
	movlw	5
	xorwf	_g_warn_led,w
	btfss	3,2
	goto	l5132

;main.c: 720: {
;main.c: 722: (PORTB1 = 1);
	bsf	6,1	;volatile

;main.c: 723: (PORTB0 = 1);
	bsf	6,0	;volatile

;main.c: 724: (PORTA7 = 1);
	bsf	5,7	;volatile

;main.c: 725: (PORTA6 = 1);
	bsf	5,6	;volatile

;main.c: 726: if(g_warn_blink) (PORTA4 = 1); else (PORTA4 = 0);
	btfss	_g_warn_blink/(0+8),_g_warn_blink& (0+7)
	goto	l1208
	bsf	5,4	;volatile
	goto	l5132
l1208:	
	bcf	5,4	;volatile
l5132:	

;main.c: 727: }
;main.c: 730: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	return

;main.c: 731: {
;main.c: 732: show_gear_led(g_gear);
	movf	_g_gear,w
	ljmp	_show_gear_led
__end_of_warn_flash_proc:	
	opt stack 0

	psect	text14
__ptext14:	
;; *************** function _show_gear_led *****************
;; Defined at:
;;		line 626 in file "main.c"
;; Parameters:    Size  Location     Type
;;  gear            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  gear            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
	bcf	3,5	;RP0=0, select bank0
	movwf	show_gear_led@gear

;main.c: 628: (PORTB1 = 1);

;main.c: 629: (PORTB0 = 1);

;main.c: 630: (PORTA7 = 1);

;main.c: 631: (PORTA6 = 1);

;main.c: 632: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure

;main.c: 633: if(gear >= 1) (PORTA4 = 0);
	movf	show_gear_led@gear,w
	btfss	3,2
	bcf	5,4	;volatile

;main.c: 634: if(gear >= 2) (PORTA6 = 0);
	movlw	2
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	5,6	;volatile

;main.c: 635: if(gear >= 3) (PORTA7 = 0);
	movlw	3
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	5,7	;volatile

;main.c: 636: if(gear >= 4) (PORTB0 = 0);
	movlw	4
	subwf	show_gear_led@gear,w
	btfsc	3,0
	bcf	6,0	;volatile

;main.c: 637: if(gear >= 5) (PORTB1 = 0);
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
;;		line 687 in file "main.c"
;; Parameters:    Size  Location     Type
;;  led_num         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led_num         1    8[BANK0 ] unsigned char 
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
	bcf	3,5	;RP0=0, select bank0
	movwf	trigger_warn@led_num

;main.c: 689: if(g_warn_flash == 0)
	movf	_g_warn_flash,w
	btfss	3,2
	return

;main.c: 690: {
;main.c: 691: g_warn_flash = 4;
	movlw	4
	movwf	_g_warn_flash

;main.c: 692: g_warn_led = led_num;
	movf	trigger_warn@led_num,w
	movwf	_g_warn_led

;main.c: 693: g_warn_blink = 0;
	bcf	_g_warn_blink/(0+8),_g_warn_blink& (0+7)

;main.c: 694: g_warn_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_warn_cnt^(0+128)
	return
__end_of_trigger_warn:	
	opt stack 0

	psect	text16
__ptext16:	
;; *************** function _set_fan *****************
;; Defined at:
;;		line 645 in file "main.c"
;; Parameters:    Size  Location     Type
;;  gear            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  gear            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 100/0
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
	movwf	set_fan@gear

;main.c: 647: if(gear == 0)
	movf	set_fan@gear,w
	btfss	3,2
	goto	l5090

;main.c: 648: {
;main.c: 649: g_target_pwm = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_target_pwm^(0+128)
	return
l5090:	

;main.c: 651: }
;main.c: 652: if(gear > 6)
	movlw	7
	subwf	set_fan@gear,w
	btfss	3,0
	goto	l5094

;main.c: 653: gear = 6;
	movlw	6
	movwf	set_fan@gear
l5094:	

;main.c: 655: g_target_pwm = c_fan_duty[gear];
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
;;		line 541 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_val         2   10[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0
;;      Temps:          0       0       0
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

;main.c: 543: static unsigned char low_debounce = 0;
;main.c: 544: static unsigned char low_clr_debounce = 0;
;main.c: 545: unsigned int adc_val;
;main.c: 546: static unsigned char loop_num = 0;
;main.c: 547: static unsigned int loop_min = 0;
;main.c: 548: static unsigned int loop_max = 0;
;main.c: 549: static unsigned int loop_sum = 0;
;main.c: 550: static unsigned char startup_cnt = 50;
;main.c: 551: adc_val = adc_read_vdd();

;incstack = 0
; Regs used in _Battery_Update: [wreg+status,2+status,0+pclath+cstack]
	fcall	_adc_read_vdd
	movf	?_adc_read_vdd+1,w
	movwf	Battery_Update@adc_val+1
	movf	?_adc_read_vdd,w
	movwf	Battery_Update@adc_val

;main.c: 553: if(loop_num == 0)
	bsf	3,5	;RP0=1, select bank1
	movf	Battery_Update@loop_num^(0+128),w
	btfss	3,2
	goto	l5000

;main.c: 554: {
;main.c: 555: loop_min = adc_val;
	bcf	3,5	;RP0=0, select bank0
	movf	Battery_Update@adc_val+1,w
	bsf	3,5	;RP0=1, select bank1
	fcall	PL14	;call to abstracted procedure

;main.c: 556: loop_max = adc_val;
	bcf	3,5	;RP0=0, select bank0
	fcall	PL8	;call to abstracted procedure

;main.c: 557: loop_sum = 0;
	clrf	Battery_Update@loop_sum^(0+128)
	clrf	(Battery_Update@loop_sum+1)^(0+128)

;main.c: 558: }
	goto	l1140
l5000:	

;main.c: 559: else if(loop_min > adc_val) loop_min = adc_val;
	movf	(Battery_Update@loop_min+1)^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	subwf	Battery_Update@adc_val+1,w
	btfss	3,2
	goto	u4355
	bsf	3,5	;RP0=1, select bank1
	movf	Battery_Update@loop_min^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	subwf	Battery_Update@adc_val,w
u4355:	
	movf	Battery_Update@adc_val+1,w
	bsf	3,5	;RP0=1, select bank1
	btfsc	3,0
	goto	L5
	fcall	PL14	;call to abstracted procedure
	goto	l1140
L5:	
;main.c: 560: else if(loop_max < adc_val) loop_max = adc_val;

	subwf	(Battery_Update@loop_max+1)^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	btfss	3,2
	goto	L7
	movf	Battery_Update@adc_val,w
	bsf	3,5	;RP0=1, select bank1
	subwf	Battery_Update@loop_max^(0+128),w
	bcf	3,5	;RP0=0, select bank0
L7:	
	btfsc	3,0
	goto	L6
	fcall	PL8	;call to abstracted procedure
l1140:	

;main.c: 562: loop_sum += adc_val;
	bcf	3,5	;RP0=0, select bank0
L6:	
	movf	Battery_Update@adc_val,w
	bsf	3,5	;RP0=1, select bank1
	addwf	Battery_Update@loop_sum^(0+128),f
	btfsc	3,0
	incf	(Battery_Update@loop_sum+1)^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	movf	Battery_Update@adc_val+1,w
	bsf	3,5	;RP0=1, select bank1
	addwf	(Battery_Update@loop_sum+1)^(0+128),f
	movlw	10

;main.c: 563: loop_num++;
	incf	Battery_Update@loop_num^(0+128),f

;main.c: 565: if(loop_num >= 10)
	subwf	Battery_Update@loop_num^(0+128),w
	btfss	3,0
	return

;main.c: 566: {
;main.c: 567: loop_num = 0;
	clrf	Battery_Update@loop_num^(0+128)

;main.c: 568: loop_sum -= loop_min;
	movf	Battery_Update@loop_min^(0+128),w
	subwf	Battery_Update@loop_sum^(0+128),f
	movf	(Battery_Update@loop_min+1)^(0+128),w
	btfss	3,0
	decf	(Battery_Update@loop_sum+1)^(0+128),f
	subwf	(Battery_Update@loop_sum+1)^(0+128),f

;main.c: 569: loop_sum -= loop_max;
	movf	Battery_Update@loop_max^(0+128),w
	subwf	Battery_Update@loop_sum^(0+128),f
	movf	(Battery_Update@loop_max+1)^(0+128),w
	btfss	3,0
	decf	(Battery_Update@loop_sum+1)^(0+128),f
	subwf	(Battery_Update@loop_sum+1)^(0+128),f

;main.c: 570: loop_sum = loop_sum >> 3;
	bcf	3,0
	rrf	(Battery_Update@loop_sum+1)^(0+128),f
	rrf	Battery_Update@loop_sum^(0+128),f
	bcf	3,0
	rrf	(Battery_Update@loop_sum+1)^(0+128),f
	rrf	Battery_Update@loop_sum^(0+128),f
	bcf	3,0
	rrf	(Battery_Update@loop_sum+1)^(0+128),f
	rrf	Battery_Update@loop_sum^(0+128),f

;main.c: 571: g_vdd_adc = loop_sum;
	movf	(Battery_Update@loop_sum+1)^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	_g_vdd_adc+1
	bsf	3,5	;RP0=1, select bank1
	movf	Battery_Update@loop_sum^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	_g_vdd_adc

;main.c: 573: if(g_slave_chargefull) level = 6;
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	l5026
l5024:	
	movlw	6
	goto	L4
l5026:	

;main.c: 574: else if(g_vdd_adc < 2363u) level = 0;
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	59
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5030
	clrf	_level
	goto	l5052
l5030:	

;main.c: 575: else if(g_vdd_adc < 2544u) level = 1;
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	240
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5034
	clrf	_level
	incf	_level,f
	goto	l5052
l5034:	

;main.c: 576: else if(g_vdd_adc < 2914u) level = 2;
	movlw	11
	subwf	_g_vdd_adc+1,w
	movlw	98
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5038
	movlw	2
	goto	L4
l5038:	

;main.c: 577: else if(g_vdd_adc < 3072u) level = 3;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	0
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5042
	movlw	3
	goto	L4
l5042:	

;main.c: 578: else if(g_vdd_adc < 3229u) level = 4;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	157
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5046
	movlw	4
	goto	L4
l5046:	

;main.c: 579: else if(g_vdd_adc <= 3308u) level = 5;
	movlw	12
	subwf	_g_vdd_adc+1,w
	movlw	237
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5024
	movlw	5
L4:	
	movwf	_level
l5052:	

;main.c: 581: if(startup_cnt > 0)
	bsf	3,5	;RP0=1, select bank1
	movf	Battery_Update@startup_cnt^(0+128),w
	btfsc	3,2
	goto	l1159

;main.c: 582: {
;main.c: 583: startup_cnt--;
	decf	Battery_Update@startup_cnt^(0+128),f

;main.c: 584: B_LowPower_Flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)

;main.c: 585: }
	return
l1159:	

;main.c: 586: else
;main.c: 587: {
;main.c: 588: if(B_LowPower_Flag == 0)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
	goto	l5070

;main.c: 589: {
;main.c: 591: if(g_vdd_adc < 2521u)
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	217
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5068

;main.c: 592: {
;main.c: 593: if(low_debounce < 5) low_debounce++;
	movlw	5
	bsf	3,5	;RP0=1, select bank1
	subwf	Battery_Update@low_debounce^(0+128),w
	btfss	3,0
	incf	Battery_Update@low_debounce^(0+128),f

;main.c: 594: if(low_debounce >= 5) B_LowPower_Flag = 1;
	movlw	5
	subwf	Battery_Update@low_debounce^(0+128),w
	btfss	3,0
	return
	bcf	3,5	;RP0=0, select bank0
	bsf	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
	return
l5072:	

;main.c: 604: {
;main.c: 605: if(low_clr_debounce < 3) low_clr_debounce++;
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	Battery_Update@low_clr_debounce^(0+128),w
	btfss	3,0
	incf	Battery_Update@low_clr_debounce^(0+128),f

;main.c: 606: if(low_clr_debounce >= 3)
	movlw	3
	subwf	Battery_Update@low_clr_debounce^(0+128),w
	btfss	3,0
	return

;main.c: 607: {
;main.c: 608: B_LowPower_Flag = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
l5068:	

;main.c: 596: else
;main.c: 597: {
;main.c: 598: low_debounce = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@low_debounce^(0+128)
	return
l5070:	

;main.c: 601: else
;main.c: 602: {
;main.c: 603: if(g_vdd_adc >= 2544u)
	movlw	9
	subwf	_g_vdd_adc+1,w
	movlw	240
	btfsc	3,2
	subwf	_g_vdd_adc,w
	btfsc	3,0
	goto	l5072

;main.c: 612: else
;main.c: 613: {
;main.c: 614: low_clr_debounce = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Battery_Update@low_clr_debounce^(0+128)
	return
__end_of_Battery_Update:	
	opt stack 0
PL8:	
	opt stack 2
	movf	Battery_Update@adc_val+1,w
	bsf	3,5	;RP0=1, select bank1
	movwf	(Battery_Update@loop_max+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	movf	Battery_Update@adc_val,w
	bsf	3,5	;RP0=1, select bank1
	movwf	Battery_Update@loop_max^(0+128)
	return
__end_ofPL8:	
	opt stack 0
PL14:	
	opt stack 2
	movwf	(Battery_Update@loop_min+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	movf	Battery_Update@adc_val,w
	bsf	3,5	;RP0=1, select bank1
	movwf	Battery_Update@loop_min^(0+128)
	return
__end_ofPL14:	
	opt stack 0

	psect	text18
__ptext18:	
;; *************** function _adc_read_vdd *****************
;; Defined at:
;;		line 362 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2    2[BANK1 ] unsigned int 
;;  ad_delay        2    0[BANK1 ] unsigned int 
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
;;      Locals:         0       0       4
;;      Temps:          0       0       0
;;      Totals:         0       2       4
;;Total ram usage:        6 bytes
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

;main.c: 364: unsigned int result;
;main.c: 365: unsigned int ad_delay;
;main.c: 367: ADCON0 = 0x15;

;incstack = 0
; Regs used in _adc_read_vdd: [wreg+status,2+status,0]
	movlw	21
	bcf	3,5	;RP0=0, select bank0
	movwf	90	;volatile

;main.c: 368: ADCON1 = adcon1_val;
	movf	_adcon1_val,w
	movwf	91	;volatile

;main.c: 369: ADEN = 1;
	bsf	90,0	;volatile

;main.c: 371: ADIF = 0;
	bcf	15,2	;volatile

;main.c: 372: ADON = 1;
	bsf	90,1	;volatile

;main.c: 374: ad_delay = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	adc_read_vdd@ad_delay^(0+128)
	clrf	(adc_read_vdd@ad_delay+1)^(0+128)
l1043:	
;main.c: 375: while(ADON)

	bcf	3,5	;RP0=0, select bank0
	btfss	90,1	;volatile
	goto	l4924
	clrwdt	;# 

;main.c: 380: ad_delay++;
	bsf	3,5	;RP0=1, select bank1
	incf	adc_read_vdd@ad_delay^(0+128),f
	btfsc	3,2
	incf	(adc_read_vdd@ad_delay+1)^(0+128),f

;main.c: 381: if(ad_delay >= 20000)
	movlw	78
	subwf	(adc_read_vdd@ad_delay+1)^(0+128),w
	movlw	32
	btfsc	3,2
	subwf	adc_read_vdd@ad_delay^(0+128),w
	btfss	3,0
	goto	l1043
l4924:	

;main.c: 383: }
;main.c: 385: result = ((unsigned int)ADRESH << 4) | (ADRESL >> 4);
	bcf	3,5	;RP0=0, select bank0
	movf	89,w	;volatile
	bsf	3,5	;RP0=1, select bank1
	movwf	adc_read_vdd@result^(0+128)
	movlw	240
	clrf	(adc_read_vdd@result+1)^(0+128)
	swapf	adc_read_vdd@result^(0+128),f
	swapf	(adc_read_vdd@result+1)^(0+128),f
	andwf	(adc_read_vdd@result+1)^(0+128),f
	movf	adc_read_vdd@result^(0+128),w
	andlw	15
	iorwf	(adc_read_vdd@result+1)^(0+128),f
	movlw	240
	andwf	adc_read_vdd@result^(0+128),f
	bcf	3,5	;RP0=0, select bank0
	swapf	88,w	;volatile
	andlw	15
	bsf	3,5	;RP0=1, select bank1
	iorwf	adc_read_vdd@result^(0+128),f

;main.c: 386: return result;
	movf	(adc_read_vdd@result+1)^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	?_adc_read_vdd+1
	bsf	3,5	;RP0=1, select bank1
	movf	adc_read_vdd@result^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	?_adc_read_vdd
	return
__end_of_adc_read_vdd:	
	opt stack 0

	psect	text19
__ptext19:	
;; *************** function _Flag_AllClear *****************
;; Defined at:
;;		line 1414 in file "main.c"
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

;psect for function _Flag_AllClear

_Flag_AllClear:	
	opt stack 0

;main.c: 1416: (PORTB1 = 1);

;incstack = 0
; Regs used in _Flag_AllClear: [wreg+status,2]

;main.c: 1417: (PORTB0 = 1);

;main.c: 1418: (PORTA7 = 1);

;main.c: 1419: (PORTA6 = 1);

;main.c: 1420: (PORTA4 = 1);
	fcall	PL2	;call to abstracted procedure
	movlw	236

;main.c: 1421: B_OnOff_Flag = 0;
	bcf	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)

;main.c: 1422: B_LowPower_Flag = 0;
	bcf	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)

;main.c: 1423: g_gear = 0;
	clrf	_g_gear

;main.c: 1424: g_warn_flash = 0;
	clrf	_g_warn_flash

;main.c: 1425: g_warn_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_warn_cnt^(0+128)

;main.c: 1426: g_warn_led = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_warn_led

;main.c: 1427: g_warn_blink = 0;
	bcf	_g_warn_blink/(0+8),_g_warn_blink& (0+7)

;main.c: 1428: g_offshow_flag = 0;

;main.c: 1429: g_offshow_ms = 0;

;main.c: 1430: g_slave_charging = 0;
	fcall	PL12	;call to abstracted procedure
	bcf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)

;main.c: 1431: g_slave_chargefull = 0;
	bcf	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)

;main.c: 1432: g_slave_alive_ms = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_slave_alive_ms^(0+128)
	clrf	(_g_slave_alive_ms+1)^(0+128)

;main.c: 1433: g_k1_prev = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_k1_prev

;main.c: 1434: g_k2_prev = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_g_k2_prev^(0+128)

;main.c: 1435: g_k2_hold_ms = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_g_k2_hold_ms
	clrf	_g_k2_hold_ms+1

;main.c: 1436: B_KEYHX_Flag = 0;
	bcf	_B_KEYHX_Flag/(0+8),_B_KEYHX_Flag& (0+7)

;main.c: 1437: kcomm_state = 0;
	clrf	_kcomm_state

;main.c: 1438: kcomm_turn = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_turn^(0+128)

;main.c: 1439: kcomm_timer = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1440: kcomm_cycle = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_cycle^(0+128)

;main.c: 1441: kcomm_wakeup = 0;
	bcf	3,5	;RP0=0, select bank0

;main.c: 1442: kcomm_wakeup_cnt= 0;

;main.c: 1443: kcomm_low_cnt = 0;

;main.c: 1444: kcomm_rx_done = 0;
	fcall	PL10	;call to abstracted procedure
	clrf	_kcomm_rx_done

;main.c: 1445: kcomm_tx_done = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_tx_done^(0+128)

;main.c: 1446: level = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_level

;main.c: 1447: g_vdd_adc = 3308u;
	movwf	_g_vdd_adc
	movlw	12
	movwf	_g_vdd_adc+1
	return
__end_of_Flag_AllClear:	
	opt stack 0

	psect	text20
__ptext20:	
;; *************** function _Delay_Init *****************
;; Defined at:
;;		line 206 in file "main.c"
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

;main.c: 208: unsigned int i;
;main.c: 210: for(i = 0; i <= Delay_Duty; i ++)

;incstack = 0
; Regs used in _Delay_Init: [wreg+status,2+status,0]
	clrf	Delay_Init@i
	clrf	Delay_Init@i+1
l3920:	
	movf	Delay_Init@i+1,w
	subwf	Delay_Init@Delay_Duty+1,w
	btfss	3,2
	goto	u2615
	movf	Delay_Init@i,w
	subwf	Delay_Init@Delay_Duty,w
u2615:	
	btfss	3,0
	return
	clrwdt	;# 
	bcf	3,5	;RP0=0, select bank0
	incf	Delay_Init@i,f
	btfsc	3,2
	incf	Delay_Init@i+1,f
	goto	l3920
__end_of_Delay_Init:	
	opt stack 0

	psect	text21
__ptext21:	
;; *************** function _Comm_Process *****************
;; Defined at:
;;		line 1390 in file "main.c"
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

;main.c: 1392: unsigned char rx_ok;
;main.c: 1394: if(kcomm_tx_done == 1)

;incstack = 0
; Regs used in _Comm_Process: [wreg+status,2+status,0+pclath+cstack]
	bsf	3,5	;RP0=1, select bank1
	decfsz	_kcomm_tx_done^(0+128),w
	goto	l5716

;main.c: 1395: {
;main.c: 1396: kcomm_tx_done = 0;
	clrf	_kcomm_tx_done^(0+128)
l5716:	

;main.c: 1397: }
;main.c: 1399: if(kcomm_rx_done == 1)
	bcf	3,5	;RP0=0, select bank0
	decfsz	_kcomm_rx_done,w
	goto	l5732

;main.c: 1400: {
;main.c: 1401: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done

;main.c: 1402: rx_ok = comm_parse_rx(kcomm_rx_buf);
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_rx_buf^(0+128),w
	fcall	_comm_parse_rx
	bsf	3,5	;RP0=1, select bank1
	movwf	Comm_Process@rx_ok^(0+128)

;main.c: 1403: if(rx_ok)
	movf	Comm_Process@rx_ok^(0+128),w
	btfsc	3,2
	goto	l5726

;main.c: 1404: g_slave_alive_ms = 200;
	movlw	200
	movwf	_g_slave_alive_ms^(0+128)
	clrf	(_g_slave_alive_ms+1)^(0+128)
l5726:	

;main.c: 1405: if(g_slave_charging || g_slave_chargefull)
	bcf	3,5	;RP0=0, select bank0
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l5730
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	return
l5730:	

;main.c: 1406: g_slave_alive_ms = 200;
	movlw	200
	bsf	3,5	;RP0=1, select bank1
	movwf	_g_slave_alive_ms^(0+128)
	clrf	(_g_slave_alive_ms+1)^(0+128)
	return
l5732:	

;main.c: 1408: else if(kcomm_rx_done == 0xFF)
	incfsz	_kcomm_rx_done,w
	return

;main.c: 1409: {
;main.c: 1410: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done
	return
__end_of_Comm_Process:	
	opt stack 0

	psect	text22
__ptext22:	
;; *************** function _comm_parse_rx *****************
;; Defined at:
;;		line 1112 in file "main.c"
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

;main.c: 1114: unsigned char lo;
;main.c: 1115: unsigned char hi;
;main.c: 1116: unsigned char check;
;main.c: 1118: lo = raw & 0x0F;
	movwf	comm_parse_rx@lo
	movlw	15
	andwf	comm_parse_rx@lo,f

;main.c: 1119: hi = (raw >> 4) & 0x0F;
	swapf	comm_parse_rx@raw,w
	andlw	15
	movwf	comm_parse_rx@hi
	movlw	15
	andwf	comm_parse_rx@hi,f

;main.c: 1120: check = lo + hi;
	movf	comm_parse_rx@hi,w
	addwf	comm_parse_rx@lo,w
	movwf	comm_parse_rx@check

;main.c: 1122: if(check != 0x0F)
	xorlw	15
	btfss	3,2

;main.c: 1123: return 0;
	retlw	0

;main.c: 1125: if(lo == 0x0C || lo == 0x0D)
	movlw	12
	xorwf	comm_parse_rx@lo,w
	btfsc	3,2
	goto	l1307
	movlw	13
	xorwf	comm_parse_rx@lo,w
	btfss	3,2
	goto	l1305
l1307:	

;main.c: 1126: g_slave_charging = 1;
	bsf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	l5156
l1305:	

;main.c: 1127: else
;main.c: 1128: g_slave_charging = 0;
	bcf	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
l5156:	

;main.c: 1130: if(lo == 0x0D)
	movlw	13
	xorwf	comm_parse_rx@lo,w
	btfss	3,2
	goto	l1309

;main.c: 1131: g_slave_chargefull = 1;
	bsf	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	retlw	1
l1309:	

;main.c: 1132: else
;main.c: 1133: g_slave_chargefull = 0;
	bcf	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)

;main.c: 1135: return 1;
	retlw	1
__end_of_comm_parse_rx:	
	opt stack 0

	psect	text23
__ptext23:	
;; *************** function _Timer1_Isr *****************
;; Defined at:
;;		line 1507 in file "main.c"
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
	opt stack 2

;main.c: 1509: static unsigned char timer_ms = 0;
;main.c: 1510: static unsigned char pwm_cnt = 0;
;main.c: 1512: if(T0IF == 1)
	btfss	14,3	;volatile
	goto	i1l4866

;main.c: 1513: {
;main.c: 1514: T0IF = 0;
	bcf	14,3	;volatile

;main.c: 1515: T0 = 168;
	movlw	168
	movwf	1	;volatile
	movlw	20

;main.c: 1516: timer_ms++;
	bsf	3,5	;RP0=1, select bank1
	incf	Timer1_Isr@timer_ms^(0+128),f

;main.c: 1518: if(timer_ms >= 20)
	subwf	Timer1_Isr@timer_ms^(0+128),w
	btfss	3,0
	goto	i1l4866

;main.c: 1519: {
;main.c: 1520: timer_ms = 0;
	clrf	Timer1_Isr@timer_ms^(0+128)

;main.c: 1521: DIY_Flag1.OnrBit.b0 = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_DIY_Flag1,0
i1l4866:	

;main.c: 1522: }
;main.c: 1523: }
;main.c: 1525: if(B_OnOff_Flag && g_gear == 6 && !g_slave_charging && !g_slave_chargefull)
	bcf	3,5	;RP0=0, select bank0
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	i1l4884
	movlw	6
	xorwf	_g_gear,w
	btfsc	3,2
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	i1l4884
	btfsc	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	i1l4884
	movlw	50

;main.c: 1526: {
;main.c: 1527: pwm_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	Timer1_Isr@pwm_cnt^(0+128),f

;main.c: 1528: if(pwm_cnt >= 50) pwm_cnt = 0;
	subwf	Timer1_Isr@pwm_cnt^(0+128),w
	btfsc	3,0
	clrf	Timer1_Isr@pwm_cnt^(0+128)

;main.c: 1530: if(pwm_cnt < g_overclock_pwm)
	movf	_g_overclock_pwm^(0+128),w
	subwf	Timer1_Isr@pwm_cnt^(0+128),w

;main.c: 1531: {
;main.c: 1532: (PORTB1 = 0); (PORTB0 = 0); (PORTA7 = 0); (PORTA6 = 0); (PORTA4 = 0);
	bcf	3,5	;RP0=0, select bank0
	btfsc	3,0
	goto	L8
	fcall	PL16	;call to abstracted procedure

;main.c: 1533: }
	goto	i1l4884
L8:	
;main.c: 1534: else
;main.c: 1535: {
;main.c: 1536: (PORTB1 = 1); (PORTB0 = 1); (PORTA7 = 1); (PORTA6 = 1); (PORTA4 = 1);

	fcall	PL2	;call to abstracted procedure
i1l4884:	

;main.c: 1537: }
;main.c: 1538: }
;main.c: 1540: Kcomm_ISR();
	fcall	_Kcomm_ISR

;main.c: 1541: T1IF = 0;
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
PL16:	
	opt stack 3
	bcf	6,1	;volatile
	bcf	6,0	;volatile
	bcf	5,7	;volatile
	bcf	5,6	;volatile
	bcf	5,4	;volatile
	return
__end_ofPL16:	
	opt stack 0

	psect	intentry
__pintentry:	
;incstack = 0
; Regs used in _Timer1_Isr: [wreg-fsr0h+status,2+status,0+pclath+cstack]

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
	movf	4,w
	movwf	??_Timer1_Isr+1
	movf	10,w
	movwf	??_Timer1_Isr+2
	ljmp	_Timer1_Isr

	psect	text24
__ptext24:	
;; *************** function _Kcomm_ISR *****************
;; Defined at:
;;		line 1140 in file "main.c"
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
	opt stack 2

;main.c: 1142: static unsigned char bit_wait_fall;
;main.c: 1143: kcomm_timer++;

;incstack = 0
; Regs used in _Kcomm_ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	incf	_kcomm_timer,f
	btfsc	3,2
	incf	_kcomm_timer+1,f

;main.c: 1145: if(kcomm_wakeup)
	movf	_kcomm_wakeup,w
	btfsc	3,2
	goto	i1l4578

;main.c: 1146: {
;main.c: 1147: kcomm_wakeup_cnt++;
	bsf	3,5	;RP0=1, select bank1
	incf	_kcomm_wakeup_cnt^(0+128),f
	btfsc	3,2
	incf	(_kcomm_wakeup_cnt+1)^(0+128),f

;main.c: 1148: if(kcomm_wakeup_cnt == 1)
	decf	_kcomm_wakeup_cnt^(0+128),w
	iorwf	(_kcomm_wakeup_cnt+1)^(0+128),w
	btfss	3,2
	goto	i1l4568

;main.c: 1149: {
;main.c: 1150: do { TRISB6 = 0; } while(0);
	bcf	3,5	;RP0=0, select bank0
	bcf	70,6	;volatile

;main.c: 1151: PORTB6 = 1;
	bsf	6,6	;volatile
i1l4568:	

;main.c: 1152: }
;main.c: 1153: if(kcomm_wakeup_cnt >= 1000u)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_kcomm_wakeup_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_wakeup_cnt^(0+128),w
	btfss	3,0
	return

;main.c: 1154: {
;main.c: 1155: PORTB6 = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	6,6	;volatile

;main.c: 1156: do { TRISB6 = 1; } while(0);
	bsf	70,6	;volatile
	movlw	195

;main.c: 1157: kcomm_wakeup = 0;

;main.c: 1158: kcomm_wakeup_cnt = 0;

;main.c: 1159: kcomm_low_cnt = 0;

;main.c: 1160: kcomm_state = 0;
	fcall	PL10	;call to abstracted procedure
	clrf	_kcomm_state

;main.c: 1161: kcomm_cycle = 195;
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_cycle^(0+128)
	return
i1l4578:	

;main.c: 1164: }
;main.c: 1167: if(kcomm_state == 0)
	movf	_kcomm_state,w
	btfss	3,2
	goto	i1l4750

;main.c: 1168: {
;main.c: 1169: kcomm_cycle++;
	bsf	3,5	;RP0=1, select bank1
	incf	_kcomm_cycle^(0+128),f

;main.c: 1171: if(!((PORTB & 0x40) ? 1 : 0))
	bcf	3,5	;RP0=0, select bank0
	btfsc	6,6	;volatile
	goto	i1l4602

;main.c: 1172: {
;main.c: 1173: if(kcomm_low_cnt < 1000)
	movlw	3
	bsf	3,5	;RP0=1, select bank1
	subwf	(_kcomm_low_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_low_cnt^(0+128),w
	btfsc	3,0
	goto	i1l4588

;main.c: 1174: kcomm_low_cnt++;
	incf	_kcomm_low_cnt^(0+128),f
	btfsc	3,2
	incf	(_kcomm_low_cnt+1)^(0+128),f
i1l4588:	

;main.c: 1177: if(kcomm_low_cnt >= 1000)
	movlw	3
	subwf	(_kcomm_low_cnt+1)^(0+128),w
	movlw	232
	btfsc	3,2
	subwf	_kcomm_low_cnt^(0+128),w
	btfss	3,0
	goto	i1l4604

;main.c: 1178: {
;main.c: 1179: kcomm_low_cnt = 1000;
	movlw	232
	movwf	_kcomm_low_cnt^(0+128)
	movlw	3
	movwf	(_kcomm_low_cnt^(0+128)+1)

;main.c: 1181: if(kcomm_wakeup == 0)
	bcf	3,5	;RP0=0, select bank0
	movf	_kcomm_wakeup,w
	btfss	3,2
	goto	i1l4604

;main.c: 1182: {
;main.c: 1183: if(B_OnOff_Flag || g_slave_charging || g_slave_chargefull)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	btfsc	_g_slave_charging/(0+8),_g_slave_charging& (0+7)
	goto	i1l1330
	btfss	_g_slave_chargefull/(0+8),_g_slave_chargefull& (0+7)
	goto	i1l4604
i1l1330:	

;main.c: 1184: {
;main.c: 1185: kcomm_wakeup = 1;
	clrf	_kcomm_wakeup
	incf	_kcomm_wakeup,f

;main.c: 1186: kcomm_wakeup_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_wakeup_cnt^(0+128)
	clrf	(_kcomm_wakeup_cnt+1)^(0+128)

;main.c: 1187: }
;main.c: 1188: }
;main.c: 1189: }
;main.c: 1190: }
	goto	i1l4604
i1l4602:	

;main.c: 1191: else
;main.c: 1192: {
;main.c: 1193: kcomm_low_cnt = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_low_cnt^(0+128)
	clrf	(_kcomm_low_cnt+1)^(0+128)
i1l4604:	

;main.c: 1194: }
;main.c: 1197: if(kcomm_cycle >= 200)
	movlw	200
	bsf	3,5	;RP0=1, select bank1
	subwf	_kcomm_cycle^(0+128),w
	btfss	3,0
	return

;main.c: 1198: {
;main.c: 1199: kcomm_cycle = 0;
	clrf	_kcomm_cycle^(0+128)

;main.c: 1201: if(kcomm_turn == 0)
	movf	_kcomm_turn^(0+128),w
	btfss	3,2
	goto	i1l4624

;main.c: 1202: {
;main.c: 1204: kcomm_tx_buf = comm_pack_tx();
	fcall	_comm_pack_tx
	bsf	3,5	;RP0=1, select bank1
	movwf	_kcomm_tx_buf^(0+128)

;main.c: 1205: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1206: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1207: kcomm_tx_done = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_tx_done^(0+128)
	bcf	3,5	;RP0=0, select bank0
	bcf	70,6	;volatile

;main.c: 1209: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1210: kcomm_state = 1;
	clrf	_kcomm_state
	incf	_kcomm_state,f

;main.c: 1211: }
	return
i1l4624:	

;main.c: 1212: else
;main.c: 1213: {
;main.c: 1215: kcomm_rx_buf = 0;
	clrf	_kcomm_rx_buf^(0+128)

;main.c: 1216: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1217: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1218: kcomm_rx_done = 0;
	clrf	_kcomm_rx_done
	bcf	70,6	;volatile

;main.c: 1220: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1221: kcomm_state = 5;
	movlw	5
	movwf	_kcomm_state
	return
i1l4634:	

;main.c: 1230: if(kcomm_timer >= 20)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	20
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1341

;main.c: 1231: {
;main.c: 1232: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1233: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1234: kcomm_state = 2;
	movlw	2
	movwf	_kcomm_state

;main.c: 1235: }
	return
i1l1341:	

;main.c: 1236: else
;main.c: 1237: {
;main.c: 1238: PORTB6 = 1;
	bsf	6,6	;volatile
	return
i1l4642:	

;main.c: 1243: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1244: {
;main.c: 1245: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1246: kcomm_tx_shift = kcomm_tx_buf;
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_tx_buf^(0+128),w
	movwf	_kcomm_tx_shift^(0+128)

;main.c: 1247: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1248: PORTB6 = 1;
	bsf	6,6	;volatile

;main.c: 1249: kcomm_state = 3;
	movlw	3
	movwf	_kcomm_state
	return
i1l4652:	

;main.c: 1256: if(kcomm_timer >= 14)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	14
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1347
	movlw	8

;main.c: 1257: {
;main.c: 1259: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1260: kcomm_bit_idx ++;
	incf	_kcomm_bit_idx,f

;main.c: 1261: if(kcomm_bit_idx >= 8)
	subwf	_kcomm_bit_idx,w
	btfss	3,0
	goto	i1l1348

;main.c: 1262: {
;main.c: 1263: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1264: kcomm_state = 4;
	movlw	4
	movwf	_kcomm_state

;main.c: 1266: kcomm_cycle= 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_cycle^(0+128)

;main.c: 1267: }
	return
i1l1348:	

;main.c: 1268: else
;main.c: 1269: {
;main.c: 1270: kcomm_tx_shift <<= 1;
	bsf	3,5	;RP0=1, select bank1
	bcf	3,0
	rlf	_kcomm_tx_shift^(0+128),f
	return
i1l1347:	

;main.c: 1273: else
;main.c: 1274: {
;main.c: 1275: if(kcomm_tx_shift & 0x80)
	bsf	3,5	;RP0=1, select bank1
	btfss	_kcomm_tx_shift^(0+128),7
	goto	i1l4670

;main.c: 1276: {
;main.c: 1277: if(kcomm_timer <= 10)
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	11
L9:	
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1341

;main.c: 1281: else
;main.c: 1282: {
;main.c: 1283: PORTB6 = 0;
	bcf	6,6	;volatile
	return
i1l4670:	

;main.c: 1286: else
;main.c: 1287: {
;main.c: 1288: if(kcomm_timer <= 4)
	movlw	0
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	5
	goto	L9
i1l4674:	

;main.c: 1300: if(kcomm_timer >= 20)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	20
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1301: {
;main.c: 1302: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1303: do { TRISB6 = 1; } while(0);
	bsf	70,6	;volatile

;main.c: 1304: kcomm_tx_done = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_tx_done^(0+128)
	incf	_kcomm_tx_done^(0+128),f

;main.c: 1305: kcomm_turn = 1;
	clrf	_kcomm_turn^(0+128)
	incf	_kcomm_turn^(0+128),f
i1l4678:	

;main.c: 1306: kcomm_timer = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1307: kcomm_state = 0;
	clrf	_kcomm_state
	return
i1l4680:	

;main.c: 1312: if(kcomm_timer >= 40)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	40
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	goto	i1l1341

;main.c: 1313: {
;main.c: 1314: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1315: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1316: kcomm_state = 6;
	movlw	6
	movwf	_kcomm_state

;main.c: 1317: }
	return
i1l4688:	

;main.c: 1325: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return

;main.c: 1326: {
;main.c: 1327: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1328: bit_wait_fall = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)

;main.c: 1329: kcomm_bit_idx = 0;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_bit_idx

;main.c: 1330: kcomm_rx_shift = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_rx_shift^(0+128)
	bcf	3,5	;RP0=0, select bank0
	bsf	70,6	;volatile

;main.c: 1332: PORTB6 = 0;
	bcf	6,6	;volatile

;main.c: 1333: kcomm_state = 9;
	movlw	9
	movwf	_kcomm_state
	return
i1l4698:	

;main.c: 1338: if(kcomm_timer >= ((kcomm_bit_idx == 0 && bit_wait_fall == 0) ? 400u : 60u))
	movf	_kcomm_bit_idx,w
	btfss	3,2
	goto	i1l4702
	bsf	3,5	;RP0=1, select bank1
	movf	Kcomm_ISR@bit_wait_fall^(0+128),w
	btfsc	3,2
	goto	i1l4704
i1l4702:	
	movlw	60
	bcf	3,5	;RP0=0, select bank0
	movwf	_Kcomm_ISR$624
	clrf	_Kcomm_ISR$624+1
	goto	i1l1373
i1l4704:	
	movlw	144
	bcf	3,5	;RP0=0, select bank0
	movwf	_Kcomm_ISR$624
	movlw	1
	movwf	_Kcomm_ISR$624+1
i1l1373:	
	movf	_Kcomm_ISR$624+1,w
	subwf	_kcomm_timer+1,w
	btfss	3,2
	goto	u402_25
	movf	_Kcomm_ISR$624,w
	subwf	_kcomm_timer,w
u402_25:	
	btfss	3,0
	goto	i1l4714

;main.c: 1339: {
;main.c: 1340: kcomm_rx_done = 0xFF;
	movlw	255
	movwf	_kcomm_rx_done

;main.c: 1341: kcomm_turn = 0;

;main.c: 1342: kcomm_timer = 0;
	fcall	PL18	;call to abstracted procedure
i1l4712:	

;main.c: 1343: kcomm_state = 0;
	clrf	_kcomm_state

;main.c: 1344: break;
	return
i1l4714:	

;main.c: 1345: }
;main.c: 1346: if(bit_wait_fall == 0)
	bsf	3,5	;RP0=1, select bank1
	movf	Kcomm_ISR@bit_wait_fall^(0+128),w

;main.c: 1347: {
;main.c: 1349: if(((PORTB & 0x40) ? 1 : 0))
	bcf	3,5	;RP0=0, select bank0
	btfss	3,2
	goto	L10
	btfss	6,6	;volatile
	return

;main.c: 1350: {
;main.c: 1351: kcomm_timer = 0;
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1

;main.c: 1352: bit_wait_fall = 1;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)
	incf	Kcomm_ISR@bit_wait_fall^(0+128),f
	return
L10:	
;main.c: 1355: else
;main.c: 1356: {
;main.c: 1358: if(!((PORTB & 0x40) ? 1 : 0))

	btfsc	6,6	;volatile
	return
	movlw	0

;main.c: 1359: {
;main.c: 1360: kcomm_rx_shift <<= 1;
	bsf	3,5	;RP0=1, select bank1
	bcf	3,0
	rlf	_kcomm_rx_shift^(0+128),f

;main.c: 1361: if(kcomm_timer >= 7)
	bcf	3,5	;RP0=0, select bank0
	subwf	_kcomm_timer+1,w
	movlw	7
	btfsc	3,2
	subwf	_kcomm_timer,w

;main.c: 1362: kcomm_rx_shift |= 1;
	bsf	3,5	;RP0=1, select bank1
	btfsc	3,0
	bsf	_kcomm_rx_shift^(0+128),0
	movlw	8

;main.c: 1364: bit_wait_fall = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	Kcomm_ISR@bit_wait_fall^(0+128)

;main.c: 1365: kcomm_bit_idx++;
	bcf	3,5	;RP0=0, select bank0
	incf	_kcomm_bit_idx,f

;main.c: 1367: if(kcomm_bit_idx >= 8)
	subwf	_kcomm_bit_idx,w
	btfss	3,0
	return

;main.c: 1368: {
;main.c: 1369: kcomm_rx_buf = kcomm_rx_shift;
	bsf	3,5	;RP0=1, select bank1
	movf	_kcomm_rx_shift^(0+128),w
	movwf	_kcomm_rx_buf^(0+128)
	movlw	10

;main.c: 1370: kcomm_rx_done = 1;
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_rx_done
	incf	_kcomm_rx_done,f

;main.c: 1371: kcomm_turn = 0;
	fcall	PL18	;call to abstracted procedure

;main.c: 1373: kcomm_state = 10;
	movwf	_kcomm_state
	return
i1l4742:	

;main.c: 1379: if(kcomm_timer >= 10)
	movlw	0
	subwf	_kcomm_timer+1,w
	movlw	10
	btfsc	3,2
	subwf	_kcomm_timer,w
	btfss	3,0
	return
	goto	i1l4678
i1l4750:	
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
	goto	i1l4712
	movwf	4
	movlw	10
	subwf	4,w
	btfsc	3,0
	goto	i1l4712
	movlw	high i1S5798
	movwf	10
	movlw	low i1S5798
	addwf	4,w
	movwf	2
	return
__end_of_Kcomm_ISR:	
	opt stack 0
PL10:	
	opt stack 4
	clrf	_kcomm_wakeup
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_wakeup_cnt^(0+128)
	clrf	(_kcomm_wakeup_cnt+1)^(0+128)
	clrf	_kcomm_low_cnt^(0+128)
	clrf	(_kcomm_low_cnt+1)^(0+128)
	bcf	3,5	;RP0=0, select bank0
	return
__end_ofPL10:	
	opt stack 0
PL18:	
	opt stack 2
	bsf	3,5	;RP0=1, select bank1
	clrf	_kcomm_turn^(0+128)
	bcf	3,5	;RP0=0, select bank0
	clrf	_kcomm_timer
	clrf	_kcomm_timer+1
	return
__end_ofPL18:	
	opt stack 0

	psect	swtext1
__pswtext1:	
	opt stack 2
i1S5798:	
	ljmp	i1l4634
	ljmp	i1l4642
	ljmp	i1l4652
	ljmp	i1l4674
	ljmp	i1l4680
	ljmp	i1l4688
	ljmp	i1l4712
	ljmp	i1l4712
	ljmp	i1l4698
	ljmp	i1l4742

	psect	text25
__ptext25:	
;; *************** function _comm_pack_tx *****************
;; Defined at:
;;		line 1080 in file "main.c"
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

;main.c: 1082: unsigned char lo = 0;

;incstack = 0
; Regs used in _comm_pack_tx: [wreg+status,2+status,0]
	bcf	3,5	;RP0=0, select bank0
	clrf	comm_pack_tx@lo

;main.c: 1083: unsigned char hi;
;main.c: 1084: unsigned char result;
;main.c: 1087: if(!PORTA3)
	btfss	5,3	;volatile

;main.c: 1088: {
;main.c: 1089: lo |= 0x01;
	bsf	comm_pack_tx@lo,0

;main.c: 1090: }
;main.c: 1092: if(B_OnOff_Flag)
	btfss	_B_OnOff_Flag/(0+8),_B_OnOff_Flag& (0+7)
	goto	i1l3862

;main.c: 1093: {
;main.c: 1094: lo |= 0x04;
	bsf	comm_pack_tx@lo,2

;main.c: 1097: if(B_LowPower_Flag)
	btfss	_B_LowPower_Flag/(0+8),_B_LowPower_Flag& (0+7)
	goto	i1l3862

;main.c: 1098: lo |= 0x02;
	bsf	comm_pack_tx@lo,1
i1l3862:	

;main.c: 1099: }
;main.c: 1102: lo = lo & 0x0F;
	movlw	15
	andwf	comm_pack_tx@lo,f

;main.c: 1103: hi = lo ^ 0x0F;
	movf	comm_pack_tx@lo,w
	xorlw	15
	movwf	comm_pack_tx@hi

;main.c: 1104: result = (hi << 4) | lo;
	swapf	comm_pack_tx@hi,w
	andlw	240
	iorwf	comm_pack_tx@lo,w
	movwf	comm_pack_tx@result

;main.c: 1105: return result;
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
;!    BSS         69
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            46     12      38
;!    BANK1            80     12      58
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
;!    _main->_Delay_Init
;!    _main->_fan_ramp_proc
;!    _Sleep_Func->_delay_us
;!    _ADC_Init->_delay_us
;!    _LedMode_Func->_show_gear_led
;!    _Key_Application->_Battery_Update
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
;!    _Battery_Update->_adc_read_vdd
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
;! (0) _main                                                 0     0      0    2886
;!                           _ADC_Init
;!                     _Battery_Update
;!                       _Comm_Process
;!                         _Delay_Init
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
;!                      _show_gear_led
;! ---------------------------------------------------------------------------------
;! (1) _Key_Func                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Key_Application                                      3     3      0     876
;!                                              4 BANK1      3     3      0
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
;!                                              8 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _trigger_warn                                         1     1      0      31
;!                                              8 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _set_fan                                              1     1      0      96
;!                                              8 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Battery_Update                                       2     2      0     297
;!                                             10 BANK0      2     2      0
;!                       _adc_read_vdd
;! ---------------------------------------------------------------------------------
;! (3) _adc_read_vdd                                         6     4      2      77
;!                                              8 BANK0      2     0      2
;!                                              0 BANK1      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _Flag_AllClear                                        0     0      0       0
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
;! (4) _Timer1_Isr                                           3     3      0     119
;!                                              5 BANK0      3     3      0
;!                          _Kcomm_ISR
;! ---------------------------------------------------------------------------------
;! (5) _Kcomm_ISR                                            2     2      0     119
;!                                              3 BANK0      2     2      0
;!                       _comm_pack_tx
;! ---------------------------------------------------------------------------------
;! (6) _comm_pack_tx                                         3     3      0      95
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
;!   _Flag_AllClear
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
;!BITBANK0            2E      0       1       3        2.2%
;!BANK0               2E      C      26       4       82.6%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      C      3A       6       72.5%
;!ABS                  0      0      60       7        0.0%
;!DATA                 0      0      60       8        0.0%
