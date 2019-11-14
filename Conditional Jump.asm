 INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 64
;--------------------------------------------------
.DATA
 
;--------------------------------------------------
.CODE
MAIN PROC
   
   MOV BH,0
   MOV CH,7
   
   GO:
   
   CMP BH,CH
   JE END
   PRINTN "HELLO ASSEMBLY"
   INC BH
   JNE GO
   
   END:
   
   PRINTN "PROGRAM TERMINATED"
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN

