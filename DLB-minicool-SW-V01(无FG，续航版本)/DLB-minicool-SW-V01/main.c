///////////////////////////////////////////////////////////////////////
////////////////////////////    头文件    ////////////////////////////
////////////////////////////////////////////////////////////////////////
#include "htc.h"
#include "inital.h"
#include "PWM.h"
#define u16 unsigned int
#define u8  unsigned char
//***************************************************************
#define KEDA_TRIS      TRISB6
#define KEDA_PORT      PORTB6

#define KEDA_SET_OUTPUT()   do { KEDA_TRIS = 0; } while(0)
#define KEDA_SET_INPUT()    do { KEDA_TRIS = 1; } while(0)
#define KEDA_READ()   		((PORTB & 0x40) ? 1 : 0)

// 每个计时单位 = 50us（中断周期）
unsigned char kcomm_state;
unsigned int  kcomm_timer;    // 当前状态计时
unsigned char kcomm_tx_buf;    // 待发送字节
unsigned char kcomm_tx_shift;  // 发送时移位寄存器，bit计数0~8，用于判断发送完成
unsigned char kcomm_rx_buf;    // 接收缓冲
unsigned char kcomm_bit_idx;    // bit索引 0~7
unsigned char kcomm_turn;    // 0=发送轮 1=接收轮
u8  kcomm_cycle;    // 10ms周期计时（在中断里递增）
unsigned char kcomm_rx_done;    // 1=收到一帧，待主循环解析
unsigned char kcomm_rx_shift;	// 接收时移位寄存器，bit计数0~8，用于判断接收完成
unsigned char kcomm_tx_done;    // 1=发送完一帧
unsigned int  kcomm_low_cnt;    // 总线低电平持续计数（休眠检测）
unsigned char kcomm_wakeup;    // 1=正在执行唤醒
unsigned int  kcomm_wakeup_cnt; // 唤醒计时

/**
LED相关定义：
LED5---第一颗灯
LED4---第二颗灯
.		   
.
.
LED1---第五颗灯
**/
#define Led1_io			PORTB1
#define Led2_io			PORTB0
#define Led3_io			PORTA7
#define Led4_io			PORTA6
#define Led5_io			PORTA4

#define	LED1_OFF()		(Led1_io = 1)		
#define	LED1_ON()		(Led1_io = 0)
#define	LED2_OFF()		(Led2_io = 1)		
#define	LED2_ON()		(Led2_io = 0)
#define	LED3_OFF()		(Led3_io = 1)		
#define	LED3_ON()		(Led3_io = 0)
#define	LED4_OFF()		(Led4_io = 1)		
#define	LED4_ON()		(Led4_io = 0)
#define	LED5_OFF()		(Led5_io = 1)		
#define	LED5_ON()		(Led5_io = 0)
/**按键相关定义**/
#define K1_io			PORTA2
#define K2_io			PORTA1
#define Switch_io		PORTA3

/**ADC相关定义**/
/* ---------------------------------------------------------------
 *  ADC 阈值（12bit，参考1.3V，测AN5=VDD/4）
 	5200 = 4*1.3*1000
 *  VDD_mV = adc * 5200 / 4096  （近似，误差<0.1%）
 *
 *  3000mV → adc = 3000*4096/5200 = 2363
  	3200mV → adc = 3200*4096/5200 = 2521
 *  3400mV → adc = 3400*4096/5200 = 2678
 *  3700mV → adc = 3700*4096/5200 = 2914
 *  3900mV → adc = 3900*4096/5200 = 3072
 *  4100mV → adc = 4100*4096/5200 = 3229
 *  4200mV → adc = 4200*4096/5200 = 3308
 * --------------------------------------------------------------- */
#define ADC_3000MV   2363u
#define ADC_3030MV   2387u
#define ADC_3100MV   2442u
#define ADC_3200MV   2521u
#define ADC_3230MV   2544u
#define ADC_3300MV   2599u
#define ADC_3400MV   2678u
#define ADC_3700MV   2914u
#define ADC_3900MV   3072u
#define ADC_4100MV   3229u
#define ADC_4150MV   3268u 
#define ADC_4200MV   3308u
unsigned char  adcon1_val    = 0;   /* ADC配置寄存器缓存 */
// 标志位联合体
union{
	// 共用地址，访问某一位时用结构体成员
	struct{
		unsigned b0: 1;
		unsigned b1: 1;
		unsigned b2: 1;
		unsigned b3: 1;
		unsigned b4: 1;
		unsigned b5: 1;
		unsigned b6: 1;
		unsigned b7: 1;
	}OnrBit;
	
	// 8bit整体赋值时用该变量
	unsigned char AllBits;
}DIY_Flag1,DIY_Flag2;

// 通用 位定义
#define B_ScanMain		    DIY_Flag1.OnrBit.b0
#define K1_Flag			    DIY_Flag1.OnrBit.b1
#define K2_Flag			    DIY_Flag1.OnrBit.b2
#define Switch_Flag		    DIY_Flag1.OnrBit.b3
#define fg_blink_on		    DIY_Flag1.OnrBit.b4   
#define B_KEYHX_Flag	    DIY_Flag1.OnrBit.b5   
#define g_warn_blink	    DIY_Flag1.OnrBit.b6   
#define g_offshow_flag	    DIY_Flag1.OnrBit.b7  /* 1=正在显示电量 */

#define B_OnOff_Flag		DIY_Flag2.OnrBit.b0
#define B_LowPower_Flag		DIY_Flag2.OnrBit.b1
#define g_slave_charging	DIY_Flag2.OnrBit.b2
#define g_slave_chargefull	DIY_Flag2.OnrBit.b3
#define g_PwrDone			DIY_Flag2.OnrBit.b4


