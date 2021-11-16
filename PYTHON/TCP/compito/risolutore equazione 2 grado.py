import math   #libreria math  
#1)si chiedono i 3 parametri a, b, c
#2) se l'equazione è degenere (a=0) dare l'unica soluzione
#3)calcolare il delta con una funzione apposita
#4)fornire le soluzioni reali
#5)se delta<0 dire equazione irrisolubile

def delta():    #funzione per il calcolo del delta
    b*=b    #b alla 2
    print("b=", b)
    a*=4    #a=4a
    a*=c    #a=4ac
    print("a=", a)
    delta=(b-a)  #b^2 - 4ac
    if (delta==0):
        print("2 soluzioni coincidenti= -b/2a ")
        a*=2
        print(-b/a)
    else:
        if (delta<0):
            print("L'equazione non presenta soluzioni reali")
        else:
            #delta>0
            print("L'equazione presenta due soluzioni: 1) ")
            delta=math.sqrt(delta)   #delta = rad quadrata di delta
            b=-b-delta       #b= -b -rad(delta)
            a*=2
            print(b/a)        #stamperà la soluzione -b-rad(delta)/2a
            print("\n2) ")
            
            

def chiedi():
    stampa()
    x=int(input())

def stampa():
    print("Inserisci il numero")

a=chiedi()
b=chiedi()
c=chiedi()
if (a==0):
    print("Equazione degenere: soluzione= -b/a ")
    print(-b/a)
