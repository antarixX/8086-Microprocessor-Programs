;Program to find 2’s complement of a number.

ASSUME CS:CODE,DS:DATA
INCLUDE IO.H
DATA SEGMENT
	MSG DB 13,10,"		BEFORE : ",0
	MSG2 DB 13,10,"		AFTER  : ",0
	NUM DB 0FH
	ANS DB 6 DUP(0)
DATA ENDS

CODE SEGMENT
START:
	MOV AX,DATA
	MOV DS,AX
	
	MOV AH,00H
	OUTPUT MSG
	MOV AL,NUM
	
	ITOA ANS,AX
	OUTPUT ANS
	
	NEG AL
	MOV NUM,AL
	
	OUTPUT MSG2
	ITOA ANS,AX
	OUTPUT ANS
	
	MOV AH,4CH
	INT 21H
	CODE ENDS
END START