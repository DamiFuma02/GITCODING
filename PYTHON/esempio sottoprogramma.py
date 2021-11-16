#esempio di sottoprogramma
#somma di 2 numeri
def chiedi():  #definizione del sottoprogramma con nome "chiedi"
    stampa()
    x=int(input())
    #x è una  variabile interna al sottoprogramma perciò non è visibile all'esterno
    return x   #restituisce il valore di x

def stampa():
    print("Inserisci un numero")
    

#da qua inizia il MAIN
a=chiedi()    #chiama chiedi() in modo da effettuare l'input da tastiera
b=chiedi()


