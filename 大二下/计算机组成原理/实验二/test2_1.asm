;Ĭ�ϲ���ML6.11������
DATAS SEGMENT
	;MIN DB 00H
	ARRAY1 DB 44H,22H,20H,80H
	;AD DB 4 DUP(?)
	
	
    ;�˴��������ݶδ���  
DATAS ENDS

STACKS SEGMENT

    �˴������ջ�δ���
STACKS ENDS
CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    
    ;���������ַ
    
    ;MOV SI,OFFSET ARRAY1
    ;MOV DI,OFFSET AD
    ;MOV CX,3
    ;
	;;ת��AD
;L1:	MOV AX,[SI]
	;MOV [DI],AX
    ;INC DI
    ;INC SI 
    ;LOOP L1
    ;
    
    
    
    
    ;��min
    ;MOV SI,OFFSET ARRAY1
    ;MOV CX,3
    ;MOV AH,00H
    ;MOV BL,[SI]
    ;MOV MIN,BL
    ;
;L2: INC SI
    ;MOV AL,[SI]
    ;CMP AL,MIN
    ;JC L3
	;JNC LOOP1
	;
;L3:  MOV MIN,AL
	 ;JMP LOOP1
;
;LOOP1: LOOP L2
;

	;
	
	;��ѭ��ת��
	;ARRAY1 DB 44H,22H,20H,80H
	
    MOV SI,OFFSET ARRAY1
    MOV CX,3
	MOV SI,2
	MOV AH,[SI+1]
	
L4:	MOV AL,[SI]
	MOV [SI+1],AL
	DEC SI
	LOOP L4
	
	MOV [SI+1],AH
	



	
	
	
    ;�˴��������δ���
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START