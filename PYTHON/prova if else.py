from ctypes import Array
from array import *
#LIBRERIE

a = int(input("Quante cifre della sequenza vuoi visualizzare???"))
vettore=array("i", [0,1])

#FUNZIONE RICORSICA = RICHIAMA SE STESSA ALL'INTERNO DI SE STESSA
def fibonacci(i):
    vettore.append(vettore[i] + vettore[i+1])
    if (i < (a-3)):
        fibonacci(i+1)    #CHIAMATA A SE STESSA
    else:
        print(vettore)


fibonacci(0) #CHIAMATA LA PRIMA VOLTA