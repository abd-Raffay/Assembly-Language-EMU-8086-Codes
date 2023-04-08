.model small
.data
dspmsg db "0 to 9 in resverse order ",0dh,0ah,"$"



.code

mov ax,@data
mov ds,ax
lea dx,dspmsg
mov ah,09
int 21h  
mov al,57
mov cx,10
mov bx,cx
   l1:   
     mov cx,bx
     
     mov dl,al 
  
     mov ah,2
     int 21h
     sub al,1
   
  
     dec bx
   loop l1 
   
