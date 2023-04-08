.model small
.data
dspmsg db "First Five Even Numbers ",0dh,0ah,"$"



.code

mov ax,@data
mov ds,ax
lea dx,dspmsg
mov ah,09
int 21h  
mov al,56
mov cx,5
mov bx,cx
   l1:   
     mov cx,bx
     
     mov dl,al 
  
     mov ah,2
     int 21h
     sub al,2
   
  
     dec bx
   loop l1 
   
