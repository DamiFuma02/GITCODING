import math      #per funzione floor
import random as rnd 



def inserimento():
    #lunghezza del vettore 
    lunghezza = int(input("inserisci la lunghezza del vettore: "))
    #inserimento del vettore
    arr = []
    print("Inserisci gli elementi del vettore: ")
    for i in range(lunghezza):
        dato = int(input("Inserisci il dato: "))
        arr.append(dato)
    #per ritornare sia la lunghezza che il vettore generato
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
    print("STAMPA FOMRATTATA DEI 3 VETTORI")
    ciclo = len(a)
    lungh = len(a[0])
    for i in range(ciclo):
        if (i<2):
            print("VETTORE "+str(i+1))
        else:
            print("\nVETTORE SOMMA")
        for b in range(lungh):
            print(str(a[i][b])+" ")
    return



def generaSecondoVettore(length):
    arr = []
    print(length)
    for i in range(length):
        n = math.floor(rnd.random()*50)
        arr.append(n)
    return arr




#PRIMA FUNZIONE
datiInseriti = inserimento()
vettore1 = datiInseriti[0]
lunghezza = datiInseriti[1] 
#SECONDA FUNZIONE
vettore2 = generaSecondoVettore(lunghezza)
#print(vettore2)
#TERZA FUNZIONE
vettoreSomma = sommaVettori(vettore1, vettore2)
vettoreStampa = [vettore1, vettore2, vettoreSomma]
stampa(vettoreStampa)