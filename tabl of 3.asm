 ;table of 3
 
 
 
 .model small
 .data 
  
   var1 db 0ah , 0dh , "3 x 1 = $" 
   var2 db 0ah , 0dh , "3 x 2 = $"
   var3 db 0ah , 0dh , "3 x 3 = $"
   var4 db 0ah , 0dh , "3 x 4 = $"
 
 .code
 main proc
    
    
mov bx,51	
       mov ax,@data
       mov ds,ax
	   
       lea dx,var1
       mov ah,9
       int 21h
       
	   add bx,3
	   mov dx,bx
	   mov ah,2
       int 21h
    
	   lea dx,var2
       mov ah,9
       int 21h
       
	   add bx,3
	   mov dx,bx
	   mov ah,2
       int 21h
    
	   lea dx,var3
       mov ah,9
       int 21h
    main endp 
 end main