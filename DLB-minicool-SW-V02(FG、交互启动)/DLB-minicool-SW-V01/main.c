///////////////////////////////////////////////////////////////////////
////////////////////////////	  头文件	////////////////////////////
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
/*----------------------------------------------------------------------
 *  主机发送帧结构（8bit）  D3D2D1D0-C3C2C1C0
 *  高4位 D[3:0] = ~C[3:0]（互为反码校验）
 *
 *  C3 = 0（未用）
 *  C2 = 1 有开机 / 0 没有开机
 *  C1 = 1 电量低 / 0 电量正常
 *  C0 = 1 需要给电机板供电 / 0 不需要
 *----------------------------------------------------------------------*/
typedef union {
    unsigned char byte;
    struct {
        unsigned C0 : 1;   /* bit0 */
        unsigned C1 : 1;   /* bit1 */
        unsigned C2 : 1;   /* bit2 */
        unsigned C3 : 1;   /* bit3，固定0 */
        unsigned D0 : 1;   /* bit4 = ~C0 */
        unsigned D1 : 1;   /* bit5 = ~C1 */
        unsigned D2 : 1;   /* bit6 = ~C2 */
        unsigned D3 : 1;   /* bit7 = ~C3 */
    } bits;
} CommTxFrame;
/*----------------------------------------------------------------------
 *  从机回传帧结构（8bit）  B3B2B1B0-A3A2A1A0
 *  高4位 B[3:0] = ~A[3:0]（互为反码校验）
 *
 *  A3A2 = 11 正在充电中 / 00 未充电
 *  A1A0 = 01 已充满    / 00 未充满
 *----------------------------------------------------------------------*/
typedef union {
    unsigned char byte;
    struct {
        unsigned A0 : 1;
        unsigned A1 : 1;
        unsigned A2 : 1;
        unsigned A3 : 1;
        unsigned B0 : 1;
        unsigned B1 : 1;
        unsigned B2 : 1;
        unsigned B3 : 1;
    } bits;
} CommRxFrame;
typedef enum {
    COMM_IDLE = 0,      /* 空闲（下拉输入）*/
    COMM_TX_CMD,        /* 正在发送命令帧 */
    COMM_RX_CMD,        /* 正在接收从机帧 */
    COMM_SLEEP_DETECT,  /* 检测对方是否进入低功耗 */
    COMM_WAKEUP,        /* 唤醒对方（输出50ms高电平）*/
} CommState;
/* 通信内部变量*/
bit B_OnOff_Flag;
bit B_LowPower_Flag;  // 新增低电标志
// 每个计时单位 = 50us（中断周期）
unsigned char kcomm_state;
unsigned int  kcomm_timer;    // 当前状态计时
unsigned char kcomm_tx_buf;    // 待发送字节
unsigned char kcomm_tx_shift;  // 发送时，已发送bit数（0~8），用于位移和判断发送完成
unsigned char kcomm_rx_buf;    // 接收缓冲
unsigned char kcomm_bit_idx;    // bit索引 0~7
unsigned char kcomm_turn;    // 0=发送轮 1=接收轮
u8  kcomm_cycle;    // 10ms周期计时（在中断里递增）
unsigned char kcomm_rx_done;    // 1=收到一帧，待主循环解析
unsigned char kcomm_rx_shift;	// 接收时，已接收bit数（0~8），用于位移和判断接收完成
unsigned char kcomm_tx_done;    // 1=发送完一帧
unsigned int  kcomm_low_cnt;    // 线低电平持续计数（休眠检测）
unsigned char kcomm_wakeup;    // 1=正在执行唤醒
unsigned int  kcomm_wakeup_cnt; // 唤醒计时

/* 对外暴露的通信结果 */
bit g_slave_charging;   /* 1=从机正在充电       */
bit g_slave_chargefull; /* 1=从机已充满         */
/**
LED相关定义
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
#define ADC_4200MV   3308u
unsigned char  adcon1_val    = 0;   /* ADC配置寄存器缓存*/
//联合体变量
union{
	//共用地址，地址长度由地址最长的成员决定
	//结构体---1bit赋值时，用结构体的成员
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
	
	//8bit变量---整体赋值时，用该变量
	unsigned char AllBits;
}DIY_Flag1;

