ORG 100H

LEA SI, ARRAY1
MOV CX, 10

MOV [SI], 5
MOV AL, [SI]
MOV DL, AL
INC SI
SUB CX, 1

FUNCTION:
 MOV AL, [SI-1]
 ADD AL, 2
 MOV [SI], AL
 ADD DL, [SI]
 INC SI
LOOP FUNCTION

LEA SI, ARRAY1
LEA DI, ARRAY2
ADD DI, 9
MOV CX, 10

REVERSE:
 MOV AL, [SI]
 MOV [DI], AL
 INC SI
 DEC DI
LOOP REVERSE

LEA DI, ARRAY2
MOV CX, 10

PRINT:
 MOV DL, [DI]
 ADD DL, 48
 INC DI
 
 MOV AH, 2
 INT 21H 
LOOP PRINT



RET

ARRAY1 DB 10 DUP(0)
ARRAY2 DB 10 DUP(0)