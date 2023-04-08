.model small
.data
        
        
        
one db   "  /------------------------------------------------------------------------\",0ah,0dh,"$"
house2 db " |                                                                        |",0ah,0dh,"$" 
house3 db " |                                                                        |",0ah,0dh,"$"
house4 db " |                                                       #######          |",0ah,0dh,"$"
house5 db " |           *                                           #*****#          |",0ah,0dh,"$"
house6 db " |          ***                                          #*****#          |",0ah,0dh,"$"
house7 db " |         *****                                         #*****#          |",0ah,0dh,"$"
house8 db " |       *******                #**********************************#      |",0ah,0dh,"$"
house9 db " |      *********              #************************************#     |",0ah,0dh,"$"
house10 db "|      ***********            #**************************************#   |",0ah,0dh,"$"
house11 db "|    **************          ##########################################  |",0ah,0dh,"$"
house12 db "|   *****************             #*****************************#        |",0ah,0dh,"$"
house13 db "|   *****************             #*****************************#        |",0ah,0dh,"$"
house14 db "|   *****************             #*****************************#        |",0ah,0dh,"$"
house15 db "|   ****************              #*****************************#        |",0ah,0dh,"$"
house16 db "|    **************               #**********########***********#        |",0ah,0dh,"$"
house17 db "|         ####                    #**********#      #***********#        |",0ah,0dh,"$"
house18 db "|         ####                    #**********#      #***********#        |",0ah,0dh,"$"
house19 db "|         ####                    #**********#    @ #***********#        |",0ah,0dh,"$"
house20 db "|         ####                    #**********#      #***********#        |",0ah,0dh,"$"
house21 db "|                                 #**********#      #***********#        |",0ah,0dh,"$"
house22 db "|________________________________________________________________________|",0ah,0dh,"$"
       
                                 

.code
main proc 
    mov ax,@data
    mov ds,ax
    mov ah,9
    mov dx,offset one
    int 21h 
    
    mov ah,9
    mov dx,offset house2
    int 21h 
     
    mov ah,9
    mov dx,offset house3
    int 21h
    
    mov ah,9
    mov dx,offset house4
    int 21h  
    
    mov ah,9
    mov dx,offset house5
    int 21h  
    
    mov ah,9
    mov dx,offset house6
    int 21h  
    
    mov ah,9
    mov dx,offset  house7
    int 21h  
    
    mov ah,9
    mov dx,offset  house8
    int 21h  
    
    mov ah,9
    mov dx,offset  house9
    int 21h  
    
    mov ah,9
    mov dx,offset  house10
    int 21h  
    
    mov ah,9
    mov dx,offset  house11
    int 21h  
    
    mov ah,9
    mov dx,offset  house12
    int 21h  
    
    mov ah,9
    mov dx,offset  house13
    int 21h  
    
    mov ah,9
    mov dx,offset  house14
    int 21h  
    
    mov ah,9
    mov dx,offset  house15
    int 21h  
    
    
    mov ah,9
    mov dx,offset  house16
    int 21h  
    
    mov ah,9
    mov dx,offset  house17
    int 21h  
    
    mov ah,9
    mov dx,offset  house18
    int 21h  
    
    mov ah,9
    mov dx,offset  house19
    int 21h  
    
    mov ah,9
    mov dx,offset  house20
    int 21h 
    
    mov ah,9
    mov dx,offset  house21
    int 21h 
    mov ah,9
    mov dx,offset  house22
    int 21h 
  
    
       
    
  main endp
end main