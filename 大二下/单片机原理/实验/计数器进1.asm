
	ORG    0000H
RESET:	LJMP   MAIN   ;�ϵ磬ת��������

	ORG    000BH
	JMP    T0_SERVICE   ;ת���жϷ������

      	ORG    0030H 	;������
MAIN: 	MOV   	TMOD,#06H  	;����T0Ϊģʽ2,������ʽ
  	MOV    	TH0,#00H   		;���ʼֵ00
	MOV	TL0,#00H
	CLR	ET0
	CLR	EA	
	SETB    TR0				


LOOP:	
	JNB P3.7,$ ;�ȴ������ͷţ�
	MOV     A,TL0           ;��ȡ��������ֵ
	CPL     A 
	MOP1,A
	SJMP    LOOP            ;�ȴ���

	
	  	END