// 通用 变量
u16 g_k1_hold_ms;    /* K1持续按下时间 */
u16 g_k2_hold_ms;    /* K2持续按下时间 */
u8  g_gear;	/* 当前档位 */
u8  g_target_pwm;       /* 目标 PWM 占空比 */
u16 g_current_pwm;      /* 当前实际 PWM（定点精度0.1，平滑渐变） */
u8  g_battery_empty;    /* 电量耗尽标志 */
u8  g_warn_flash;    /* 剩余快闪次数，0=无提示 */
u8  g_warn_led;    /* 提示LED编号：1=LED1（不能减档），5=LED5（不能加档） */
u8  g_k1_prev;    /* K1上次状态 */
u8  g_k2_prev;    /* K2上次状态 */
 
u8  g_warn_cnt;
u16 g_offshow_ms;    /* 显示计时（×1ms） */
unsigned char level;
/* ---------------------------------------------------------------
 *  充电LED显示用去抖电平：
 *  level 由 Battery_Update() 每8ms更新一次，ADC 波动可能导致
 *  level 在相邻档位间反复跳变，引起 LED 闪烁。
 *  disp_level 对 level 做3次连续确认后才更新，消除抖动。
 *  仅占1字节RAM + 1字节计数，对 Flash 影响极小。
 * --------------------------------------------------------------- */
u16 g_vdd_adc;
u8  g_overclock_pwm;    /* 超频模式 PWM 占空比（0-50） */
u16 g_pwr_delay_ms;   /* 开机到风扇启动的延迟计数 */
u16 g_slave_alive_ms;
const u8 c_fan_duty[7] = {0, 25, 50, 68, 87, 105, 124};// 0%, 25%, 40%, 55%, 70%, 85%, 100%
void ADC_Init(void);
void Comm_Process(void);
void show_gear_led(u8 gear);
////////////////////////////////////////////////////////////////////////
////////////////////////////    子程序    ////////////////////////////
////////////////////////////////////////////////////////////////////////
//******************************延时子程序******************************
/*------------------------------------------------
上电延时
------------------------------------------------*/
void Delay_Init(u16 Delay_Duty)
{   
	u16 i;
 	
	for(i = 0; i <= Delay_Duty; i ++)
	{
		#asm		// 喂狗
		clrwdt
		#endasm;
	}
}
 
void delay_us(unsigned int us)
{
    unsigned int i;

    while(us--)
    {
        /* 约1us（需根据主频微调） */
        for(i = 0; i < 4; i++)
        {
            #asm
            nop
            #endasm
        }
    }
}

/*---------------------------休眠---------------------------------------*/
void Sleep_Func(void)
{
    static u16 Sleep_Time = 0;

    // 1. 以下任一条件活跃时，重置休眠计时器
    if(B_OnOff_Flag || B_KEYHX_Flag || g_slave_charging || g_slave_chargefull || g_offshow_flag || kcomm_wakeup)
    {
        Sleep_Time = 0;
    }
    Sleep_Time++;
    if(Sleep_Time >= 1000) // 1秒无操作进入休眠（1ms * 1000）
    { 
        Sleep_Time = 0;
        LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();

        GIE = 0;
        T0IE = 0;
        T1IE = 0;
        T2IE = 0;
        INTECON = 0;
        PIR = 0;

        ADCON0 = 0;
        ADCON1 = 0;
        ANSELL = 0;
        ANSELH = 0;

        /* IO 状态配置：休眠时 KEDA(PB6) 为下拉输入 */
        TRISA = 0x0E;               // PA1,2,3 输入
        TRISB = 0x48;               // PB3, PB6 输入
        
        PHCON1 = 0xF1;              // PA1,2,3 上拉使能
        PHCON  = 0xFF;
        PDCON1 = 0xFF;              // PB6 下拉使能（满足协议要求的下拉输入）
        PDCON  = 0xBF;

        delay_us(1000);             // 延时稳定

        BOREN = 0;
        WDTEN = 0;

        /* 4. 配置唤醒源 */
        IOCA = 0x0E;                // 按键/开关唤醒
        IOCB = 0x40;                // 从机充电信号（PB6）唤醒

        unsigned char temp;
        temp = PORTA;
        temp = PORTB;
        (void)temp;

        PAIF = 0;
        PBIF = 0;
        PAIE = 1;
        PBIE = 1;

        /* 5. 执行休眠 */
        #asm 
        clrwdt 
        nop 
        sleep                   // 进入休眠
        nop 
        #endasm 	 
        WDTEN = 1;    // 恢复看门狗
        ADEN  = 1;   
        
        if(KEDA_READ())
        {
            /* 确认为有效充电唤醒 */
            g_slave_charging = 1;   // 立即进入充电显示状态
            g_slave_alive_ms = 3000; // 锁定在线状态，防止误休眠
            
            /* 等待从机高电平脉冲结束 */
            while(KEDA_READ())
            {
                #asm
                clrwdt
                #endasm
            }

            /* 立即强制启动一轮通信握手 */
            kcomm_cycle = 195;      
            kcomm_wakeup = 0;
        }
        // 处理其他唤醒源（按键/开关）
        temp = PORTA;
        temp = PORTB;
        (void)temp;
        PAIF = 0;
        PBIF = 0;
        PAIE = 0;
        PBIE = 0;

        if(!K1_io || !K2_io)
        {
            B_KEYHX_Flag = 1;   // 按键唤醒标志，用于显示电量
        }
        inital();     // 恢复端口配置
        sysinitial(); // 恢复定时器  
        ADC_Init();
        BOREN = 1; 
        Sleep_Time = 0;
        B_ScanMain = 0;
    }
}
/*-------------------------------ADC--------------------------------------*/
/* ---------------------------------------------------------------
 *  ADC 初始化（使用内部 AN5 = 1/4VDD，参考电压1.3V）
 *  channel=5, voltage=1（内部1.3V）
 * --------------------------------------------------------------- */
