/**********************慧净电子51实验板例程************************
*  平台：STC89C52
*  名称：中断服务程序例程5-1
*  晶振:11.0592MHZ	 
******************************************************************/
		ORG    0000H
RESET:	LJMP   MAIN   ;上电，转向主程序

;		ORG    0003H   ;外部中断0入口地址
;		LJMP   INT0_SERVICE   ;转向中断服务程序

		ORG    000BH   ;定时器中断0入口地址
		JMP    T0_SERVICE   ;转向中断服务程序

;		ORG    0013H   			;外部中断1入口地址
;		JMP    INT1_SERVICE   ;转向中断服务程序

;		ORG    001BH   		;定时器中断1入口地址
;		JMP    T1_SERVICE   ;转向中断服务程序

;		ORG    0023H   ;串口中断入口地址
;		JMP    SERIAL_SERVICE   ;转向中断服务程序

;**************************************
;main
;**************************************
      	ORG    	0030H 	;主程序

MAIN: 	MOV 	SP,#60H 		;设置堆栈指针
		MOV   	TMOD,#01H  		;设置T0为模式1
      	MOV    	TH0,#0D8H   	;设初始值DB00
		MOV		TL0,#000H
		SETB	ET0				;T1中断允许
		SETB	EA				;CPU中断允许
		SETB    TR0				;启动定时
		MOV     R0,#50			;
		CLR     P1.0            ;点亮L0
HERE:   SJMP    HERE            ;等待中断

		CPL		P1.1		    ;P1.1取反

;**************************************
;INT0外部中断0服务程序
;**************************************
	  	ORG    	0100H 	        ;断服务程序
T0_SERVICE: 	
      	MOV    	TH0,#0D8H   	;重新设初始值
		MOV		TL0,#000H
		DJNZ 	R0,T0_EXIT	
		CPL     P1.0
		MOV		R0,#150	    
T0_EXIT:RETI        		  	;中断返回
;**************************************
;**************************************
;**************************************
	  	END