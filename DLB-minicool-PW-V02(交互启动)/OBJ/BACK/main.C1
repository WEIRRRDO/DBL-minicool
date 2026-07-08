#include	"extern.h"

#define u16  unsigned word
#define u8   unsigned byte
bit B_MainScan;		//主函数扫描
bit B_PowerOn;		//收到主机"开机"标志位
bit B_NeedPower;	//收到主机"需要给电机板供电"标志位
bit B_LowBat;		//电量低标志（由主机告知，或本机检测）
bit B_SlaveIdle;	//从机待机标志
bit B_CommTick;
bit B_Sleep;
bit B_ParseRx;      // 接收解析标志
u8  rx_cmd_tmp;     // 接收缓存暂存
u8  rx_lo;
u8  rx_hi;
u8  rx_check;
u8  blink_cnt;
u8  ct1;
u16 Reload_T16;

u16 pwr_on_timer;       // 电机供电检测计时
u16 proactive_tx_timer; // 主动发送供电完成信号计时
u8  proactive_tx_gap;   // 发送间隔计时
bit B_PwrDone;          // 供电完成标志
bit B_ProactiveTX;      // 主动发送标志

#define LEDW_ON()    { 	PA.4 = 1; }
#define LEDW_OFF()   { 	PA.4 = 0; }

#define LEDR_ON()    { 	PA.3 = 1; }
#define LEDR_OFF()   { 	PA.3 = 0; }

// ===================== 通信状态机 =====================
// 平时SIGNAL_io(CDDA)为下拉输入
// 主机下达命令：起始信号 高1ms + 低0.5ms  → 从机接收3bit
// 主机要接收  ：起始信号 高2ms + 低0.5ms  → 从机发送8bit

#define COMM_IDLE           0   // 空闲，等待起始信号
#define COMM_START_DETECT   1   // 检测到高电平，计时判断是1ms还是2ms
#define COMM_RX_WAIT_LOW    2   // 起始高脉冲结束，等待0.5ms低电平
#define COMM_RX_DATA        3   // 接收3bit数据
#define COMM_TX_DATA        4   // 发送8bit数据
#define COMM_TX_DONE        5   // 发送完毕，切回输入

u8  comm_state;			// 通信状态机当前状态
u8	comm_timer;         // 单位：中断次数（1次=50us）
u8  comm_bit_cnt;       // bit计数
u8  comm_rx_buf;        // 接收缓冲
u8  comm_tx_buf;        // 发送基础数据
u8  tx_shift_buf;       // 发送移位缓存（中断内部使用）

u8 comm_bit_timer;     // 当前bit内计时
u16 idle_timer;         // 待机计时:1MS
u16 signal_low_cnt;     // SIGNAL持续低电平计数（单位：50us中断次数）
u8  B_PeerSleep;        // 1=检测到对方进入低功耗
u8  B_NeedWakeup;       // 1=需要唤醒对方
u16 wakeup_timer;       // 唤醒高电平计时（50us单位）
// 500ms = 10000次（50us×10000）
#define PEER_SLEEP_CNT   10000
// 唤醒脉冲持续 200ms = 4000次
#define WAKEUP_HIGH_CNT  4000

// 每个bit时间：参考协议，发送时高=1ms/低=0.5ms（用50us单位）
// 高电平 = 20个中断 = 1ms
// 低电平 = 10个中断 = 0.5ms
#define BIT_HIGH_TIME   20   // 1ms
#define BIT_LOW_TIME    10   // 0.5ms
// ===================== SIGNAL口方向控制 =====================
// 下拉：关闭上拉即为下拉输入（外部下拉）
// PAPH.6保持0即可
/***********************************************
函数功能：系统初始化
入口参数：无
出口参数：无
备注：
************************************************/
void IO_init(void)
{
// ====================== IO口初始化 ======================
  	PA      = 0B_0010_0001;  // PA5=1(ENVBUS高), PA0=1(CHRG上拉高)
    PADIER  = 0B_1100_0001;  // PA7(CKUSB)=1, PA6(SIGNAL)=1, PA0(CHRG)=1 数字输入使能
    PAC     = 0B_0011_1000;  // PA5/PA4/PA3=输出, PA7/PA6/PA0=输入
    PAPH    = 0B_0000_0001;  // PA0上拉，其余无上拉

	$ PA.6 in,X_PH,PL;				//PA6输入关上拉，开下拉
}

