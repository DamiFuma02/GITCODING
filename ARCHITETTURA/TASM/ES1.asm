TITLE ES
;dato in input un numero binario da 8 bit contare quanti 1 ci sono e stampare
.MODEL SMALL
.DATA
.STACK
.CODE
.STARTUP
MOV CL, 08H				;NUMERO DI VOLTE DA ESEGUIRE IL CICLO
MOV BL, 00H				;CONTATORE DEGLI 1
ciclo:
	MOV AH, 01H
	INT 21H
	SUB AL, 30H
	CMP AL, 01h
	JE uguale
decr:	DEC CL				;CL--
	CMP CL, 00H
	JA ciclo			;salta se maggiore
	JMP stampa
	

uguale:		INC BL		;BL++
			JMP decr


stampa: MOV AH, 02H
		INT 21H
		ADD BL, 30H
		MOV DL, BL		;DL=BL
		MOV AH, 02H
		INT 21H			;STAMPA DA DL
		

		MOV AH, 4CH
		INT 21H
END