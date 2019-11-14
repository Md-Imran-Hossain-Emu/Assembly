.MODEL SMALL	;Gives the memory model to be used by the program
.STACK 64
;--------------------------------------------------
.DATA
DATA1	DB	52H
DATA2	DB	29H
SUM	DB	?
;--------------------------------------------------
.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX	;assign value to DS MOV AL,DATA1	;get the first operand MOV BL,DATA2	;get the second operand ADD AL,BL	;add the operands
   MOV SUM,AL	;store result in location SUM MOV AH,4CH	;set up to
   MOV AH, 4CH
   INT 21H		;return to the Operating System (DOS) 
   MAIN ENDP
END	MAIN	;this is the program exit point

