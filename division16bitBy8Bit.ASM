;Division of 16bit number by 8bit number
ASSUME CS:CODE,DS:DATA

DATA SEGMENT
	NUM1 DW 4060H
	NUM2 DB 9FH
	RESULT DB 00H
DATA ENDS

CODE SEGMENT
START:
	MOV AX,DATA
	MOV DS,AX
	
	MOV AX,NUM1
	DIV NUM2
	MOV RESULT,AL
	
	MOV AH,4CH
	INT 21H
	CODE ENDS
END START