void ADC_Init(void)
{
    ANSELL=0X20;        // 1=AD模拟输入，0=I/O数字模式
    ANSELH=0X00;        // 1=AD模拟输入，0=I/O数字模式
    ADCON0=0X15;        // 配置AD通道5，参考1/4VDD
    adcon1_val = 0X08;  // 参考电压1.3V
    ADCON1 = adcon1_val;
    ADEN = 1;           /* 使能ADC模块 */
    delay_us(100);      /* 等待ADC稳定 */
}
/* ---------------------------------------------------------------
 *  读取VDD（通过AN5=VDD/4，返回12bit ADC原始值）
 *  换算公式：VDD_mV = AD*5200/4096
 * --------------------------------------------------------------- */
unsigned int adc_read_vdd(void)
{
    unsigned int result;

    ADCON0 = 0x15;
    ADCON1 = adcon1_val;
    ADEN = 1;

    ADIF = 0;
    ADON = 1;           /* 启动转换 */

    while(ADON)         /* 等待转换完成 */
    {
        #asm
        clrwdt
        #endasm
    }

    result = ((unsigned int)ADRESH << 4) | (ADRESL >> 4);
    return result;
}
void LedMode_Func(void)
{
    /* 呼吸动画内部变量 */
    static u8  chg_pwm_cnt  = 0;   /* 软件PWM计数 0~19 */
    static u8  breath_duty  = 0;   /* 呼吸亮度   0~20  */
    static u8  breath_dir   = 1;   /* 1=渐亮 0=渐暗    */
    static u8  breath_cnt   = 0;   /* 呼吸步进节拍     */

    /* 电量耗尽：全灭，最高优先级 */
    if(g_battery_empty)
    {
        LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
        return;
    }

    /* 充电中 / 已充满 显示模式 */
    if((g_slave_charging || g_slave_chargefull) && !B_OnOff_Flag)
    {
        /* 呼吸步进（每50ms进一步） */
        breath_cnt++;
        if(breath_cnt >= 50)
        {
            breath_cnt = 0;
            if(breath_dir)
            {
                if(breath_duty < 20) breath_duty++;
                else                 breath_dir = 0;
            }
            else
            {
                if(breath_duty > 0)  breath_duty--;
                else                 breath_dir = 1;
            }
        }

        /* 软件PWM计数 */
        chg_pwm_cnt++;
        if(chg_pwm_cnt >= 20)
            chg_pwm_cnt = 0;

        if(g_slave_chargefull)
        {
            /* 充满：五格全亮 */
            LED1_ON(); LED2_ON(); LED3_ON(); LED4_ON(); LED5_ON();
            breath_duty = 20;
            breath_dir  = 0;
            breath_cnt  = 0;
        }
        else
        {
            /* 充电中：已充格常亮，当前格呼吸，未充格灭 */
            
            if(level >= 2)      { LED5_ON(); }
            else if(level == 1) { if(chg_pwm_cnt < breath_duty) LED5_ON(); else LED5_OFF(); }
            else                     { LED5_OFF(); }

            /* LED4 → 第2格 */
            if(level >= 3)      { LED4_ON(); }
            else if(level == 2) { if(chg_pwm_cnt < breath_duty) LED4_ON(); else LED4_OFF(); }
            else                     { LED4_OFF(); }

            /* LED3 → 第3格 */
            if(level >= 4)      { LED3_ON(); }
            else if(level == 3) { if(chg_pwm_cnt < breath_duty) LED3_ON(); else LED3_OFF(); }
            else                     { LED3_OFF(); }

            /* LED2 → 第4格 */
            if(level >= 5)      { LED2_ON(); }
            else if(level == 4) { if(chg_pwm_cnt < breath_duty) LED2_ON(); else LED2_OFF(); }
            else                     { LED2_OFF(); }

            /* LED1 → 第5格 */
            if(level >= 6)      { LED1_ON(); }
            else if(level == 5) { if(chg_pwm_cnt < breath_duty) LED1_ON(); else LED1_OFF(); }
            else                     { LED1_OFF(); }
        }
        return;
    }

    /* 超频模式呼吸灯（档位6） */
    if(B_OnOff_Flag && g_gear == 6)
    {
        breath_cnt++;
        if(breath_cnt >= 20) // 每20ms更新一次，使呼吸平滑
        {
            breath_cnt = 0;
            if(breath_dir)
            {
                if(breath_duty < 50) breath_duty++;
                else                 breath_dir = 0;
            }
            else
            {
                if(breath_duty > 0)  breath_duty--;
                else                 breath_dir = 1;
            }
            g_overclock_pwm = breath_duty; // 同步给中断中的 PWM 逻辑
        }
        return;
    }

    /* 非充电/超频时重置呼吸参数 */
    if(!g_slave_charging && !g_slave_chargefull && g_gear != 6)
    {
        breath_duty = 0;
        breath_dir  = 1;
        breath_cnt  = 0;
        chg_pwm_cnt = 0;
    }

    /* 关机 + 电量显示计时 */
    if(!B_OnOff_Flag && g_offshow_flag)
    {
        show_gear_led(level);
        return;
    }

    /* 开机 + 警告快闪 */
    if(B_OnOff_Flag && g_warn_flash > 0)
        return;

    /* 开机：正常显示档位 */
   if(B_OnOff_Flag)
    {
        show_gear_led(g_gear);
        return;
    }
    /* 关机且无其他状态：全灭 */
    LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
}

