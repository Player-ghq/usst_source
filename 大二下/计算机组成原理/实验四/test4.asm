;Ĭ�ϲ���ML6.11������
DATAS SEGMENT

	string1 DB 4 DUP(?),13,10,'$'

    ;�˴��������ݶδ���  
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
STACKS ENDS

DATASES SEGMENT
	
	string2 DB '4000D'
DATASES ENDS 


CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS,ES:DATASES
START:
    MOV AX,DATAS
    MOV DS,AX
    
    ;MOV BL,0
    MOV CX,04H
    
    MOV BP,00H
    
    
    ;ע: ���ܴ�س� Ҫ��������
L1: MOV AH,01H
    INT 21H
    MOV string1[BP],AL
    INC BP
    LOOP L1

	;LEA DX,string1
    ;MOV AH,09H
    ;INT 21H
    
    
    MOV BP,00H
    MOV CX,04H
   
L2: MOV BL,string1[BP]
	CMP BL,'9'
	JC L3   ;С��9 L3 ����
	CMP BL,'Z'
	JC L4	;С��Z L4 ��д��ĸ
	CMP BL,'z'
	JC L5 	;С��z L5 Сд��ĸ

	
L3: ADD BL,BL
	JMP L6
	
L4: ADD BL,20H
	JMP L6
	
L5: SUB BL,20H
	JMP L6
	
	
L6: MOV string1[BP],BL
	INC BP
	LOOP L2
	
	
	MOV	DL,0AH			;�������
	MOV	AH,02H
	INT	21H
	
	;LEA DX,string1
    ;MOV AH,09H
    ;INT 21H
    
    

    MOV AX,0B800H
    MOV ES,AX
    MOV DI,1660
    MOV SI,0
    
    
    MOV BP,00H
    MOV CX,04H
    MOV AH,0AH
    
L7: MOV AL,string1[BP]
	MOV string2[DI],AL
	MOV string2[DI+1],AH
	ADD DI,02H
	INC BP
	INC AH
	LOOP L7
	

    
    
    
    ;�˴��������δ���
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START