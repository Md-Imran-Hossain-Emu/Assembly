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
   
   PRINTN
   
   MOV BL,1
   
   GO:
   
   CMP BL,N
   JG EXIT
   ADD SUM,BL
   INC BL
   JMP GO
   
   EXIT:
   PRINT "THE SUM IS"
   MOV AH,2
   MOV DL,SUM
   INT 21H
   
   MOV AH, 4CH
   INT 21H		
   MAIN ENDP
END	MAIN