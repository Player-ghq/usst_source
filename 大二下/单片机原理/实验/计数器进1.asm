
	ORG    0000H
RESET:	LJMP   MAIN   ;上电，转向主程序

	ORG    000BH
	JMP    T0_SERVICE   ;转向中断服务程序

      	ORG    0030H 	;主程序
MAIN: 	MOV   	TMOD,#06H  	;设置T0为模式2,计数方式
  	MOV    	TH0,#00H   		;设初始值00
	MOV	TL0,#00H
	CLR	ET0
	CLR	EA	
	SETB    TR0				


LOOP:	
	JNB P3.7,$ ;等待按键释放，
	MOV     A,TL0           ;读取计数器的值
	CPL     A 
	MOP1,A
	SJMP    LOOP            ;等待中

	
	  	END