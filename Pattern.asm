.model small
.code


call Pattern
jmp Exit

Pattern proc
mov cl,5  
mov bl,cl 
   L1:
     
     mov al,1
     mov cl,5
     
     
            L2:
              
              mov dl,al
              mov ah,02
              int 21h
              inc al 
      
            loop L2 
              
     mov dl,10
     mov ah,02
     int 21h
     
     mov dl,13
     mov ah,02
     int 21h
     dec bl
     mov cl,bl
     
   loop L1 
ret     

pattern endp

Exit: