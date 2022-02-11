from array import array
from math import floor
import math
import random as rnd
import math

rosse = 20
nere = 10
bianche = 30
totale = rosse + bianche + nere

probTot2 = pow(totale, 2)   #casi possibili di estrazione di 2 palline prese dal totale
probTot3 = pow(totale, 3)   #casi possibili di estrazione di 3 palline prese dal totale

def estrazione():
    colore = math.floor( rnd.random()*3)      #0=rosse, 1=nere, 2=bianche
    return colore



scelta1 = estrazione()
if (scelta1 == 0):    #colore rosso
    scelta2 = estrazione()
    if (scelta2 == 0):   #2 palline rosse estratte
        print("Sono state estratte 2 palline rosse. la probabilità è:")
        print(rosse / totale * rosse / totale)
    if (scelta2 == 1):    #una rossa e una nera
        scelta3 = estrazione()
        if(scelta3 == 2):    #tutte le palline di un colore diverso
            print("3 palline di colore diverso: ")
            print("Non conta l'ordine delle palline in uscita e sono ammesse ripetizioni, perchè la stessa pallina può essere estratta piu volte")
            print(rosse / totale * nere/totale * bianche/totale)