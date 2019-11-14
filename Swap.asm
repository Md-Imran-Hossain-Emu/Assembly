.MODEL SMALL	;Gives the memory model to be used by the program
.STACK 64
;--------------------------------------------------
.DATA
 
 A DB 51
 B DB 56
;--------------------------------------------------
.CODE
MAIN PROC
   
   MOV AX,@DATA
   MOV DS, AX
   
   MOV BL, A
   MOV BH, B
   XCHG BH, BL
   
   MOV AH, 2
   MOV DL,BL
   INT 21H
   
   MOV AH, 4CH
   INT 21H		;return to the Operating System (DOS) 
   MAIN ENDP
END	MAIN	;this is the program exit point

