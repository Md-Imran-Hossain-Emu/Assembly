; A - B


.MODEL SMALL	;Gives the memory model to be used by the program
.STACK 64
;--------------------------------------------------
.DATA
 
 A DB ?
 B DB ?
;--------------------------------------------------
.CODE
MAIN PROC
   
   MOV AH, 1
   INT 21H
   
   MOV A,AL
   SUB A,48
   INT 21H
   MOV B,AL
   SUB B,48
   
   MOV BH,A
   SUB BH,B
   ADD BH,48
   
   MOV AH,2
   MOV DL,0AH
   INT 21H
   MOV DL,0DH
   INT 21H
   
   MOV DL,BH
   INT 21H
   
   MOV AH, 4CH
   INT 21H		;return to the Operating System (DOS) 
   MAIN ENDP
END	MAIN	;this is the program exit point

