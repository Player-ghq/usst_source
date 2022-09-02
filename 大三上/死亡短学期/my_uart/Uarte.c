#define SYS_CLK 11059200L//���ö�ʱ��������Ƶ�ʲ���

#include <reg52.h>
#include <stdio.h>
#include "delay.h"

#define uint16_t unsigned int 
#define uint8_t unsigned char 
	

uint8_t Data[10];
uint8_t count=0;

//���ò�����
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


void UART_T (unsigned char UART_data){	//���崮�ڷ������ݱ���
  SBUF = UART_data;		//�����յ����ݷ��ͻ�ȥ
  while(TI == 0);		//��鷢���жϱ�־λ
  TI = 0;				//����жϱ�־λΪ0��������㣩
}
//��float����ת��Ϊ�ַ���
void Get_Group_Len(float number)
{
  	unsigned char bufData[20]="00000";
  	int i;
    sprintf(bufData, "%0.5f", number);//��С��ת��Ϊ�ַ�����
    for(i=0;i<10;i++){
      UART_T(bufData[i]);//���ַ����͵������ն���ȥ
    }
	
}

//�����жϺ����������ڽ��յ�һ���ַ�ʱ�������ж�
void UART_R(void) interrupt 4 using 1{
  if(RI){				//�жϱ�־
    RI = 0;				//����ж�
	  Data[count++]=SBUF;//����ȡ���ڵ�ֵ��ŵ�������
	  if(count>10)count=0;//�����յ���ֵ����10���ַ���������ݵȵ���һ�ν���
    UART_T(SBUF);
  }
}

//��ʼ������
void setup(void)
{
  UartInit();
  EA = 1;
  ES = 1;
}

void main(void)
{
  setup();//��ʼ��
  while(1){
	Get_Group_Len(34.567);//����С��
	delay(2000);
  }
}