void Battery_Update(void)
{
    static u8  loop_num = 0;
    static u16 loop_sum = 0;
    static u8  low_debounce = 0;
    static u8  low_clr_debounce = 0;
    static u8  startup_cnt = 50;  // 上电后前50次采样不判断低压

    loop_sum += adc_read_vdd();
    loop_num++;
    if(loop_num < 8) return;    // 累积8次后取均值

    g_vdd_adc = (u16)(loop_sum >> 3);
    loop_num  = 0;
    loop_sum  = 0;

    if(g_slave_chargefull)           level = 6;
    
    else if(g_slave_charging)
    {
    	if(g_vdd_adc < ADC_3000MV)  level = 0;
    	else if(g_vdd_adc < ADC_3400MV)  level = 1;
    	else if(g_vdd_adc < ADC_3700MV)  level = 2;
    	else if(g_vdd_adc < ADC_3900MV)  level = 3;
    	else if(g_vdd_adc < ADC_4100MV)  level = 4;
    	else  level = 5;
    }
    else
    {
    	if(g_vdd_adc < ADC_3000MV)  level = 0;
    	else if(g_vdd_adc < ADC_3400MV)  level = 1;
    	else if(g_vdd_adc < ADC_3700MV)  level = 2;
	    else if(g_vdd_adc < ADC_3900MV)  level = 3;
	    else if(g_vdd_adc < ADC_4100MV)  level = 4;
	    else if(g_vdd_adc < ADC_4150MV)  level = 5;
	    else                             level = 6;
    }
   

    if(startup_cnt > 0) { startup_cnt--; B_LowPower_Flag = 0; return; }

    if(!B_LowPower_Flag)
    {
        /* 滤波值 < 3.2V，连续5次确认（5×8ms=40ms）才置低压标志 */
        if(g_vdd_adc < ADC_3200MV) { if(++low_debounce >= 5) B_LowPower_Flag = 1; }
        else                        { low_debounce = 0; }
    }
    else
    {
        /* 滤波值 ≥ 3.23V，连续3次确认才解除低压 */
        if(g_vdd_adc >= ADC_3230MV) { if(++low_clr_debounce >= 3) { B_LowPower_Flag = 0; low_debounce = 0; } }
        else                         { low_clr_debounce = 0; }
    }
}
/*-------------------------------档位LED显示-------------------------------*/
/*
 * 普通模式：显示当前档位对应颗数的 LED
 * gear=1→亮LED5; gear=2→亮LED5,LED4; 以此类推 gear=5→全亮
 * gear=6（超频）：LED5~1全亮，由中断控制 LED1 快闪
 */
void show_gear_led(u8 gear)
{
    LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();   
    if(gear >= 1) LED5_ON();
    if(gear >= 2) LED4_ON();
    if(gear >= 3) LED3_ON();
    if(gear >= 4) LED2_ON();
    if(gear >= 5) LED1_ON();
}

/*-------------------------------风扇控制-------------------------------*/
/*
 * 根据档位设置风扇 PWM（Timer1 PWM → PB2/TM1PWM）
 * PWM频率：1KHZ
 */
void set_fan(u8 gear)
{
    if(gear == 0)
    {
        g_target_pwm = 0;
        return;
    }
    if(gear > 6) 
        gear = 6;
    
    g_target_pwm = c_fan_duty[gear];
}
/*-------------------------------5档降功率处理-------------------------------
 * 5档运行前10分钟保持85%占空比，
 * 之后每隔1分钟下降3%，直至76%后保持不变。
 * 离开5档（换档/充电/关机）后计时和百分比复位，
 * 下次重新进入5档从85%重新计时。
 * 本函数由主循环 1ms 节拍调用。
 *-----------------------------------------------------------------------*/
void Gear5_Duty_Update(void)
{
    static u16 ms_sub      = 0;   /* 1ms累加到1000才算1秒，节省RAM，避免u32 */
    static u16 sec_cnt     = 0;   /* 当前阶段已持续的秒数 */
    static u8  cur_percent = 85;  /* 当前目标占空比百分比 */
     /* 不在5档（或充电固定1档、其它档位）时复位，保证下次进入5档从85%开始 */
    if(g_gear != 5 || g_slave_charging || g_slave_chargefull)
    {
        ms_sub      = 0;
        sec_cnt     = 0;
        cur_percent = 85;
        return;
    }
    ms_sub++;
    if(ms_sub < 1000)          /* 累计满1秒再处理 */
        return;
    ms_sub = 0;
    sec_cnt++;
    if(cur_percent == 85)
    {
        if(sec_cnt >= 600)     /* 10分钟后开始降功率 */
        {
            sec_cnt     = 0;
            cur_percent -= 3;   /* 第一次降3% */
        }
    }
    else if(cur_percent > 76)
    {
        if(sec_cnt >= 60)      /* 每隔1分钟降3% */
        {
            sec_cnt = 0;
            if(cur_percent >= 79)
                cur_percent -= 3;   /* 82->79, 79->76 */
            else
                cur_percent = 76;   /* 保险，防止意外越界 */
        }
    }
     /* 百分比 -> PWM占空比计数（124对应100%），四舍五入 */
    g_target_pwm = (u8)(((u16)cur_percent * 124u + 50u) / 100u);
}

/* 
 * 1ms 调用的风扇 PWM 爬坡处理
 */
void fan_ramp_proc(void)
{
    u16 target_fixed = (u16)g_target_pwm << 4; // 扩大16倍用于平滑
    
    if(g_target_pwm == 0)
    {
    	g_current_pwm = 0;
    	PWM0P = 0;
    	PORTB2 = 0;
    	return;
    }
    
    if(g_current_pwm < target_fixed)
    {
        g_current_pwm += 1; // 约250ms 从 0% 升到 100%
        if(g_current_pwm > target_fixed) g_current_pwm = target_fixed;
    }
    else if(g_current_pwm > target_fixed)
    {
        g_current_pwm -= 1;
        if(g_current_pwm < target_fixed) g_current_pwm = target_fixed;
    }
    
    PWM0P = (u8)(g_current_pwm >> 4);
    if(PWM0P == 0) PORTB2 = 0;
}
/*-------------------------------警告快闪-------------------------------*/
/*
 * 触发提示快闪（共闪2次）
 * led_num: 1=LED1（5档时不能加档）
 *          5=LED5（1档时不能减档）
 */
void trigger_warn(u8 led_num)
{
    if(g_warn_flash == 0)       // 剩余快闪次数为0时才允许触发
    {
        g_warn_flash = 4;       // 闪两次：亮-灭-亮-灭（4个变化）
        g_warn_led   = led_num;
        g_warn_blink = 0;
        g_warn_cnt   = 0;
    }
}
/*
 * 警告快闪处理（1ms调用一次）
 */
