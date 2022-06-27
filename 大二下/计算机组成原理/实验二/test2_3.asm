;默认采用ML6.11汇编程序
DATAS SEGMENT
	ARRAY1 DB 40H,20H,60H,80H
	AD DB 4 DUP(?)
	MIN DB 00H
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
    
    ;左循环转移
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