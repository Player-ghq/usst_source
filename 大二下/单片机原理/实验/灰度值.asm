
		FLAG  BIT 00H		;�жϱ�־
		
		ORG    0000H
RESET:		LJMP   MAIN   ;�ϵ磬ת��������

		ORG    001BH   		;��ʱ���ж�1��ڵ�ַ
		JMP    T1_SERVICE   ;ת���жϷ������

      		ORG    	0030H 	;������

MAIN: 		MOV   	TMOD,#10H  	;����T0Ϊģʽ1
      		MOV    	TH1,#0F8H   	;���ʼֵF8CD
		MOV	TL1,#0CDH
		SETB	ET1				;T1�ж�����
		SETB	EA				;CPU�ж�����
		SETB         TR1z				;������ʱ

		CLR     P1.0



HERE:  		MOV    	TH1,#0F8H   	;2ms���ʼֵF8CD
		MOV	TL1,#0CDH

		JNB	FLAG,$

		CLR	FLAG
		MOV    	TH1,#0BFH   	;18ms���ʼֵBF33
		MOV	TL1,#033H

		JNB	FLAG,$

		CLR           FLAGg
		AJMP	HERE

	  	ORG    	0100H 	        
T1_SERVICE:          
		CPL     P1.0
		SETB    FLAG
		RETI        		  	;�жϷ���

	  	END