void warn_flash_proc(void)
{
    if(g_warn_flash == 0) 
        return;
    g_warn_cnt++;
    if(g_warn_cnt < 150) // 150ms 闪烁周期
        return;
    g_warn_cnt = 0;
 
    /* 周期到，切换一次亮灭 */
    g_warn_blink = !g_warn_blink;
    g_warn_flash--;

    if(g_warn_led == 1)
    {
        /* 已到5档上限：LED5~2常亮，LED1闪烁 */
        LED5_ON(); LED4_ON(); LED3_ON(); LED2_ON();
        if(g_warn_blink) LED1_OFF(); else LED1_ON();
    }
    else if(g_warn_led == 5)
    {
        /* 1档下限/充电固定1档按键提示：只有LED5闪烁 */
        LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
        if(!g_warn_blink) 
            LED5_ON();
    }
    
    /* 闪烁结束后恢复当前档位显示 */
    if(g_warn_flash == 0)
    {
        show_gear_led(g_gear);
    }
}

/*------------------------按键扫描去抖-----------------------------------*/
void Key_Func(void)
{
    static u8 key1_time1 = 0;
    static u8 key1_time2 = 0;
    static u8 key2_time1 = 0;
    static u8 key2_time2 = 0;
    // 减键
    if(!K1_io)      // S1按下
    {
        key1_time2 = 0;
        key1_time1 ++;
        if(key1_time1 >= 10)
        {
            key1_time1 = 0;
            K1_Flag = 1;
        }
    }
    else
    {
        // S1松开
        key1_time1 = 0;
        key1_time2 ++;
        if(key1_time2 >= 10)
        {
            key1_time2 = 0;
            K1_Flag = 0;
        }
    }
    // 加键
    if(!K2_io)      // S2按下
    {
        key2_time2 = 0;
        key2_time1 ++;
        if(key2_time1 >= 10)
        {
            key2_time1 = 0;
            K2_Flag = 1;
        }
    }
    else
    {
        // S2松开
        key2_time1 = 0;
        key2_time2 ++;
        if(key2_time2 >= 10)
        {
            key2_time2 = 0;
            K2_Flag = 0;
        }
    }
}
/**开关机键函数**/
void SW_Func()
{
    static u8 sw_time1 = 0;
    static u8 sw_time2 = 0;
    
    if(Switch_io)
    {
        // 关机
        sw_time2 = 0;
        sw_time1 ++;
        if(sw_time1 >= 20)
        {
            sw_time1 = 0;
            if(B_OnOff_Flag)
            {
            	g_offshow_flag = 0;
            	g_offshow_ms = 0;
            }
            B_OnOff_Flag = 0;
            B_KEYHX_Flag = 0; // 关机时清除唤醒标志，准备重新计时休眠

            g_pwr_delay_ms = 0;
          
        }
    }
    else
    {
        // 开机
        sw_time1 = 0;
        sw_time2 ++;
        if(sw_time2 >= 20)
        {
            sw_time2 = 0;
            B_OnOff_Flag = 1;
            B_KEYHX_Flag = 0; // 开机时清除唤醒标志
        }
    }
}
// 按键应用函数
/*
 * Key_Application() — 1ms调用
 *
 * 功能：
 *  【关机状态（B_OnOff_Flag=0）】
 *    短按加键或减键：显示电池电量，5秒后自动灭灯（Sleep_Func负责休眠）
 *
 *  【开机状态（B_OnOff_Flag=1，下拨开关）】
 *    进入一档，LED5亮，风扇一档
 *    短按加键：升档（1→2→3→4→5），亮对应颗数LED
 *    5档继续短按加键：LED1快闪2次提示不能加档
 *    长按加键1.5秒：进入超频第6档，LED1快闪提示，风量最大
 *    短按减键：降档（5→4→3→2→1），亮对应颗数LED
 *    1档继续短按减键：LED5快闪2次提示不能减档
 *    上拨开关（SW_Func置B_OnOff_Flag=0）：停风扇，全灭LED，进入关机状态
 */
