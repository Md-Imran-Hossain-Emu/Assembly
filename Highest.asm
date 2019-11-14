
    .MODEL SMALL
    .DATA
    GRADES DB 19H,93H,69H,55H,99H
    HIGHEST DB ?
    .CODE
    MAIN: MOV AX,@DATA
          MOV DS,AX
          MOV BX,OFFSET GRADES
          MOV CX,05
REGISTER: MOV AL,[BX]
COMPARE:  CMP [BX],AL
          JA REGISTER
          INC BX
          LOOP COMPARE
          MOV HIGHEST,AL
          MOV AH,4CH
          INT 21H
          END MAIN
  