//通用 位定义
#define B_ScanMain		DIY_Flag1.OnrBit.b0
#define K1_Flag			DIY_Flag1.OnrBit.b1
#define K2_Flag			DIY_Flag1.OnrBit.b2
#define Switch_Flag		DIY_Flag1.OnrBit.b3

//通用 变量
bit B_KEYHX_Flag;
u16 g_k1_hold_ms;    /* K1持续按下时间 */
u16 g_k2_hold_ms;    /* K2持续按下时间 */
u8  g_gear;	/* 当前档位 */
u8  g_target_pwm;       /* 目标 PWM 占空比 */
u16 g_current_pwm;      /* 当前实际 PWM (使用固定点 0.1 精度提高渐变平滑度) */
u16 g_pwr_delay_ms;     /* 开机延迟计数 */
u8  g_battery_empty;    /* 电量耗尽标志 */
u8  g_warn_flash;    /* 剩余快闪次数，0=无提示 */
u8  g_warn_led;    /* 提示LED编号：1=LED1(不能减档), 5=LED5(不能加档) */
u8  g_k1_prev;    /* K1上次状态 */
u8  g_k2_prev;    /* K2上次状态 */
bit g_warn_blink; 
u8  g_warn_cnt;
u16 g_offshow_ms;    /* 显示计时（×1ms） */
bit g_offshow_flag;    /* 1=正在显示电量 */

unsigned char level;
u16 g_vdd_adc;
u8  g_overclock_pwm;    /* 超频模式 PWM 占空比 (0-50) */
         
u16 g_slave_alive_ms;
const u8 c_fan_duty[7] = {0, 31, 50, 68, 87, 105, 124};// 0%, 25%, 40%, 55%, 70%, 85%, 100%
void ADC_Init(void);
void Comm_Process(void);
 void show_gear_led(u8 gear);
////////////////////////////////////////////////////////////////////////
////////////////////////////	  子程序	////////////////////////////
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
		#asm		//喂狗
		clrwdt
		#endasm;
	}
}
 
