 INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 64
;--------------------------------------------------
.DATA
 

;--------------------------------------------------
.CODE
MAIN PROC
   
   
   MOV BH,20
   CMP BH,0
   JL NEGATIVE
   JGE POSITIVE
   
   NEGATIVE:
   
   PRINTN "THIS NUMBER IS NEGATIVE"
   JMP END
   
   POSITIVE:
   
   PRINTN "THIS NUMBER IS POSITIVE"
   JMP END
   END:
   
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN

