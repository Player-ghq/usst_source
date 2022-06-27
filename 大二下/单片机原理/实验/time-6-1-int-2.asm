/**********************慧净电子51实验板例程************************
*  平台：STC89C52
*  名称：中断服务程序例程5-1
*  晶振:11.0592MHZ	 
******************************************************************/
		ORG    0000H
RESET:	LJMP   MAIN   ;上电，转向主程序

		ORG    000BH   ;定时器中断0入口地址
		JMP    T0_SERVICE   ;转向中断服务程序
		
    	  	ORG    	0030H 	;主程序
MAIN: 	MOV 	SP,#60H 		;设置堆栈指针
		MOV   	TMOD,#01H  		;设置T0为模式1
        	MOV    	TH0,#0D8H   	;设初始值DB00
		MOV	TL0,#000H
		SETB	ET0				;T1中断允许
		SETB	EA				;CPU中断允许
		SETB    TR0				;启动定时
		MOV     R0,#50			;
		MOV     R1,#0H
		CLR     P1.0            ;点亮L0
		
HERE:   SJMP    HERE            ;等待中断


;INT0外部中断0服务程序
	  	ORG    	0100H 	        ;断服务程序
T0_SERVICE: 	
  	    	MOV    	TH0,#0D8H   	;重新设初始值
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

T0_EXIT:RETI        			;中断返回
	  	END