void delay_us(unsigned int us)
{
    unsigned int i;

    while(us--)
    {
        /* 大约1us（需根据主频微调） */
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

     // 1. 关机检测逻辑：如果有任何活跃信号，重置计时器
     if(B_OnOff_Flag || B_KEYHX_Flag || g_slave_charging || g_slave_chargefull || g_offshow_flag || kcomm_wakeup)
     {
         Sleep_Time = 0;
     }
     Sleep_Time++;
     if(Sleep_Time >= 1000) // 按照协议：1秒进入待机 (1ms * 1000)
     { 
        Sleep_Time = 0;
        LED1_OFF();
        LED2_OFF(); 
        LED3_OFF(); 
        LED4_OFF(); 
        LED5_OFF();             // 强制熄灯

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

         /* IO 状态锁定：按照协议平时KEDA(PB6)为下拉输入 */
         TRISA = 0x0E;               // PA1,2,3 输入
         TRISB = 0x48;               // PB3, PB6 输入
         
         PHCON1 = 0xF1;              // PA1,2,3 上拉使能
         PHCON  = 0xFF;
         PDCON1 = 0xFF;              // PB6 下拉使能 (关键：满足协议要求的下拉输入)
         PDCON  = 0xBF;

         delay_us(1000);             // 延时稳定

         BOREN = 0;
         WDTEN = 0;

         /* 4. 配置唤醒源 */
         IOCA = 0x0E;                // 按键/开关唤醒
         IOCB = 0x40;                // 从机充电信号(PB6)唤醒

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
		 WDTEN = 1;    // 开启看门狗
         ADEN  = 1;   
         
        
         if(KEDA_READ())
         {
                /* 确认为有效充电唤醒 */
                g_slave_charging = 1;   // 立即进入充电显示状态
                g_slave_alive_ms = 3000; // 锁定在线状态，防止误休眠
                
                /* 等待从机 200ms 高电平脉冲彻底结束 */
                while(KEDA_READ())
                {
                    #asm
                    clrwdt
                    #endasm
                }

                /* 立即强制启动一轮通信握手，对齐从机频率 */
                kcomm_cycle = 195;      
                kcomm_wakeup = 0;
        }
            // 处理其他唤醒源（如按键/开关）
        temp = PORTA;
        temp = PORTB;
        (void)temp;
        PAIF = 0;
        PBIF = 0;
        PAIE = 0;
        PBIE = 0;

        if(!K1_io || !K2_io)
        {
            B_KEYHX_Flag = 1;   // 仅加减键唤醒标记为有效按键，用于显示电量
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
 *  ADC 初始化（使用内部AN5 = 1/4VDD，参考电压1.3V）
 *  channel=5, voltage=1(内部1.3V)
 * --------------------------------------------------------------- */
void ADC_Init(void)
{
		ANSELL=0X20;			//1=AD（simulation models）0=I/O（digital models）
		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
		ADCON0=0X15;			//配置AD通道5，内部1/4VDD
		adcon1_val = 0X08;		//内部1.3V
		ADCON1 = adcon1_val;
		ADEN = 1;           /* 使能ADC模块 */
    	delay_us(100);      /* 等待ADC稳定 */
}
/* ---------------------------------------------------------------
 *  读取VDD（通过AN5=VDD/4，返回12bit ADC原始值）
 *  返回值 adc_val，VDD_mV ≈ adc_val × 5200 / 4096
 * --------------------------------------------------------------- */
unsigned int adc_read_vdd(void)
{
    unsigned int result;
    u16 ad_delay;

    ADCON0 = 0x15;
    ADCON1 = adcon1_val;
    ADEN = 1;

    ADIF = 0;
    ADON = 1;           /* 先启动 */

    ad_delay = 0;
    while(ADON)         /* 再等结束 */
    {
        #asm
        clrwdt
        #endasm
        ad_delay++;
        if(ad_delay >= 20000)
            break;
    }

    result = ((unsigned int)ADRESH << 4) | (ADRESL >> 4);
    return result;
}
void LedMode_Func(void)
{
    /* ── 呼吸动画内部变量 ── */
    static u8  chg_pwm_cnt  = 0;   /* 软件PWM计数 0~19          */
    static u8  breath_duty  = 0;   /* 呼吸亮度   0~20           */
    static u8  breath_dir   = 1;   /* 1=渐亮 0=渐暗             */
    static u8  breath_cnt   = 0;   /* 呼吸步进节拍              */
	static u8  disp_level   = 0;   /* 显示电量档（去抖后）         */
    static u8  lv_debounce  = 0;   /* 电量去抖计数器             */

    /* ─ 电量耗尽：全灭，最高优先 ── */
    if(g_battery_empty)
    {
        LED1_OFF();
        LED2_OFF(); 
        LED3_OFF(); 
        LED4_OFF(); 
        LED5_OFF();
        return;
    }
    /* ---- 充电时对 level 去抖，防止 ADC 波动导致 LED 闪烁 ---- */
    if(disp_level != level) 
    {
        if(lv_debounce < 3) lv_debounce++;
        if(lv_debounce >= 3) disp_level = level;
    } 
    else 
    {
        lv_debounce = 0;
    }
    /* ──充电中 / 已充满 ── */
    if((g_slave_charging || g_slave_chargefull) && !B_OnOff_Flag)
    {
        /* 呼吸步进（每50ms进一步）*/
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

        /* 软件PWM计数*/
        chg_pwm_cnt++;
        if(chg_pwm_cnt >= 20)
            chg_pwm_cnt = 0;

        if(g_slave_chargefull)
        {
            /* 充满：五格全亮，呼吸重置为常亮 */
            LED1_ON(); LED2_ON(); LED3_ON(); LED4_ON(); LED5_ON();
            breath_duty = 20;
            breath_dir  = 0;
            breath_cnt  = 0;
        }
        else
        {
            /* 充电中：已充格常亮，当前格呼吸，未充格灭 */
            /* level: 0~6，对应电量格数（Battery_Update()维护）  */
            /* LED5=第1格(最低), LED4=第2格 ... LED1=第5格(最高) */

            /* LED5 → 第1格 */
            if(disp_level >= 2)       { LED5_ON(); }
            else if(disp_level == 1)  { if(chg_pwm_cnt < breath_duty) LED5_ON(); else LED5_OFF(); }
            else                 { LED5_OFF(); }

            /* LED4 → 第2格 */
            if(disp_level >= 3)       { LED4_ON(); }
            else if(disp_level == 2)  { if(chg_pwm_cnt < breath_duty) LED4_ON(); else LED4_OFF(); }
            else                 { LED4_OFF(); }

            /* LED3 → 第3格 */
            if(disp_level >= 4)       { LED3_ON(); }
            else if(disp_level == 3)  { if(chg_pwm_cnt < breath_duty) LED3_ON(); else LED3_OFF(); }
            else                 { LED3_OFF(); }

            /* LED2 → 第4格 */
            if(disp_level >= 5)       { LED2_ON(); }
            else if(disp_level == 4)  { if(chg_pwm_cnt < breath_duty) LED2_ON(); else LED2_OFF(); }
            else                 { LED2_OFF(); }

            /* LED1 → 第5格 */
            if(disp_level >= 6)       { LED1_ON(); }
            else if(disp_level == 5)  { if(chg_pwm_cnt < breath_duty) LED1_ON(); else LED1_OFF(); }
            else                 { LED1_OFF(); }
        }
        return;
    }

    /* ── 超频模式呼吸灯 (Requirement 8) ── */
    if(B_OnOff_Flag && g_gear == 6)
    {
        breath_cnt++;
        if(breath_cnt >= 20) // 每20ms更新一次亮度，使呼吸更平滑
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

    /* 非充电/超频时重置呼吸参数，下次进入时从头开始 */
    if(!g_slave_charging && !g_slave_chargefull && g_gear != 6)
    {
        breath_duty = 0;
        breath_dir  = 1;
        breath_cnt  = 0;
        chg_pwm_cnt = 0;
    }

    /* ─关机+电量显示计时 ── */
    if(!B_OnOff_Flag && g_offshow_flag)
    {
        show_gear_led(level);
        return;
    }

    /* ──开机+警告快闪 ── */
    if(B_OnOff_Flag && g_warn_flash > 0)
        return;

    /* ──  开机：正常档位 ── */
    if(B_OnOff_Flag)
    {
        show_gear_led(g_gear);
        return;
    }

    /* ──  关机且无其他状态：全灭 ── */
    LED1_OFF();
    LED2_OFF(); 
    LED3_OFF(); 
    LED4_OFF(); 
    LED5_OFF();
}
void Battery_Update(void)
{
    static unsigned char low_debounce = 0;
    static unsigned char low_clr_debounce = 0;  /* 清除防抖 */
    unsigned int adc_val;
    static unsigned char loop_num = 0;
    static unsigned int  loop_min = 0;
    static unsigned int  loop_max = 0;
    static unsigned int  loop_sum = 0;
	static unsigned char startup_cnt = 50;//上电后前50次滤波不判断低压
    adc_val = adc_read_vdd();

    if(loop_num == 0)
    {
        loop_min = adc_val;
        loop_max = adc_val;
        loop_sum = 0;
    }
    else if(loop_min > adc_val)  loop_min = adc_val;
    else if(loop_max < adc_val)  loop_max = adc_val;

    loop_sum += adc_val;
    loop_num++;

    if(loop_num >= 10)
    {
        loop_num = 0;
        loop_sum -= loop_min;
        loop_sum -= loop_max;
        loop_sum = loop_sum >> 3;
        g_vdd_adc = loop_sum;

        if(g_slave_chargefull)       level = 6;
     	else if(g_vdd_adc < ADC_3000MV) level = 0;
        else if(g_vdd_adc < ADC_3230MV) level = 1;
        else if(g_vdd_adc < ADC_3700MV) level = 2;
        else if(g_vdd_adc < ADC_3900MV) level = 3;
        else if(g_vdd_adc < ADC_4100MV) level = 4;
        else if(g_vdd_adc <= ADC_4200MV) level = 5;
        else                             level = 6;
		if(startup_cnt > 0)
		{
			startup_cnt--;
			B_LowPower_Flag = 0;
		}
		else
		{
			if(B_LowPower_Flag == 0)
       		{
            /* 进入低压：滤波值 < 3.2V，连续5次滤波确认（5×20ms=100ms） */
	            if(g_vdd_adc < ADC_3200MV)
	            {
	                if(low_debounce < 5) low_debounce++;
	                if(low_debounce >= 5) B_LowPower_Flag = 1;
	            }
	            else
	            {
	                low_debounce = 0;
	            }
       		}
	        else
	        {
	            if(g_vdd_adc >= ADC_3230MV)  
	            {
	                if(low_clr_debounce < 3) low_clr_debounce++;
	                if(low_clr_debounce >= 3)
	                {
	                    B_LowPower_Flag = 0;
	                    low_debounce = 0;
	                }
	            }
	            else
	            {
	                low_clr_debounce = 0;
	            }
	        }	
		}
    }
}
/*-------------------------------档位LED显示-------------------------------*/
/*
 * 运行模式：显示当前档位（亮对应颗数LED）
 * gear=1→亮LED5; gear=2→亮LED5,LED4; 以此类推到gear=5→亮全部
 * gear=6（超频）：LED5~1全亮，由上层控制LED1快闪
 */
 void show_gear_led(u8 gear)
{
    LED1_OFF();
    LED2_OFF(); 
    LED3_OFF(); 
    LED4_OFF(); 
    LED5_OFF();     
	if(gear >= 1) LED5_ON();
	if(gear >= 2) LED4_ON();
	if(gear >= 3) LED3_ON();
	if(gear >= 4) LED2_ON();
	if(gear >= 5) LED1_ON();
}

/*-------------------------------风扇控制-------------------------------*/
/*
 * 设置风扇档位PWM（Timer1 PWM → PB2/TM1PWM）
 *	PWM频率：1KHZ
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

/* 
 * 1ms 调用的风扇 PWM 爬坡处理
 */
void fan_ramp_proc(void)
{
    u16 target_fixed = (u16)g_target_pwm << 4; // 扩大 16 倍用于平滑
    
    if(g_current_pwm < target_fixed)
    {
        g_current_pwm += 1; // 约 250ms 从 0% 到 100% (250ms * 16 / 16 = 250)
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
 * 触发提示快闪（2秒）
 * led_num: 1=LED1(5档时不能加档 / 1档时不能减档通知LED)
 *          实际规则：
 *            5档短按加键 → LED1快闪（最高位灯）
 *            1档短按减键 → LED5快闪（最低位灯）
 */
void trigger_warn(u8 led_num)
{
	if(g_warn_flash == 0)		//剩余快闪次数
	{
		g_warn_flash = 4;       // 闪两次：亮-灭-亮-灭 (4个变化)
		g_warn_led   = led_num;
		g_warn_blink = 0;
		g_warn_cnt   = 0;
	}
}
/*
 * 警告快闪处理（1ms调用）
 */
void warn_flash_proc(void)
{
	if(g_warn_flash == 0) 
		return;
	g_warn_cnt++;
	if(g_warn_cnt < 150) // 150ms 闪烁周期
		return;
	g_warn_cnt = 0;
 
	/* 周期到，切换一次 */
	g_warn_blink = !g_warn_blink;
	g_warn_flash--;

	if(g_warn_led == 1)
	{
		/* 正常5档按加：LED5~2常亮，LED1闪烁两次 */
		LED5_ON(); LED4_ON(); LED3_ON(); LED2_ON();
		if(g_warn_blink) LED1_OFF(); else LED1_ON();
	}
	else if(g_warn_led == 5)
	{
		/* 1档按减/充电固定1档按键：第一颗LED(LED5)闪烁两次 */
		LED1_OFF();
        LED2_OFF(); 
        LED3_OFF(); 
        LED4_OFF(); 
		if(g_warn_blink) LED5_OFF(); else LED5_ON();
	}
	
	/* 闪烁结束后恢复当前档位显示 */
	if(g_warn_flash == 0)
	{
		show_gear_led(g_gear);
	}
}

/*------------------------按键相关函数-----------------------------------*/
void Key_Func(void)
{
	static u8 key1_time1 = 0;
	static u8 key1_time2 = 0;
	static u8 key2_time1 = 0;
	static u8 key2_time2 = 0;
	//减键
	if(!K1_io)		//S1按下
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
		//S1松开
		key1_time1 = 0;
		key1_time2 ++;
		if(key1_time2 >= 10)
		{
			key1_time2 = 0;
			K1_Flag = 0;
		}
	}
	//加键
	if(!K2_io)		//S2按下
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
		//S2松开
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
		//关机
		sw_time2 = 0;
		sw_time1 ++;
		if(sw_time1 >= 20)
		{
			sw_time1 = 0;
			B_OnOff_Flag = 0;
            B_KEYHX_Flag = 0; // 关机时清除唤醒标志，准备重新计时休眠
		}
	}
	else
	{
		//开机
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
//按键应用函数
/*
 * Key_Application() — 1ms调用
 *
 * 功能：
 *  【关机状态（B_OnOff_Flag=0）】
 *    短按加键或减键：显示电池电量，5秒后自动灭灯（Sleep_Func负责休眠）
 *
 *  【开机状态（B_OnOff_Flag=1，上拨开关）】
 *    进入一档，LED5亮，风扇一档
 *    短按加键：升档（1→2→3→4→5），亮对应颗数LED
 *    5档继续短按加键：LED1快闪2秒提示不能加档
 *    长按加键1.5秒：进入超频第6档，LED1快闪提示，风量最大
 *    短按减键：降档（5→4→3→2→1），亮对应颗数LED
 *    1档继续短按减键：LED5快闪2秒提示不能减档
 *    下拨开关（SW_Func置B_OnOff_Flag=0）：停风扇，全灭LED，进入关机状态
 */
void Key_Application()
{
	u8 edge;
	u8 cur;
	static u8 off_key_prev = 0;
	warn_flash_proc();	//处理提示快闪

    /* --- 四、电量耗尽锁定 --- */
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
        LED1_OFF();
        LED2_OFF(); 
        LED3_OFF(); 
        LED4_OFF(); 
        LED5_OFF();
        g_offshow_flag = 0;
        g_offshow_ms   = 0;
        g_warn_flash   = 0;
        g_gear         = 0;
        g_k1_prev = K1_Flag;
        g_k2_prev = K2_Flag;
        g_k2_hold_ms = 0;
        return;
    }

/* ================================================================
 *  一、关机状态：短按任意键显示电量
* ================================================================ */
	if(B_OnOff_Flag == 0)
	{
        g_pwr_delay_ms = 0; // 重置开机延迟
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
				LED1_OFF();
                LED2_OFF(); 
                LED3_OFF(); 
                LED4_OFF(); 
                LED5_OFF();	
			}
		}
		/* 关机时确保风扇停止 */
		if(g_gear != 0)
		{
			g_gear = 0;
			set_fan(0);
			LED1_OFF();
            LED2_OFF(); 
            LED3_OFF(); 
            LED4_OFF(); 
            LED5_OFF();
			g_warn_flash = 0;
		}
		g_k1_prev = K1_Flag;
		g_k2_prev = K2_Flag;
		g_k2_hold_ms = 0;
		return;
	}

/* ================================================================
 *  二、开机状态处理
 * ================================================================ */
    /* 1. 开机延迟逻辑 (1秒) */
    if(g_pwr_delay_ms < 1000)
    {
        g_pwr_delay_ms++;
        LED1_OFF();
        LED2_OFF(); 
        LED3_OFF(); 
        LED4_OFF(); 
        LED5_OFF();
        g_k1_prev = K1_Flag;
        g_k2_prev = K2_Flag;
        g_k2_hold_ms = 0;
        return;
    }

    /* 2. 充电状态下开机逻辑 (固定1档) */
	if(g_slave_charging || g_slave_chargefull)
	{
		g_gear = 1;
		set_fan(1);
        g_offshow_flag = 0; 
        
        if(g_warn_flash == 0)
            show_gear_led(1);

        // 加减键仅触发第一颗LED(LED5)闪烁 (因为固定在1档)
        if(K2_Flag && !g_k2_prev) trigger_warn(5); 
        if(K1_Flag && !g_k1_prev) trigger_warn(5); 

		g_k1_prev = K1_Flag;
		g_k2_prev = K2_Flag;
		g_k2_hold_ms = 0;
		 return; // 去掉 return，让逻辑流转更自然，虽然这里固定 1 档
	}
    else
    {
        /* 3. 正常开机工作逻辑 */
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

        /* --- 加键逻辑 (K2) --- */
        if(K2_Flag)
        {
            g_k2_hold_ms++;
            /* 长按连发逻辑：每500ms步进一次 */
            if(g_k2_hold_ms == 500 || g_k2_hold_ms == 600 || g_k2_hold_ms == 700 || g_k2_hold_ms == 800 || g_k2_hold_ms == 900)
            {
                if(g_gear < 5)
                {
                    g_gear++;
                    set_fan(g_gear);
                    show_gear_led(g_gear);
                }
                else if(g_gear == 5)
                {
                    g_gear = 6; // 进入超频
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

        /* --- 减键逻辑 (K1) --- */
        if(K1_Flag)
        {
            g_k1_hold_ms++;
            /* 长按连发逻辑：每500ms步进一次 */
            if(g_k1_hold_ms == 500 || g_k1_hold_ms == 600 || g_k1_hold_ms == 700 || g_k1_hold_ms == 800 || g_k1_hold_ms == 900)
            {
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

    /* C0: 需要给电机板供电 — 只要物理开关在开机位置(Switch_io=0)，立即发送，不等待1秒延迟 */
    if(!Switch_io)
    {
        lo |= 0x01;
    }

    if(B_OnOff_Flag)
    {
        lo |= 0x04;   /* C2: 已开机 */

        /* 低压标志：必须Battery_Update()已执行且确认低压才置位 */
        if(B_LowPower_Flag)
            lo |= 0x02;   /* C1: 电量低 */
    }
    /* B_OnOff_Flag=0时，C2/C1全0，从机不执行工作逻辑，但C0可能为1以维持电机板供电 */

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

    if(lo == 0x0C || lo == 0x0D)
        g_slave_charging = 1;
    else
        g_slave_charging = 0;

    if(lo == 0x0D)
        g_slave_chargefull = 1;
    else
        g_slave_chargefull = 0;

    return 1;
}
/*----------------------------------------------------------------------
 *  Kcomm_ISR() — 在50us中断里调用，推进通信状态机
 *----------------------------------------------------------------------*/
void Kcomm_ISR(void)
{
	static unsigned char bit_wait_fall;
    kcomm_timer++;          /* 必须累加计时器，否则通信状态机不跳转 */
    /* ---- 唤醒流程（优先级最高）---- */
	if(kcomm_wakeup)
    {
        kcomm_wakeup_cnt++;
        if(kcomm_wakeup_cnt == 1)
        {
            KEDA_SET_OUTPUT();
            KEDA_PORT = 1;
        }
        if(kcomm_wakeup_cnt >= 1000u)   // 50ms 脉冲 (50ms/50us = 1000)
        {
            KEDA_PORT = 0;
            KEDA_SET_INPUT();
            kcomm_wakeup     = 0;
            kcomm_wakeup_cnt = 0;
            kcomm_low_cnt    = 0;
            kcomm_state      = 0;
            kcomm_cycle      = 195; // 唤醒后立即进入一轮收发轮询
        }
        return;
    }

    /* ---- 休眠检测（仅空闲时）---- */
    if(kcomm_state == 0)	//空闲
    {
        kcomm_cycle++;

		if(!KEDA_READ())
		{
			if(kcomm_low_cnt < 1000)
				kcomm_low_cnt++;

			/* 持续低电平超50ms，根据需要决定是否唤醒对方 */
			if(kcomm_low_cnt >= 1000)
			{
				kcomm_low_cnt = 1000;  // 防溢出

				if(kcomm_wakeup == 0)
				{
					if(B_OnOff_Flag || g_slave_charging || g_slave_chargefull)
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
// //------------------------------------------
        /* 10ms周期到，触发一轮收/发 */
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
    switch(kcomm_state)
    {
        /* ============ 发送流程 ============ */
		case 1:
			if(kcomm_timer >= 20)      // 起始高1ms
			{
				kcomm_timer = 0;
				KEDA_PORT = 0;
				kcomm_state = 2;
			}
			else
			{
				KEDA_PORT = 1;
			}
			break;

		case 2:
		if(kcomm_timer >= 10)			 // 起始低0.5ms
		{
			kcomm_timer    = 0;
			kcomm_tx_shift = kcomm_tx_buf;
			kcomm_bit_idx = 0;
			KEDA_PORT = 1;
			kcomm_state = 3;
		}
		break;

		case 3:
		//bit=1:则高电平=500us 低电平=200us
		//bit=0:则高电平=200us 低电平=500us
			if(kcomm_timer >= 14)
			{		
				//这里表示1个bit发码结束
				kcomm_timer = 0;
				kcomm_bit_idx ++;
				if(kcomm_bit_idx >= 8)
				{    //这里表示当前8bit发码结束
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
				{			//表示需要发bit = 1
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
			break;
		case 4:
			if(kcomm_timer >= 20)
			{
				KEDA_PORT = 0;
				KEDA_SET_INPUT();
				kcomm_tx_done = 1;
				kcomm_turn = 1;
				kcomm_timer = 0;
				kcomm_state = 0;
			}
			break;
        /* ============ 接收流程 ============ */
        case 5:
            if(kcomm_timer >= 40)  // 	起始高2ms
            {
                kcomm_timer = 0;
                KEDA_PORT = 0;
                kcomm_state = 6;
            }
			else 
			{
				KEDA_PORT = 1;
			}
            break;

        case 6:
            if(kcomm_timer >= 10)     // 起始 0.5ms 低电平结束
            {
                kcomm_timer = 0;
				bit_wait_fall = 0;
				kcomm_bit_idx = 0;
				kcomm_rx_shift = 0;
                KEDA_SET_INPUT();
                KEDA_PORT = 0;
                kcomm_state = 9;	  // 直接进入位接收状态，等待第一个高脉冲
            }
            break;

      	case 9:
			 if(kcomm_timer >= ((kcomm_bit_idx == 0 && bit_wait_fall == 0) ? 400u : 60u))
			{
				kcomm_rx_done = 0xFF;
				kcomm_turn = 0;
				kcomm_timer = 0;
				kcomm_state = 0;
				break;
			}
			if(bit_wait_fall == 0)
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
			break;
		case 10:
			if(kcomm_timer >= 10)
			{
				kcomm_timer = 0;
				kcomm_state = 0;
			}
			break;
        default:
            kcomm_state = 0;
            break;
    }
}
void Comm_Process(void)
{
	unsigned char rx_ok;
    /* 发送完成，更新通信状态 */
    if(kcomm_tx_done == 1)
    {
        kcomm_tx_done = 0;
    }
    // /* 接收完成，解析数据 */
    if(kcomm_rx_done == 1)
    {
        kcomm_rx_done = 0;
        rx_ok = comm_parse_rx(kcomm_rx_buf);
        if(rx_ok)
            g_slave_alive_ms = 200;
        if(g_slave_charging || g_slave_chargefull)
        	g_slave_alive_ms = 200; 
    }
    else if(kcomm_rx_done == 0xFF)
    {
        kcomm_rx_done = 0;
    }
}

void Flag_AllClear(void)
{
	LED1_OFF();
	LED2_OFF(); 
	LED3_OFF(); 
	LED4_OFF(); 
	LED5_OFF();
	B_OnOff_Flag    = 0;
    B_LowPower_Flag = 0;
    g_gear          = 0;
    g_warn_flash    = 0;
    g_warn_cnt      = 0;
    g_warn_led      = 0;
    g_warn_blink    = 0;
    g_offshow_flag  = 0;
    g_offshow_ms    = 0;
    g_slave_charging   = 0;
    g_slave_chargefull = 0;
    g_slave_alive_ms   = 0;
    g_k1_prev       = 0;
    g_k2_prev       = 0;
    g_k2_hold_ms    = 0;
    B_KEYHX_Flag    = 0;
    kcomm_state     = 0;
    kcomm_turn      = 0;
    kcomm_timer     = 0;
    kcomm_cycle     = 0;
    kcomm_wakeup    = 0;
    kcomm_wakeup_cnt= 0;
    kcomm_low_cnt   = 0;
    kcomm_rx_done   = 0;
    kcomm_tx_done   = 0;
    level           = 0;
    g_vdd_adc = ADC_4200MV;
}

////////////////////////////////////////////////////////////////////////
////////////////////////////	  主程序	////////////////////////////
////////////////////////////////////////////////////////////////////////
void main(void)
{
	ramInitial();		//清RAM
	inital();			//端口初始化
	Delay_Init(200);	//延时等待系统供电稳定
	ADC_Init();			//ADC初始化
	T1_PWM_inital();	//TM1PWM配置初始化
	sysinitial();		//T0定时中断初始化
	WDTEN = 1;
	/*初始化状态 */
	Flag_AllClear();
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
        T0 = 168;           //162
        timer_ms++;
     
        if(timer_ms >= 20)  /* 20 × 50us =1ms */
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
 