void  Timer16_Init(void)
{
	Reload_T16 = 32768 - 800;   
	stt16 Reload_T16;
	$ T16M IHRC,/1,bit15;
	$ INTEGS BIT_R;
	INTRQ.T16 = 0;
	INTEN.T16 = 1;
	ENGINT;
}

//=====================充电检测===============================
/***********************************************
函数功能：充电检测（优化版，抗干扰）
备注：优先信任PA.0的充电状态，PA.7仅用于判断USB拔出
************************************************/
u8 chrg,chrgfull;
void chrg_chrgfull(void)
{
	if(!PA.0) 
	{
		// PA.0拉低 = 正在充电中
		chrg = 1;
		chrgfull = 0;
	} 
	else 
	{
		chrg = 0;
		// PA.0释放为高 = 停止充电（可能充满，也可能没插USB）
		if(PA.7 == 1) 
		{
			// 此时PA.7有电压，说明USB插着，即判定为充满
			chrgfull = 1;
		}
		else     
		{
			// PA.7没电压，说明USB已拔掉
			chrgfull = 0;
		}
	}
}


/***********************************************
函数功能：构造从机发送的8bit数据
格式：B3B2B1B0-A3A2A1A0，高4位与低4位互为反码
  A3   = 1:给电机供电  0:没给电机供电
  A2   = 1:充电中      0:没有充电
  A1A0 = 01:充满       00:未充满
************************************************/
u8 Build_TxData(void)
{
    u8 lo;
    u8 hi;
    u8 temp;
    u8 hi_shift;

    chrg_chrgfull();
    lo = 0;

    // A1A0 为 01 表示充满，为 00 表示还没有充满
    if(chrgfull)
    {
        lo |= 0x01; // A1A0 = 01
    }

    // A2 = 0 表示没有充电，A2 = 1 表示充电中
    if(chrg)
    {
        lo |= 0x04; // A2 = 1
    }

    // A3 = 0 表示没有给电机供电，A3 = 1 表示给电机供上电了
    if(B_PwrDone)
    {
        lo |= 0x08; // A3 = 1
    }

    hi = lo;
    hi = hi ^ 0x0F;

    /* hi左移4位，不用<<= */
    hi_shift = hi & 0x0F;
    temp = 0;
    if(hi_shift.3 == 1) temp = temp | 0x80;
    if(hi_shift.2 == 1) temp = temp | 0x40;
    if(hi_shift.1 == 1) temp = temp | 0x20;
    if(hi_shift.0 == 1) temp = temp | 0x10;

    lo = lo & 0x0F;
    temp = temp | lo;

    return temp;
}
/***********************************************
函数功能：切换SIGNAL为下拉输入（平时状态）
************************************************/
void Signal_SetInput(void)
{
	PA.6 = 0;                 
	$ PA.6 in,X_PH,PL;				//PA6输入关上拉，开下拉
    PAC  = 0B_0011_1000;      // 只有PA5/PA4/PA3输出，PA6设为输入
}
/***********************************************
函数功能：解析收到的主机3bit命令
bit2(D2)=开机标志  bit1(D1)=电量低  bit0(D0)=需要给电机板供电
（参考主机发送格式，根据实际协议对应）
************************************************/
u16 comm_active_timer;  // 通信活跃超时
u8  lowbat_debounce;    // 低电判定计数
void Parse_RxCmd(u8 cmd)
{
	comm_active_timer = 0; // 只要有有效指令，就清零活跃计时
	// 主机下达3bit：对应 C2 C1 C0
    // C2=1开机, C1=1电量低, C0=1需要给电机板供电
	if(cmd.2 == 1)
	{
		B_PowerOn = 1;
	}
	else
	{
		B_PowerOn = 0;
	}

    // 低电判定
	if(cmd.1 == 1)
	{
		if(lowbat_debounce < 5) 
		{
			lowbat_debounce++;
		}
		if(lowbat_debounce >= 5) 
		{
			B_LowBat = 1; // 连续10帧才报警，增强抗干扰
		}
	}
	else
	{
		lowbat_debounce = 0;
		B_LowBat = 0;
	}

	if(cmd.0 == 1)
	{
		if(B_NeedPower == 0) // 0 -> 1 变化
		{
			pwr_on_timer = 0;
			B_PwrDone = 0;
			B_ProactiveTX = 0;
		}
		B_NeedPower = 1;	//收到主机"需要给电机板供电"标志位
	}
	else
	{
		B_NeedPower = 0;
		B_PwrDone = 0;
		B_ProactiveTX = 0;
	}
	// 根据命令控制ENVBUS（电机板供电）
	// PA5 = 0 为供电开启，PA5 = 1 为供电关闭
	if(B_NeedPower)
	{
		PA.5 = 0;
	}
	else
	{
		PA.5 = 1;
	}
	//重置待机计时
	idle_timer = 0;
	B_SlaveIdle = 0;
}
/***********************************************
函数功能：LED状态显示
  - 充电中：白灯闪
  - 充满：白灯常亮
  - 无充电：灭灯
  - 电量低（由主机通知）：红灯快闪
************************************************/
void Led_Func(void)
{
	 // ---- 软件PWM判断（20级占空比）----
    static u16 led_time     = 0;
    static u8  breath_val   = 0;    // 呼吸灯当前亮度 0~20
    static u8  breath_dir   = 1;    // 1=渐亮 0=渐暗
    static u8  breath_cnt   = 0;    // 呼吸步进节拍计数

	if(blink_cnt > 0)
	{
		blink_cnt--;
	}

	chrg_chrgfull();
    led_time++;

    // ---- 更新呼吸步进（每50ms进一步）----
    breath_cnt++;
    if(breath_cnt >= 50)
    {
        breath_cnt = 0;
        if(breath_dir)
        {
            if(breath_val < 20) breath_val++;
            else                breath_dir = 0;
        }
        else
        {
            if(breath_val > 0)  breath_val--;
            else                breath_dir = 1;
        }
    }
    if(chrg)
    {
		if(led_time >= 20)
		{
		    led_time = 0;
		}
		 // 充电中：白灯呼吸闪，红灯灭
		if(led_time < breath_val)
		{
			PA.4 = 1;	
		}
		else
		{
			PA.4 = 0;
		}
        LEDR_OFF();
        // 充电时清除低压标志，优先显示充电
        B_LowBat = 0;
    }
    else if(chrgfull)
    {
        // 充满：白灯常亮，红灯灭
        LEDW_ON();
        LEDR_OFF();
        // 重置呼吸参数，下次充电从头开始
        breath_val = 20;
        breath_dir = 0;
        breath_cnt = 0;
        // 充满也清除低压标志
        B_LowBat = 0;
    }
    else if(B_LowBat)
    {
        // 主机发来低电信号：红灯常亮，白灯灭
        LEDR_ON();
		LEDW_OFF();
    }
    else
    {
        // 无充电无信号：全灭，重置呼吸
        LEDW_OFF();
        LEDR_OFF();
        breath_val = 0;
        breath_dir = 1;
        breath_cnt = 0;
        led_time   = 0;
    }
}
/***********************************************
函数功能：通信状态机 - 在中断中调用（50us/次）
  平时CDDA为下拉输入
  检测到高电平开始计时：
    高电平持续~1ms  → 主机下达命令 → 等低0.5ms → 接收3bit
    高电平持续~2ms  → 主机要接收   → 等低0.5ms → 发送8bit
************************************************/
void Comm_Func(void)
{
	switch(comm_state)
	{	
		// -------- 空闲：等待起始高电平 --------
		case COMM_IDLE:
		// ---- 唤醒发送中，发送 200ms 持续高电平 ----
		  if(B_NeedWakeup)		 
            {
                wakeup_timer++;
				$ PA.6 out,high;
                if(wakeup_timer >= WAKEUP_HIGH_CNT)
                {
 					PA.6 = 0;
                    Signal_SetInput();
                    wakeup_timer = 0;
                    B_NeedWakeup = 0;
                    B_PeerSleep  = 0;
                    signal_low_cnt = 0;
                    comm_active_timer = 0; // 强制重置计时，增加静默期
                }
                break;
            }
			  // ---- 低功耗检测：线上持续低电平计时 ----
            if(!PA.6)
            {
                if(signal_low_cnt < PEER_SLEEP_CNT)
                {
                    signal_low_cnt++;
                }
                if(signal_low_cnt >= PEER_SLEEP_CNT)
                {
                    B_PeerSleep = 1;    // 对方进入低功耗
                }
            }
            else
            {
                // 检测到高电平，说明对方活跃，清零
                signal_low_cnt = 0;
                B_PeerSleep    = 0;
                // 正常起始信号检测
                comm_timer = 1;
                comm_state = COMM_START_DETECT;
            }
            break;
		//--------计时判断起始脉冲宽度---------
		case COMM_START_DETECT:
			// 进入正常检测后清零低功耗计数（对方活跃）
            signal_low_cnt = 0;
            B_PeerSleep    = 0;
			if(PA.6)
			{
				comm_timer++;
				if(comm_timer > 50)	// 超过2.5ms认为无效，复位（50us*50=2.5ms）
				{
					comm_timer = 0;
					comm_state = COMM_IDLE;
				}
			}
			else
			{
				// 高电平结束，判断宽度
                // 1ms ≈ 20次(±5次容差)  → 主机下达命令
                // 2ms ≈ 40次(±5次容差)  → 主机要接收数据
				if((comm_timer >= 15) && (comm_timer <= 25))
				{
					// ~1ms：主机下达命令，从机准备接收8bit
					comm_timer   = 0;
					comm_bit_cnt = 0;
					comm_rx_buf  = 0;
					comm_state   = COMM_RX_WAIT_LOW;
				}
				else if((comm_timer >= 35) && (comm_timer <= 45))
				{
					// ~2ms：主机要接收数据，从机准备发送8bit
					comm_timer   = 0;
					comm_bit_cnt = 0;
                    // comm_tx_buf 已在主循环预更新，此处直接使用
					if((chrg == 1) || (chrgfull == 1) || (B_NeedPower == 1))
					{
						comm_bit_timer = 0;
						comm_state = 10; // TX_WAIT_LOW
					}
					else
					{
						comm_state = COMM_IDLE;
					}
				}
				else
				{
					// 脉宽不合法，忽略
					comm_timer = 0;
					comm_state = COMM_IDLE;
				}
			}
			break;
		 // -------- 等待起始低电平结束（接收模式）--------
		case COMM_RX_WAIT_LOW:
			if(PA.6) // 捕获到数据位的高电平边沿
            {
                comm_timer   = 1;
                comm_bit_cnt = 0;
                comm_rx_buf  = 0;
                comm_state   = COMM_RX_DATA;
            }
            break;

		// -------- 接收8bit数据（根据脉宽判断0/1）--------
		case COMM_RX_DATA:
			if(PA.6)
			{
				comm_timer++;
				if(comm_timer > 40) // 错误脉宽（>2ms）
				{
					comm_timer = 0;
					comm_state = COMM_IDLE;
					Signal_SetInput();
				}
			}
			else
			{
				// 下降沿采样：过滤极小抖动（<100us）
				if(comm_timer > 2)
				{
					comm_rx_buf <<= 1;
					if(comm_timer >= 8) // >400us 判定为 bit 1 (原来是7/350us)
						comm_rx_buf |= 1;
					
					comm_timer = 0;
					comm_bit_cnt++;

					if(comm_bit_cnt >= 8)
					{
						// 校验：高4位与低4位互为反码 -> hi + lo = 0x0F
						rx_lo = comm_rx_buf & 0x0F;
						rx_hi = (comm_rx_buf >> 4) & 0x0F;
						rx_check = rx_lo + rx_hi;

						if(rx_check == 0x0F)
						{
							blink_cnt = 100; // 成功接收反馈：白灯闪烁
                            rx_cmd_tmp = rx_lo;
                            B_ParseRx = 1;   // 置起标志，由主循环解析
						}
						Signal_SetInput();
						comm_state = COMM_IDLE;
					}
					else
					{
						comm_state = 11; // 等待下一位上升沿
					}
				}
			}
			break;

		case 11: // RX_WAIT_NEXT_BIT
			if(PA.6)
			{
				comm_timer = 1;
				comm_state = COMM_RX_DATA;
			}
			else
			{
				comm_timer++;
				if(comm_timer > 40) // 位间间隔过长
				{
					comm_state = COMM_IDLE;
					Signal_SetInput();
				}
			}
			break;
		 // -------- 等待起始低电平结束（发送模式）--------
        case 10: // 等待主机释放总线
			comm_timer++;
			if(comm_timer >= 10)
			{
				comm_timer     = 0;
				comm_bit_timer = 0;
				comm_bit_cnt   = 0;
				tx_shift_buf   = comm_tx_buf;
				$ PA.6 out,high;
				PA.6 = 1;
				LEDR_OFF();
				comm_state = COMM_TX_DATA;
			}
			break;

		// -------- 发送8bit数据 --------
		case COMM_TX_DATA:
			// bit=1:则高电平=500us 低电平=200us 
			// bit=0:则高电平=200us 低电平=500us 
			if(comm_bit_timer >= 14) 
			{       
				// 这里表示1个bit发码结束 
				comm_bit_timer = 0; 
				comm_bit_cnt ++; 
				if(comm_bit_cnt >= 8) 
				{    
					// 这里表示当前8bit发码结束 
					PA.6 = 0; 
					Signal_SetInput();
					comm_timer = 0;
					comm_state = COMM_TX_DONE; 
				} 
				else 
				{ 
					tx_shift_buf <<= 1;               
				} 
			} 
			else 
			{ 
				if(tx_shift_buf.7 == 1) 
				{           
					// 表示需要发bit = 1 
					if(comm_bit_timer <= 10) 
					{ 
						PA.6 = 1; 
					} 
					else 
					{ 
						PA.6 = 0; 
					} 
				} 
				else 
				{ 
					if(comm_bit_timer <= 4) 
					{ 
						PA.6 = 1; 
					} 
					else 
					{ 
						PA.6 = 0; 
					} 
				}    
			} 
			comm_bit_timer++;
			break;
		// -------- 发送完毕 --------
       case COMM_TX_DONE:
			if(PA.6)
			{
				comm_timer = 0;
			}
			else
			{
				comm_timer++;

				if(comm_timer >= 20) // 约1ms低电平
				{
					comm_timer = 0;
					comm_state = COMM_IDLE;
				}
			}
    		break;

        default:
            comm_state = COMM_IDLE;
            break;
	}
}

u8 Can_Sleep(void)
{
    chrg_chrgfull();
    // 正在充电
    if(chrg)
        return 0;
    // 已充满（LED亮）
    if(chrgfull)
        return 0;
    // 主机开机
    if(B_PowerOn)
        return 0;
    // 低电提示灯
    if(B_LowBat)
        return 0;
	if(comm_active_timer < 200) 
		return 0;
    return 1;
}

//=============低功耗=============================

void Power_down(void)
{
    u8 tmp;

    if(B_Sleep)
        return;
    tmp = Can_Sleep();
    if(tmp == 0)
        return;

    B_Sleep = 1;

    // 1. 关闭所有输出以省电
    LEDW_OFF();
    LEDR_OFF();
    PA.5 = 1; // 供电关闭（高电平）

    // 2. 配置唤醒源和 IO 状态
    Signal_SetInput();      // PA6 输入并开下拉
    PAC = 0B_0000_0000;     // 全部设为输入
    PAPH = 0B_0000_0001;    // 只有 PA0 需要上拉（用于检测充电 IC 拉低）
    PADIER = 0B_1100_0001;  // 使能 PA7, PA6, PA0 数字输入

    // 3. 关闭外设
    INTEN.T16 = 0;				//中断允许寄存器，关T16中断

    /* 切换到ILRC以省电 */
    $ CLKMD ILRC/1,En_IHRC,En_ILRC;
    CLKMD.En_IHRC = 0;

    // 4. 进入休眠
    tmp = PA; 
    stopexe;

    /* ========= 唤醒后恢复 ========= */
    $ CLKMD IHRC/8,En_IHRC,En_ILRC;
    
    // 等待时钟稳定
    tmp = 100;
    while(tmp > 0)
    {
        tmp--;
        nop;
    }

    IO_init();
    Timer16_Init();

    // 唤醒后重置所有通信和待机状态
    B_Sleep           = 0;
    B_SlaveIdle       = 0;
    idle_timer        = 0;
    comm_state        = COMM_IDLE;
    comm_timer        = 0;
    signal_low_cnt    = 0;
    B_NeedWakeup      = 0;
    B_PeerSleep       = 1;    
    B_LowBat          = 0;
    lowbat_debounce   = 0;
    comm_active_timer = 0;

    // 唤醒后立即检查一次充电状态
    chrg_chrgfull();

    /* 充电唤醒后立即尝试唤醒主机 */
    if(chrg || chrgfull)
    {
        B_NeedWakeup = 1;
        wakeup_timer = 0;
        idle_timer   = 0; 
    }
}

