;Add two 16 bit numbers
INCLUDE IO.H
ASSUME CS:CODE,DS:DATA

DATA SEGMENT
	NUM1 DW 2760H
	NUM2 DW 3410H
	RESULT DW 0000H,13,10,0
	MSG DB 13,10," ANSWER OF 16 BIT ADDITION IS : ",0
DATA ENDS

CODE SEGMENT
START:
	MOV AX,DATA
	MOV DS,AX
	
	MOV AX,NUM1
	MOV BX,NUM2
	ADD AX,BX

	ITOA RESULT,AX
	
	OUTPUT MSG
	OUTPUT RESULT
	
	MOV AH,4CH
	INT 21H
	CODE ENDS
END START
