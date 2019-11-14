 INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 64
;--------------------------------------------------
.DATA
 
;--------------------------------------------------
.CODE
MAIN PROC
   
  
   GO:
   
   PRINTN "HELLO ASSEMBLY"
   JMP GO
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN

