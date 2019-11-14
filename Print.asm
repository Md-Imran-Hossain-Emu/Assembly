INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 64
;--------------------------------------------------
.DATA
 
;--------------------------------------------------
.CODE
MAIN PROC
   
   
   PRINTN "HELLO WORLD"
   PRINTN "HELLO ASSEMBLY"
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN	

