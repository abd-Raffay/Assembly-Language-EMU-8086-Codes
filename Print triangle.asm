.model small
.data
temp db ?
count2 db ? 
count3 db ? 
space db " $"
spa db 0dh,0ah,"$"

.code

mov ax,@data
mov ds,ax
mov cl,6
mov bl,cl
mov temp,bl
mov count2,9 
mov count3,0

   l1:
      mov cl,count2
      sub temp,1 
          L2: 
            
            mov dl,temp
            add dl,48 
            mov ah,02
            int 21h    
            
            
          Loop L2 
          
          
          lea dx,spa
          mov ah,09
          int 21h  
          
          mov bh,0
        
          L3: 
            
            add bh,1
            lea dx,space
            mov ah,09
            int 21h
                
            cmp bh,count3
            jle L3
            
          
          
      sub count2,2        
      add count3,1 
      sub bl,1 
      mov cl,bl
     
    Loop L1     

