/**********************�۾�����51ʵ�������************************
*  ƽ̨��STC89C52
*  ���ƣ���ˮ�Ƽ�FM������  

*  ����:11.0592MHZ	 
******************************************************************

ORG 00H
MAIN:
	MOV A,#0FEH
LOOP:
	MOV P1,A
LCALL DELAY
RL A
AJMP LOOP


DELAY:
	MOV R3,#20
D1: MOV R4,#50
D2: MOV R5,#250

DJNZ R5,$
DJNZ R4,D2
DJNZ R3,D1

RET
END
		
		

