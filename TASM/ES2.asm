TITLE ES
;dato in input un numero binario da 16 bit contare quanti 0 ci sono e stampare
.MODEL SMALL
.DATA
.STACK
.CODE
.STARTUP
MOV CL, 10H				;NUMERO DI VOLTE DA ESEGUIRE IL CICLO
MOV BL, 00H				;CONTATORE DEGLI 0
ciclo:
	MOV AH, 01H
	INT 21H
	SUB AL, 30H
	CMP AL, 00h
	JE uguale
decr:	DEC CL				;CL--
	CMP CL, 00H
	JA ciclo			;salta se maggiore
	JMP stampa
	
uguale:		INC BL		;BL++
			JMP decr

MOV DL, 20H				;cod ASCII dello spazio
MOV AH, 02H
INT 21H					;stampa spazio

stampa: CMP BL, 09H
	JA maggiore
	JMP stampa2
	maggiore:	MOV DL, 01H
			ADD DL, 30H
			MOV AH, 02H
			INT 21H
			SUB BL, 0Ah			
			MOV DL, BL
			ADD DL, 30H
			MOV AH, 02H
			INT 21H
			JMP fine

	stampa2: MOV AH, 02H
		INT 21H
		ADD BL, 30H
		MOV DL, BL		;DL=BL
		MOV AH, 02H
		INT 21H			;STAMPA DA DL
		

fine:	MOV AH, 4CH
		INT 21H
END