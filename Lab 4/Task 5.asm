ORG 100H

MOV AH, 1
INT 21H
MOV AH, 0
SUB AL, 48

MOV CL, AL
MOV BL, 2
DIV BL
MUL BL
CMP AL, CL
JZ EVEN
JNZ ODD

ODD:
MOV AH, 9
MOV DX, OFFSET M1
INT 21H
JMP FINISH

EVEN: 
MOV AH, 9
MOV DX, OFFSET M2
INT 21H
JMP FINISH
    
FINISH:
RET           

M1 DB 10,13,"ODD$"
M2 DB 10,13,"EVEN$"