.model small
.data
dspmsg db "Enter 10 Numbers to find Highest ",0dh,0ah,"$"
resultmsg db 0ah,0dh,"Highest Number is $"
high db 0


.code

mov ax,@data
mov ds,ax
lea dx,dspmsg
mov ah,09
int 21h
mov cx,10
mov bx,cx
   l1:   
     mov cx,bx
     mov ah,01
     int 21h 
     cmp high,al
     jle Swap
     dec bx
   loop l1 
   
jmp Result     

Swap:
mov high,al
dec bx
jmp l1 


Result:
lea dx,resultmsg
mov ah,09
int 21h
mov dl,high
mov ah,02
int 21h