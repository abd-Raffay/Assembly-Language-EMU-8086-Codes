.model small
.data
dspmsg1 db "Enter 4 Numbers : $"
result db 0ah,0dh,"Multiplication result is : $"
num db ? 
.code

mov ax,@data
mov ds,ax

call FillArray
call MulArray
jmp Exit

proc FillArray
    
    mov si,0
    lea dx,dspmsg1 
    mov ah,9
    int 21h
    mov cl,4
    
    L1:
    mov ah,1
    int 21h
    
    sub al,48 
    mov [num+si],al
    inc si               
    Loop l1
endp

proc MulArray
    
     
    mov si,0
    lea dx,result
    mov cl,4
    mov al,1
    
    
    L2: 
    mov bl,[num+si]
    mul bl
    inc si               
    Loop L2
    mov cl,al
endp
    
Exit: 
 
 lea dx,result
 mov ah,9
 int 21h
 
 mov ax,0
 mov al,cl
 
 mov bl,100
 div bl
 mov bh,ah
 mov dl,al
 add dl,48
 mov ah,02
 int 21h 
 
 
 mov ah,0
 mov al,bh
 
 
 mov bl,10
 div bl
 mov bh,ah 
 mov dl,al
 add dl,48
 mov ah,02
 int 21h
   
 mov dl,bh
 add dl,48
 mov ah,02
 int 21h






