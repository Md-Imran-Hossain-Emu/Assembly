 INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 64
;--------------------------------------------------
.DATA
 
;--------------------------------------------------
.CODE
MAIN PROC
   
   MOV CX,5
   
   GO:
   
   PRINTN "HELLO ASSEMBLY"
   LOOP GO
   
   PRINTN "LOOP ENDED"
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN