;默认采用ML6.11汇编程序
DATAS SEGMENT
	x DB 0
	y DB 0
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
    
    ;进位ov  溢出标志
    
    mov x,88H
    mov y,0AAH
    
    mov al,x
    add al,y
    
    
    ;mov nv, 0
    ;零标志位
    mov x,88H
    mov y,88H
    
    mov al,x
    sub al,y
   	
   	;符号标志
    sub al,01H
    
    
     
    
    
    ;此处输入代码段代码
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START