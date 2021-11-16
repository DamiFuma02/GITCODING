TITLE Vettore
.MODEL SMALL
.STACK
.DATA

Vett DB 5 DUP(0)

.CODE
.STARTUP

MOV CX, 00h					;contatore CX inizializzato a 0

ciclo: 	ADD DI, CX			;DI=DI+CX		DI è l'indirizzo di memoria a cui andrà a posizionare il valore di CX
		MOV [DI], CX		;mette nella cella 0 del vettore il valore del contatore CX	
		INC CX				;incrementa CX
		CMP CX, 5			;confronta CX con 5
		JB ciclo			;salta se CX<5
		
int 21h
END