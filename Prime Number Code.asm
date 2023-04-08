.model small
.data

str db "Enter a Number $"
str1 db 0ah,0dh,"Prime Number $"
str2 db 0ah,0dh,"Not a Prime Number $"
prime db ?


.code  
mov ax,@data
mov ds,ax

lea dx,str
mov ah,9
int 21h

mov ah,01
int 21h  

sub al,48
mov prime,al


PrimeNum proc

 
mov cl,prime
dec cl


L1:

cmp cl,1

jz prrime:
mov ax,0

mov al,prime

div cl
cmp ah,0
je nprime

loop L1 


prrime:
lea dx,str1
mov ah,09
int 21h
jmp Exit

nprime:
lea dx,str2
mov ah,09
int 21h
jmp Exit

ret

PrimeNum endp 


call PrimeNum

Exit: