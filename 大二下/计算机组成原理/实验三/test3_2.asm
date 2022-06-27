;默认采用ML6.11汇编程序
DATAS SEGMENT
	plainText DB '20226745',13,10,'$'

	key DB '1','2','3','4','5','6','7','8'
    ;此处输入数据段代码  
DATAS ENDS

STACKS SEGMENT
    ;此处输入堆栈段代码
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    
    
    
    MOV SI,OFFSET key
    MOV DI,OFFSET plainText
	MOV CX,08H
	
L1: MOV BL,[SI]
	XOR [DI],BL
	INC SI
	INC DI
	LOOP L1 
	
	;MOV AL,plainText
	
	LEA DX,plainText
    MOV AH,09H
    INT 21H
    
	
	
	

    MOV SI,OFFSET key
    MOV DI,OFFSET plainText
    MOV CX,08H
    
L2: MOV BL,[SI]
	XOR [DI],BL
	INC SI
	INC DI
	LOOP L2
	
	LEA DX,plainText
    MOV AH,09H
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START