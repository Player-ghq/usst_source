;Ĭ�ϲ���ML6.11������
DATAS SEGMENT
	x DB 0
	y DB 0
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
    
    ;��λov  �����־
    
    mov x,88H
    mov y,0AAH
    
    mov al,x
    add al,y
    
    
    ;mov nv, 0
    ;���־λ
    mov x,88H
    mov y,88H
    
    mov al,x
    sub al,y
   	
   	;���ű�־
    sub al,01H
    
    
     
    
    
    ;�˴��������δ���
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START