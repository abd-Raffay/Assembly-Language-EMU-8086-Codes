.model small
.data
temp db ?
count db ? 
space db " $"
spa db 0dh,0ah,"$"

.code

mov ax,@data
mov ds,ax
mov cl,6
mov bl,cl
mov temp,5

mov count,1 

   l1:        
   
         sub temp,1
         cmp temp,0
         je Loop2
         
         mov cl,temp
        
                 Spaces:
                  
                    lea dx,space
                    mov ah,09
                    int 21h 
                    
                 Loop Spaces     
                            
                            
               Loop2:     
                    mov cl,count
 
                  L2: 
                    
                    mov dl,"*" 
                    mov ah,02
                    int 21h    
                    
                    
                  Loop L2 
                  
          
          add count,1
          
          lea dx,spa
          mov ah,09
          int 21h  
          
         
         sub bl,1  
         mov cl,bl
      
    Loop L1     

  