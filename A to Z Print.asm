.model small
.data


.code

mov ax,@data
mov ds,ax

mov cx,26
mov bx,cx
mov al,"A"
   l1: 
    
     mov dl,al
     mov ah,02
     int 21h 
     add al,1
 
    loop l1     

