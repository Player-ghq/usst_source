;Ĭ�ϲ���ML6.11������
DATAS SEGMENT
	D1 DW 0
	x DW 2222H
	y DW 6666H
	z DW 4444H
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
 	
 	
 	MOV AX,0000H
 	;CMP AX,0000H
 	
 	
    
    
  	;result = -x + y - z
	mov ax,y
	sub ax,z
	sub ax,x

	
    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START