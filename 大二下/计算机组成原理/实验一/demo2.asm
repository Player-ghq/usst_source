;默认采用ML6.11汇编程序
DATAS SEGMENT
	D1 DW 0234H
	D2 Dw 0123H
	x DB 01H
	y DB 04H
	z DB 02H
	re DB 0
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
    
    ;交换
    mov ax,D1
    mov bx,D2
    mov D1,bx
    mov D2,ax
    
    
  	;result = -x + y - z
  	mov ah,00H
	mov al,y
	sub al,z
	sub al,x
	mov re,al
	

    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START