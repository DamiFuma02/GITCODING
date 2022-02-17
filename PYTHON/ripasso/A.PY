import math      #per funzione floor
import random as rnd 


lunghezza = 0

def inserimento():
    #lunghezza del vettore 
    lunghezza = int(input("inserisci la lunghezza del vettore: "))
    #inserimento del vettore
    arr = []
    print("Inserisci gli elementi del vettore: ")
    for i in range(lunghezza):
        dato = int(input("Inserisci il dato: "))
        arr.append(dato)
    a = [arr,lunghezza]
    return a



def sommaVettori(a,b):
    lungh = len(a)
    somma = []
    for i in range(lungh):
        s = a[i] + b[i]
        somma.append(s)
    return somma



def stampa(a):           #a contiene 3 vettori 
    print("STAMPA FOMRATTATA DEI DUE VETTORI")
    ciclo = len(a)
    lungh = len(a[0])
    for i in range(ciclo):
        print("VETTORE "+str(i+1))
        for b in range(lungh):
            print(str(a[i][b])+" ")
    return



def generaSecondo(length):
    arr = []
    print(length)
    for i in range(length):
        n = math.floor(rnd.random()*50)
        arr.append(n)
    return arr




#print(lunghezza)    #errata
#PRIMA FUNZIONE
datiInseriti = inserimento()
vettore1 = datiInseriti[0]
lunghezza = datiInseriti[1] 
#SECONDA FUNZIONE
vettore2 = generaSecondo(lunghezza)
#print(vettore2)
#TERZA FUNZIONE
vettoreSomma = sommaVettori(vettore1, vettore2)

stampa([vettore1, vettore2, vettoreSomma])