.MODEL SMALL	;Gives the memory model to be used by the program
.STACK 64
;--------------------------------------------------
.DATA

;--------------------------------------------------
.CODE
MAIN PROC
   
   MOV AH, 1
   INT 21H
   
   MOV AH, 2
   MOV DL,AL
   INT 21H
   
   MOV AH, 4CH
   INT 21H		;return to the Operating System (DOS) 
   MAIN ENDP
END	MAIN	;this is the program exit point