void Key_Application()
{
    u8 edge;
    u8 cur;
    static u8 off_key_prev = 0;
    warn_flash_proc();  // 处理提示快闪

    /* --- 电量耗尽锁定 --- */
    if(g_vdd_adc <= ADC_3000MV)
    {
        g_battery_empty = 1;
    }
    else if(g_vdd_adc >= ADC_3030MV)
    {
        g_battery_empty = 0;
    }

    if(g_battery_empty)
    {
        B_OnOff_Flag = 0;
        set_fan(0);
        LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
        g_offshow_flag = 0;
        g_offshow_ms   = 0;
        g_warn_flash   = 0;
        g_gear         = 0;
        g_k1_prev = K1_Flag;
        g_k2_prev = K2_Flag;
        g_k1_hold_ms = 0;
        g_k2_hold_ms = 0;
        return;
    }

/* ================================================================
 *  一、关机状态：短按任意键显示电量
 * ================================================================ */
    if(B_OnOff_Flag == 0)
    {
        edge = 0;
        if(B_KEYHX_Flag)
        {
            edge = 1;
            B_KEYHX_Flag = 0;
        }
        cur = K1_Flag || K2_Flag;
        if(cur && !off_key_prev)
            edge = 1;              
        off_key_prev = cur;
        if(edge)
        {
            Battery_Update();
            g_offshow_flag = 1;
            g_offshow_ms   = 0;
            show_gear_led(level);
        }
        if(g_offshow_flag)
        {
            g_offshow_ms++;
            if(g_offshow_ms >= 5000)
            {
                g_offshow_flag = 0;
                g_offshow_ms   = 0;
                LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();	
            }
        }
        /* 关机时确保风扇停止 */
        if(g_gear != 0)
        {
            g_gear = 0;
            set_fan(0);
            LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
            g_warn_flash = 0;
        }
        g_k1_prev = K1_Flag;
        g_k2_prev = K2_Flag;
        g_k1_hold_ms = 0;
        g_k2_hold_ms = 0;
        return;
    }

/* ================================================================
 *  二、开机状态处理
 * ================================================================ */
    if(g_pwr_delay_ms < 1000)      // 1000×1ms = 1秒
    {
        g_pwr_delay_ms++;
        set_fan(0);        // 等待期间不输出PWM
        LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
        g_k1_prev = K1_Flag;
        g_k2_prev = K2_Flag;
        g_k1_hold_ms = 0;
        g_k2_hold_ms = 0;
        return;
    }

    /* 3. 充电状态下固定1档 */
    if(g_slave_charging || g_slave_chargefull)
    {
        g_gear = 1;
        set_fan(1);
        g_offshow_flag = 0; 
        
        if(g_warn_flash == 0)
            show_gear_led(1);

        // 充电中按加减键：只触发第一颗LED(LED5)闪烁（锁定在1档）
        if(K2_Flag && !g_k2_prev) trigger_warn(5); 
        if(K1_Flag && !g_k1_prev) trigger_warn(5); 

        g_k1_prev = K1_Flag;
        g_k2_prev = K2_Flag;
        g_k1_hold_ms = 0;
        g_k2_hold_ms = 0;
        return;
    }
    else
    {
        /* 4. 正常开机运行逻辑 */
        if(g_gear == 0)
        {
            g_gear = 1;
            set_fan(1);
            show_gear_led(1);
        }

        if(g_warn_flash > 0)
        {
            g_k1_prev = K1_Flag;
            g_k2_prev = K2_Flag;
            g_k1_hold_ms = 0;
            g_k2_hold_ms = 0;
            return;
        }

        /* --- 加键逻辑（K2） --- */
        if(K2_Flag)
        {
            g_k2_hold_ms++;
            /* 长按500ms自动步进一次（g_k2_hold_ms回退到400，再等100ms触发） */
            if(g_k2_hold_ms == 500)
            {
                g_k2_hold_ms = 400;
                if(g_gear < 5)
                {
                    g_gear++;
                    set_fan(g_gear);
                    show_gear_led(g_gear);
                }
                else if(g_gear == 5)
                {
                    g_gear = 6; // 进入超频档
                    set_fan(6);
                }
            }
        }
        else
        {
            /* 按键松开处理 */
            if(g_k2_prev)
            {
                if(g_gear == 6)
                {
                    /* 从超频退出回5档 */
                    g_gear = 5;
                    set_fan(5);
                    show_gear_led(5);
                }
                else if(g_k2_hold_ms < 500)
                {
                    /* 短按步进 */
                    if(g_gear < 5)
                    {
                        g_gear++;
                        set_fan(g_gear);
                        show_gear_led(g_gear);
                    }
                    else if(g_gear == 5)
                    {
                        trigger_warn(1); // 5档封顶提示
                    }
                }
            }
            g_k2_hold_ms = 0;
        }
        g_k2_prev = K2_Flag;

        /* --- 减键逻辑（K1） --- */
        if(K1_Flag)
        {
            g_k1_hold_ms++; 
            /* 长按500ms自动步进一次 */
            if(g_k1_hold_ms == 500)
            {
                g_k1_hold_ms = 400;
                if(g_gear > 1)
                {
                    g_gear--;
                    set_fan(g_gear);
                    show_gear_led(g_gear);
                }
            }
        }
        else
        {
            /* 按键松开处理 */
            if(g_k1_prev)
            {
                if(g_k1_hold_ms < 500)
                {
                    /* 短按步进 */
                    if(g_gear > 1)
                    {
                        g_gear--;
                        set_fan(g_gear);
                        show_gear_led(g_gear);
                    }
                    else if(g_gear == 1)
                    {
                        trigger_warn(5); // 1档触底提示
                    }
                }
            }
            g_k1_hold_ms = 0;
        }
        g_k1_prev = K1_Flag;
    }
}
////////////////////////////////////////////////////////////////////////
////////////////////////////  通信模块  ////////////////////////////////
////////////////////////////////////////////////////////////////////////
/*----------------------------------------------------------------------
 *  内部：打包主机发送帧
 *----------------------------------------------------------------------*/
static unsigned char comm_pack_tx(void)
{
    unsigned char lo = 0;
    unsigned char hi;
    unsigned char result;

    if(B_OnOff_Flag)
    {
        lo |= 0x04;   /* C2: 已开机 */

        /* 低压标志：Battery_Update()确认后才置位 */
        if(B_LowPower_Flag)
            lo |= 0x02;   /* C1: 电量低 */
    }
    /* B_OnOff_Flag=0时，C2/C1全0；C0可能为1以维持电机板供电 */

    lo  = lo & 0x0F;
    hi  = lo ^ 0x0F;
    result = (hi << 4) | lo;
    return result;
}

/*----------------------------------------------------------------------
 *  内部：解析从机回传帧，更新全局状态
 *  返回 1=校验通过，0=校验失败
 *----------------------------------------------------------------------*/
static unsigned char comm_parse_rx(unsigned char raw)
{
    unsigned char lo;
    unsigned char hi;
    unsigned char check;

    lo = raw & 0x0F;
    hi = (raw >> 4) & 0x0F;
    check = lo + hi;

    if(check != 0x0F)
        return 0;

    /* 位判断：充电状态 + 充满状态独立解析 */
    if(lo & 0x04)
        g_slave_charging = 1;
    else
        g_slave_charging = 0;

    if(lo & 0x01)
        g_slave_chargefull = 1;
    else
        g_slave_chargefull = 0;

    return 1;
}
/*----------------------------------------------------------------------
 *  Kcomm_ISR() — 每50us中断调用，推进通信状态机
 *----------------------------------------------------------------------*/
