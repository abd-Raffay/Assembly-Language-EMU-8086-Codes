.model small
.data

dspmsg db 0ah,0dh,"Enter Number : $"
msg1 db 0ah,0dh,"!!!Divided by 3!!! $"
msg2 db 0ah,0dh,"!!!Not Divided by 3!!! $"
msg3 db 0ah,0dh,0dh,0dh,"Total Numbers Divided by 3 are :  $" 
count db ?
loopcount db ?

.code
mov ax,@data
mov ds,ax

Input:
  cmp loopcount,10
  je Result
  
  lea dx,dspmsg
  mov ah,9
  int 21h
  
  mov ah,1
  int 21h
  
  mov ah,0
  
  mov bl,3
  div bl
  
  cmp ah,0
  je Divided
  jmp NotDivided
  
Divided:
lea dx,msg1
mov ah,9
int 21h
add loopcount,1
add count,1
jmp Input

NotDivided:
lea dx,msg2
mov ah,9
int 21h
add loopcount,1
jmp Input

Result:
lea dx,msg3
mov ah,9
int 21h

mov dl,count
add dl,48
mov ah,2
int 21h