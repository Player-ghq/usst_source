;默认采用ML6.11汇编程序
DATAS SEGMENT

	string1 DB 4 DUP(?),13,10,'$'

    ;此处输入数据段代码  
DATAS ENDS

STACKS SEGMENT
    ;此处输入堆栈段代码
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
    
    
    ;注: 不能打回车 要连续输入
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
	JC L3   ;小于9 L3 数字
	CMP BL,'Z'
	JC L4	;小于Z L4 大写字母
	CMP BL,'z'
	JC L5 	;小于z L5 小写字母

	
L3: ADD BL,BL
	JMP L6
	
L4: ADD BL,20H
	JMP L6
	
L5: SUB BL,20H
	JMP L6
	
	
L6: MOV string1[BP],BL
	INC BP
	LOOP L2
	
	
	MOV	DL,0AH			;输出换行
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
	

    
    
    
    ;此处输入代码段代码
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START