void Kcomm_ISR(void)
{
    static unsigned char bit_wait_fall;
    kcomm_timer++;          /* 每次中断递增计时，驱动状态跳转 */

    /* ---- 唤醒流程（优先级最高）---- */
    if(kcomm_wakeup)
    {
        kcomm_wakeup_cnt++;
        if(kcomm_wakeup_cnt == 1)
        {
            KEDA_SET_OUTPUT();
            KEDA_PORT = 1;
        }
        if(kcomm_wakeup_cnt >= 1000u)   // 50ms 高电平脉冲（50ms/50us = 1000）
        {
            KEDA_PORT = 0;
            KEDA_SET_INPUT();
            kcomm_wakeup     = 0;
            kcomm_wakeup_cnt = 0;
            kcomm_low_cnt    = 0;
            kcomm_state      = 0;
            kcomm_cycle      = 195; // 唤醒后立即触发一轮收发
        }
        return;
    }

    /* ---- 空闲状态：休眠检测 + 10ms节拍触发收发 ---- */
    if(kcomm_state == 0)    // 空闲
    {
        kcomm_cycle++;

        if(!KEDA_READ())
        {
            if(kcomm_low_cnt < 1000)
                kcomm_low_cnt++;

            /* 总线持续低电平超50ms，触发唤醒 */
            if(kcomm_low_cnt >= 1000)
            {
                kcomm_low_cnt = 1000;  // 防溢出

                if(kcomm_wakeup == 0)
                {
                    if(B_OnOff_Flag || g_slave_charging || g_slave_chargefull || g_PwrDone)
                    {
                        kcomm_wakeup     = 1;
                        kcomm_wakeup_cnt = 0;
                    }
                }
            }
        }
        else
        {
            kcomm_low_cnt = 0;  // 检测到高电平，对方活跃，清零
        }

        /* 10ms节拍到，触发一轮收/发 */
        if(kcomm_cycle >= 200)  // 200×50us = 10ms
        {
            kcomm_cycle = 0;

            if(kcomm_turn == 0)
            {
                /* 发送轮：开始发送起始高 */
                kcomm_tx_buf  = comm_pack_tx();
                kcomm_bit_idx = 0;
                kcomm_timer   = 0;
                kcomm_tx_done = 0;
                KEDA_SET_OUTPUT();
                KEDA_PORT = 1;
                kcomm_state = 1;
            }
            else
            {
                /* 接收轮：发起接收请求 */
                kcomm_rx_buf  = 0;
                kcomm_bit_idx = 0;
                kcomm_timer   = 0;
                kcomm_rx_done = 0;
                KEDA_SET_OUTPUT();
                KEDA_PORT = 1;
                kcomm_state   = 5;
            }
        }
        return;
    }

    if(kcomm_state == 1)
    {
        if(kcomm_timer >= 20)      // 起始位高1ms
        {
            kcomm_timer = 0;
            KEDA_PORT = 0;
            kcomm_state = 2;
        }
        else
        {
            KEDA_PORT = 1;
        }
    }
    else if(kcomm_state == 2)
    {
        if(kcomm_timer >= 10)      // 起始位低0.5ms
        {
            kcomm_timer    = 0;
            kcomm_tx_shift = kcomm_tx_buf;
            kcomm_bit_idx = 0;
            KEDA_PORT = 1;
            kcomm_state = 3;
        }
    }
    else if(kcomm_state == 3)
    {
        // bit=1：高电平=500us 低电平=200us
        // bit=0：高电平=200us 低电平=500us
        if(kcomm_timer >= 14)
        {		
            // 一个bit发送完成
            kcomm_timer = 0;
            kcomm_bit_idx ++;
            if(kcomm_bit_idx >= 8)
            {   // 8bit全部发送完毕
                KEDA_PORT = 0;
                kcomm_state = 4;
                kcomm_cycle= 0;
            }
            else
            {
                kcomm_tx_shift <<= 1;				
            }
        }
        else
        {
            if(kcomm_tx_shift & 0x80)
            {           // 当前要发 bit=1
                if(kcomm_timer <= 10)
                {
                    KEDA_PORT = 1;
                }
                else
                {
                    KEDA_PORT = 0;
                }
            }
            else
            {
                if(kcomm_timer <= 4)
                {
                    KEDA_PORT = 1;
                }
                else
                {
                    KEDA_PORT = 0;
                }
            }	
        }
    }
    else if(kcomm_state == 4)
    {
        if(kcomm_timer >= 20)
        {
            KEDA_PORT = 0;
            KEDA_SET_INPUT();
            kcomm_tx_done = 1;
            kcomm_turn = 1;
            kcomm_timer = 0;
            kcomm_state = 0;
        }
    }
    else if(kcomm_state == 5)
    {
        if(kcomm_timer >= 40)   // 起始位高2ms
        {
            kcomm_timer = 0;
            KEDA_PORT = 0;
            kcomm_state = 6;
        }
        else 
        {
            KEDA_PORT = 1;
        }
    }
    else if(kcomm_state == 6)
    {
        if(kcomm_timer >= 10)   // 起始位低0.5ms后释放总线
        {
            kcomm_timer = 0;
            bit_wait_fall = 0;
            kcomm_bit_idx = 0;
            kcomm_rx_shift = 0;
            KEDA_SET_INPUT();
            KEDA_PORT = 0;
            kcomm_state = 9;    // 直接进入位接收状态，等待第一个高脉冲
        }
    }
    else if(kcomm_state == 9)
    {
        if(kcomm_timer >= ((kcomm_bit_idx == 0 && bit_wait_fall == 0) ? 400u : 60u))
        {
            kcomm_rx_done = 0xFF;
            kcomm_turn = 0;
            kcomm_timer = 0;
            kcomm_state = 0;
        }
        else if(bit_wait_fall == 0)
        {
            /* 等待上升沿 */
            if(KEDA_READ())
            {
                kcomm_timer = 0;
                bit_wait_fall = 1;
            }
        }
        else
        {
            /* 等待下降沿 */
            if(!KEDA_READ())
            {
                kcomm_rx_shift <<= 1;
                if(kcomm_timer >= 7)
                    kcomm_rx_shift |= 1;

                bit_wait_fall = 0;
                kcomm_bit_idx++;

                if(kcomm_bit_idx >= 8)
                {
                    kcomm_rx_buf = kcomm_rx_shift;
                    kcomm_rx_done = 1;
                    kcomm_turn = 0;
                    kcomm_timer = 0;
                    kcomm_state = 10;
                }
            }
        }
    }
    else if(kcomm_state == 10)
    {
        if(kcomm_timer >= 10)
        {
            kcomm_timer = 0;
            kcomm_state = 0;
        }
    }
    else
    {
        kcomm_state = 0;
    }
}

