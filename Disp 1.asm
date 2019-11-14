.MODEL SMALL    ;Gives the memory model to be used by the program
.STACK 100
;--------------------------------------------------
.DATA

NUM DB 49
CHAR DB 'A'
MSG DB "Hello World","$"
;--------------------------------------------------
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX    ;assign value to DS MOV AL,DATA1    ;get the first operand MOV BL,DATA2    ;get the second operand ADD AL,BL    ;add the operands

MOV AH, 2

MOV DL, NUM
INT 21H

MOV DL,0AH
INT 21H
MOV DL, 0DH
INT 21H


MOV DL,CHAR
INT 21H

MOV DL,0AH
INT 21H
MOV DL, 0DH
INT 21H

LEA DX,MSG
MOV AH,9
INT 21H

MOV AH, 4CH
INT 21H        ;return to the Operating System (DOS)
MAIN ENDP
END    MAIN    ;this is the program exit point



