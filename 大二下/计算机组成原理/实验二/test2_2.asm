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
    
        ;��min
    MOV SI,OFFSET ARRAY1
    MOV CX,3
    MOV AH,00H
    MOV BL,[SI]
    MOV MIN,BL
    
L2: INC SI
    MOV AL,[SI]
    CMP AL,MIN
    JC L3
	JNC LOOP1
	
L3:  MOV MIN,AL
	JMP LOOP1

LOOP1: LOOP L2
	
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START