void Comm_Process(void)
{
    unsigned char rx_ok;
    /* 发送完成回调 */
    if(kcomm_tx_done == 1)
    {
        kcomm_tx_done = 0;
    }
    /* 接收完成，解析数据 */
    if(kcomm_rx_done == 1)
    {
        kcomm_rx_done = 0;
        rx_ok = comm_parse_rx(kcomm_rx_buf);
        if(rx_ok)
            g_slave_alive_ms = 200;
        if(g_slave_charging || g_slave_chargefull || g_PwrDone)
            g_slave_alive_ms = 200; 
    }
    else if(kcomm_rx_done == 0xFF)
    {
        kcomm_rx_done = 0;
    }
}

// /*----------------------------------------------------------------------
//  *  FG_Detect() — 1ms调用，风扇反馈信号检测
//  *  正常运转：信号持续≥500ms → g_fg_state=FG_STATE_RUNNING
//  *  风扇停转：信号持续≥500ms 低电平 → g_fg_state=FG_STATE_STOPPED
//  *  堵转故障：检测到2次（3ms高+3ms低）脉冲 + 100ms间隔 → g_fg_state=FG_STATE_FAULT
//  *----------------------------------------------------------------------*/
/* FG 状态定义 */
// #define FG_STATE_UNKNOWN  0
// #define FG_STATE_RUNNING  1   /* 风扇正常运转 ≥500ms */
// #define FG_STATE_STOPPED  2  
// #define FG_STATE_FAULT    3   /* 检测到堵转故障 */
// u8  g_fg_state;
// u8  fg_pulse_cnt;
// void FG_Detect(void)
// {
//     static u16 fg_cnt = 0;
//     static bit fg_last = 0;

//     if(!B_OnOff_Flag) 
//     {
//         g_fg_state = FG_STATE_UNKNOWN;
//         fg_pulse_cnt = 0;
//         fg_cnt  = 0;
//         fg_last = 0;
//         return;
//     }
//     u8 fg = FG_READ();

//     if(fg != fg_last)
//     {
//         if(!fg)
//         {
//             if(fg_cnt >= 2 && fg_cnt <= 6)
//                 fg_pulse_cnt++;
//             else
//                 fg_pulse_cnt = 0;
//         }
//         else
//         {
//             if(fg_pulse_cnt >= 2 && fg_cnt >= 80 && fg_cnt <= 150)
//             {
//                 g_fg_state = FG_STATE_FAULT;
//                 fg_pulse_cnt = 0;
//             }
//             else if(fg_cnt < 7)
//             {
//                 /* 3ms以内的脉冲，等待累积pulse_cnt */
//             }
//             else
//             {
//                 fg_pulse_cnt = 0;
//             }
//         }
//         fg_cnt = 0;
//         fg_last = fg;
//     }
//     else
//     {
//         fg_cnt++;
//         if(fg_cnt == 500)
//         {
//             g_fg_state = fg ? FG_STATE_RUNNING : FG_STATE_STOPPED;
//             fg_pulse_cnt = 0;
//         }
//     }
// }
////////////////////////////////////////////////////////////////////////
////////////////////////////    主程序    ////////////////////////////
////////////////////////////////////////////////////////////////////////
void main(void)
{
    ramInitial();       // 清RAM
    inital();           // 端口初始化
    Delay_Init(200);    // 延时等待系统供电稳定
    ADC_Init();         // ADC初始化
    T1_PWM_inital();    // TM1PWM配置初始化
    sysinitial();       // T0定时中断初始化
    WDTEN = 1;
    /* 初始化状态 */
    LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
    g_vdd_adc   = ADC_4200MV;
    set_fan(0);
    
    while(1)
    {
        T0IE = 1;
        GIE  = 1;
        if(B_ScanMain)
        {
            B_ScanMain = 0;
            #asm
            clrwdt
            #endasm;
            
            /* 先通信 */
            Comm_Process();
            if(g_slave_alive_ms > 0)
            {
                g_slave_alive_ms--;
            }
            else
            {
                if(g_slave_charging || g_slave_chargefull)
                {
                    g_gear = 0;          
                    g_warn_flash = 0;    
                }
                /* 通信超时，清除从机状态 */
                g_slave_charging = 0;
                g_slave_chargefull = 0;
            }
            /* 再更新电池 */
            Battery_Update();
            Key_Func();
            SW_Func();
            Key_Application();
            Gear5_Duty_Update(); 
            fan_ramp_proc();
            LedMode_Func();
            Sleep_Func();
        }
    }
}

//*****************************中断服务程序*****************************
void interrupt Timer1_Isr(void)
{
    static unsigned char timer_ms = 0;
    static unsigned char pwm_cnt = 0;

    if(T0IF == 1)
    {
        T0IF = 0;
        T0 = 168;           // 162
        timer_ms++;
     
        if(timer_ms >= 20)  /* 20 × 50us = 1ms */
        {
            timer_ms   = 0;
            B_ScanMain = 1;
        }
    } 
 	
    if(B_OnOff_Flag && g_gear == 6 && !g_slave_charging && !g_slave_chargefull)
    {
        pwm_cnt++;
        if(pwm_cnt >= 50) pwm_cnt = 0;
        
        if(pwm_cnt < g_overclock_pwm)
        {
            LED1_ON(); LED2_ON(); LED3_ON(); LED4_ON(); LED5_ON();
        }
        else
        {
            LED1_OFF(); LED2_OFF(); LED3_OFF(); LED4_OFF(); LED5_OFF();
        }
    }

    Kcomm_ISR();        /* 通信状态机，每50us推进 */
    T1IF = 0;
}