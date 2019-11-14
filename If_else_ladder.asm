 INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 64
;--------------------------------------------------
.DATA
 

;--------------------------------------------------
.CODE
MAIN PROC
   
   
   MOV BH,85
   
   CMP BH,100
   JGE INVALID
   
   CMP BH,80
   JGE A_PLUS
   
   CMP BH,70
   JGE A
   
   CMP BH,60
   JGE A_MINUS
   
   CMP BH,50
   JGE B
   
   CMP BH,40
   JL FAIL
   
   INVALID:
   PRINTN "INVALID"
   JMP END
   
   A_PLUS:
   PRINTN "A_PLUS"
   JMP END
   
   A:
   PRINTN "A"
   JMP END
   
   A_MINUS:
   PRINTN "A_MINUS"
   JMP END
   
   B:
   PRINTN "B"
   JMP END
   
   FAIL:
   PRINTN "FAIL"
   JMP END
   
   
   END:
   
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN

