#define SYS_CLK 11059200L//设置定时器、串口频率参数

#include <reg52.h>
#include <stdio.h>
#include "delay.h"

#define uint16_t unsigned int 
#define uint8_t unsigned char 
	

uint8_t Data[10];
uint8_t count=0;

//设置波特率
void UartInit(void)	//2400bps@11.0592MHz
{
  SCON = 0x50;
  TMOD |= 0x20;
  PCON |= 0x80;
  TH1 = 0xe8;
  TL1 = TH1;
  TR1 = 1;
  REN = 1;
}


void UART_T (unsigned char UART_data){	//定义串口发送数据变量
  SBUF = UART_data;		//将接收的数据发送回去
  while(TI == 0);		//检查发送中断标志位
  TI = 0;				//令发送中断标志位为0（软件清零）
}
//将float的数转化为字符串
void Get_Group_Len(float number)
{
  	unsigned char bufData[20]="00000";
  	int i;
    sprintf(bufData, "%0.5f", number);//将小数转化为字符数组
    for(i=0;i<10;i++){
      UART_T(bufData[i]);//将字符发送到串口终端上去
    }
	
}

//串口中断函数，当串口接收到一个字符时触发该中断
void UART_R(void) interrupt 4 using 1{
  if(RI){				//中断标志
    RI = 0;				//清除中断
	  Data[count++]=SBUF;//将获取串口的值存放到数组中
	  if(count>10)count=0;//若接收到的值大于10个字符后，清除数据等到下一次接收
    UART_T(SBUF);
  }
}

//初始化函数
void setup(void)
{
  UartInit();
  EA = 1;
  ES = 1;
}

void main(void)
{
  setup();//初始化
  while(1){
	Get_Group_Len(34.567);//传入小数
	delay(2000);
  }
}