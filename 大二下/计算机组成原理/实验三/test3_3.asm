;Ĭ�ϲ���ML6.11������
DATAS SEGMENT

	plainText1 DB '20226745',13,10,'$'

	key DB -1,2,3,-4,5,-6,7,-8
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
    
        
    MOV SI,OFFSET key
    MOV DI,OFFSET plainText1
    MOV CX,08H
	
L1: MOV DH,[DI]
	MOV DL,[SI]
	CMP DL,80H
	
	JC L2 
	;�ж�����
	;ȡ��
	NEG DL
	JMP L3
	
L2:	JMP L4
	
	;��������
L3: ROL DH,1
	DEC DL
	CMP DL,00H
	JE L5
	JMP L3
	
	;��������
L4:	ROR DH,1
	DEC DL
	CMP DL,00H
	JE L5
	JMP L4
	
L5: MOV [DI],DH
	INC DI
	INC SI
	LOOP L1
	
	
	;���
	LEA DX,plainText1
    MOV AH,09H
    INT 21H
    
    
    
    
    MOV SI,OFFSET key
    MOV DI,OFFSET plainText1
    MOV CX,08H
	
L21: MOV DH,[DI]
	MOV DL,[SI]
	CMP DL,80H
	
	JC L22 
	;�ж�����
	;ȡ��
	NEG DL
	JMP L23
	
L22:JMP L24
	
	;��������
L23: ROR DH,1
	DEC DL
	CMP DL,00H
	JE L25
	JMP L23
	
	;��������
L24:ROL DH,1
	DEC DL
	CMP DL,00H
	JE L25
	JMP L24
	
L25: MOV [DI],DH
	INC DI
	INC SI
	LOOP L21
	
	
	
	LEA DX,plainText1
    MOV AH,09H
    INT 21H    
 
    
    
    ;�˴��������δ���
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START