;Ĭ�ϲ���ML6.11������
DATAS SEGMENT
	ARRAY1 DB 40H,20H,60H,80H
	AD DB 4 DUP(?)
	MIN DB 00H
    ;�˴��������ݶδ���  
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
    ;��ѭ��ת��
    MOV SI,OFFSET ARRAY1
    MOV CX,3
	MOV SI,2
	MOV AH,[SI+1]
	
L4:	MOV AL,[SI]
	MOV [SI+1],AL
	DEC SI
	LOOP L4
	
	MOV [SI+1],AH
	
	
	
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START