;默认采用ML6.11汇编程序
DATAS SEGMENT
	AN DB 04H
	BN DB 08H
	PRODUCT DB 00H
	;plainText DB '22212411',13,10,'$'
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

	;初始化

    MOV AL,AN
    MOV AH,00H 
    MOV BL,BN
    MOV BH,00H
    MOV CX,08H
    
        
    ;al右移动  bl左移
L1: SHR AL,1
	JC L2
	SHL BL,1
	JMP L3
	
L2: ADD BH,BL
	;ADD BH
	SHL BL,1
	
	JMP L3
	
	;如果al=1 跳出循环
L3: CMP AL,1
	JE L4
	LOOP L1

L4:	ADD BH,BL
	MOV PRODUCT,BH

   
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START