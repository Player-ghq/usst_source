;Ĭ�ϲ���ML6.11������
DATAS SEGMENT
	D1 DW 0234H
	D2 Dw 0123H
	x DB 01H
	y DB 04H
	z DB 02H
	re DB 0
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
    
    ;����
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