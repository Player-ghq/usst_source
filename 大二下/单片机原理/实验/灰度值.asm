
		FLAG  BIT 00H		;中断标志
		
		ORG    0000H
RESET:		LJMP   MAIN   ;上电，转向主程序

		ORG    001BH   		;定时器中断1入口地址
		JMP    T1_SERVICE   ;转向中断服务程序

      		ORG    	0030H 	;主程序

MAIN: 		MOV   	TMOD,#10H  	;设置T0为模式1
      		MOV    	TH1,#0F8H   	;设初始值F8CD
		MOV	TL1,#0CDH
		SETB	ET1				;T1中断允许
		SETB	EA				;CPU中断允许
		SETB         TR1z				;启动定时

		CLR     P1.0



HERE:  		MOV    	TH1,#0F8H   	;2ms设初始值F8CD
		MOV	TL1,#0CDH

		JNB	FLAG,$

		CLR	FLAG
		MOV    	TH1,#0BFH   	;18ms设初始值BF33
		MOV	TL1,#033H

		JNB	FLAG,$

		CLR           FLAGg
		AJMP	HERE

	  	ORG    	0100H 	        
T1_SERVICE:          
		CPL     P1.0
		SETB    FLAG
		RETI        		  	;中断返回

	  	END