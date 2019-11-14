 INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 64
;--------------------------------------------------
.DATA
 

;--------------------------------------------------
.CODE
MAIN PROC
   
   CALL BASIC_PRINT
   PRINTN "MAIN PROGRAM"
   
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP

   BASIC_PRINT PROC
    
    PRINTN "HELLO WORLD"
    PRINTN "FUNCTION"
    
    RET
    
   BASIC_PRINT ENDP
END	MAIN