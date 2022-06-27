/**********************�۾�����51ʵ�������************************
*  ƽ̨��STC89C52
*  ���ƣ��жϷ����������5-1
*  ����:11.0592MHZ	 
******************************************************************/
		ORG    0000H
RESET:	LJMP   MAIN   ;�ϵ磬ת��������

		ORG    000BH   ;��ʱ���ж�0��ڵ�ַ
		JMP    T0_SERVICE   ;ת���жϷ������
		
    	  	ORG    	0030H 	;������
MAIN: 	MOV 	SP,#60H 		;���ö�ջָ��
		MOV   	TMOD,#01H  		;����T0Ϊģʽ1
        	MOV    	TH0,#0D8H   	;���ʼֵDB00
		MOV	TL0,#000H
		SETB	ET0				;T1�ж�����
		SETB	EA				;CPU�ж�����
		SETB    TR0				;������ʱ
		MOV     R0,#50			;
		MOV     R1,#0H
		CLR     P1.0            ;����L0
		
HERE:   SJMP    HERE            ;�ȴ��ж�


;INT0�ⲿ�ж�0�������
	  	ORG    	0100H 	        ;�Ϸ������
T0_SERVICE: 	
  	    	MOV    	TH0,#0D8H   	;�������ʼֵ
		MOV	TL0,#000H
		DJNZ 	R0,T0_EXIT	
		MOV     A,R1
		CJNE    A,#0H,T0_1
		MOV		R0,#150	
		MOV     R1,#1
		SETB    P1.0
		AJMP  	T0_EXIT


T0_1: 	MOV		R0,#50	    
		MOV     R1,#0
		CLR		P1.0

T0_EXIT:RETI        			;�жϷ���
	  	END