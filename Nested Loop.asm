 INCLUDE 'EMU8086.INC'
.MODEL SMALL	
.STACK 100
;--------------------------------------------------
.DATA

    N DB ?
    SUM DB 0
 
;--------------------------------------------------
.CODE
MAIN PROC
   
   MOV AX,@DATA
   MOV DS,AX
   
   PRINT "ENTER N:"
   MOV AH,1
   INT 21H
   SUB AL,48
   MOV N,AL
   
   MOV BH,1
   PRINTN
   MOV AH,2
   MOV DL, '*'
   
   GO1:
   
        CMP BH,N
        JG EXIT_1
        MOV BL,1
        
        GO2:
        CMP BL,N
        JG EXIT_2
        INT 21H
        INC BL
        JMP GO2
        
       EXIT_2:
       PRINTN
       INC BH
       JMP GO1
   EXIT_1:
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN