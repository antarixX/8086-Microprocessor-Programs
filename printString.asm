;PRINTING A STRING
include io.h
ASSUME CS:CODE,DS:DATA

DATA SEGMENT
NUM DB 13,10,13,10,13,10,13,10,"				Hello World",13,10,13,10,13,10,13,10,'$'
DATA ENDS

CODE SEGMENT
START:
	MOV AX,DATA
	MOV DS,AX
	LEA DX,NUM
	MOV AH,09H
	INT 21H
	MOV AH,4CH
	INT 21H
CODE ENDS
END START