/***********************************************
函数功能：主函数（1ms周期）
************************************************/
void FPPA0(void)
{
    .ADJUST_IC SYSCLK=IHRC/8,Init_RAM
    IO_init();
    Timer16_Init();
    // 通信口初始化为下拉输入
    Signal_SetInput();
    comm_state = COMM_IDLE;
    comm_timer = 0;
  	signal_low_cnt = 0;
	B_PeerSleep    = 0;
	B_NeedWakeup   = 0;
    wakeup_timer   = 0;
    // 标志位清零
    B_PowerOn   = 0;
    B_NeedPower = 0;
    B_LowBat    = 0;
    B_SlaveIdle = 0;
    idle_timer  = 0;
    while(1)
    {
		if(B_CommTick)
	    {
	        B_CommTick = 0;
	        Comm_Func();
	    }
        if(B_MainScan)  // 1ms
        {
            B_MainScan = 0;
            wdreset;	
            // 预更新发送缓冲区（仅在空闲时更新，防止发送中途数据变化）
            if(comm_state == COMM_IDLE)
            {
                comm_tx_buf = Build_TxData();
            }
           
            // 解析接收到的指令
            if(B_ParseRx)
            {
                B_ParseRx = 0;
                Parse_RxCmd(rx_cmd_tmp);
            }
            // 通信活跃超时计时
            if(comm_active_timer < 1000)
                comm_active_timer++;

			// 电机供电完成检测与主动发送逻辑
			if(B_NeedPower)
			{
				if(!B_PwrDone)
				{
					pwr_on_timer++;
					if(pwr_on_timer >= 500) // 500ms 后认为供电完成并开始主动发送
					{
						B_PwrDone = 1;
						B_ProactiveTX = 1;
						proactive_tx_timer = 0;
						proactive_tx_gap = 0;
					}
				}
				
				if(B_ProactiveTX)
				{
					proactive_tx_timer++;
					if(proactive_tx_timer >= 400) // 主动发送持续 400ms
					{
						B_ProactiveTX = 0;
					}
					else
					{
						// 如果当前空闲，则尝试主动触发发送（每 20ms 发送一次）
						if(comm_state == COMM_IDLE)
						{
							proactive_tx_gap++;
							if(proactive_tx_gap >= 20)
							{
								proactive_tx_gap = 0;
								comm_bit_timer = 0;
								comm_state = 10; // 触发发送
							}
						}
						else
						{
							proactive_tx_gap = 0; // 发送中时不计时
						}
					}
				}
			}

			// LED	
			if(!B_Sleep)
			{
				Led_Func();
			}
		    Power_down();   
        }
    }
}

/***********************************************
函数功能：中断服务函数
入口参数：无
出口参数：无
备注：50us进一次中断
************************************************/
void	Interrupt (void)
{
	pushaf;
	if (Intrq.T16)
	{	
		stt16	Reload_T16;
		Intrq.T16 = 0;
		B_CommTick = 1;
		ct1++;
		if(ct1 >= 20)
		{
			ct1 = 0;
		 	B_MainScan = 1;
		}
	}
	
	popaf;
}