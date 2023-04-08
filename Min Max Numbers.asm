.model small

.data

dsp db "Enter 10 Numbers : $"
maxmsg db 0ah,0dh,"Maximum Number is : $"
minmsg db 0ah,0dh,"Mimimum Number is : $"
num db ?
max db 0
min db 9

.code

mov ax,@data
mov ds,ax 

lea dx,dsp
mov ah,9
int 21h

mov si,0
mov cx,10
 
L1:
   mov ah,1
   int 21h
   
   sub al,48
   
   cmp al,max ;check max
   jg MaxN 
   
  Continue: 
  
   cmp al,min ;check min
   jle MinN
    
  Continue2:
   mov [num+si],al
   inc si 
loop L1 
   jmp Result
   
MaxN:
   mov max,al
   jmp Continue
  
   
   
MinN:
   mov min,al
   jmp Continue2
   
Result:
   lea dx,maxmsg
   mov ah,9
   int 21h 
   
   
   mov dl,max 
   add dl,48
   mov ah,2
   int 21h
   
   
   lea dx,minmsg
   mov ah,9
   int 21h 
   
   
   mov dl,min 
   add dl,48
   mov ah,2
   int 21h
   
   
   
   
   


