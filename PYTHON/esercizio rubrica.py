#Creazione classe CONTATTO

class Contatto:
    #COSTRUTTORE
    def __init__ (self, cognome='', nome='', numero=0):
        #i parametri saranno "cognome", "nome", "numero di telefono"
        self.cognome=cognome
        self.nome=nome           #assegnazione dei valori ai parametri
        self.numero=numero


    def nuovoContatto(self):
        print("Inserisci i dati del nuovo contatto:\n")
        self.cognome=input("COGNOME:")
        self.nome=input("NOME:")
        self.numero=int(input("NUMERO di telefono:"))

    def eliminaContatto(self):
        self.cognome=''
        self.nome=''
        self.numero=''

    def getCognome(self):
        return self.cognome

    def getNome(self):
        return self.nome

    def getNumero(self):
        return self.numero

    def stampa(self):
        print("\nCognome: " ,self.getCognome())
        
        print("Nome: " ,self.getNome())
        
        print("Numero: " ,self.getNumero())
        
        


def creazioneContatto(i):
    contatto.nuovoContatto()       
    rubrica.insert(i, contatto)
    return

def cancellaContatto(i):
    for a in range (i, 2, 1):
        rubrica[a]=rubrica[a+1]
    #richiamando il costruttore default venogno resettati i valori all'interno
    return

def modificaContatto(i):
    return

def visualizzaContatto(i):
    rubrica[i].stampa()
    return

def ricercaContatto():
    s=input("Quale parametro si vuole cercare? C=cognome, N=nome, n=numero \n")
    n=0
    if(s=='C'):
        print("Inserisci il cognome da cercare:")
        char=str(input())
        for i in range(0, 3, 1):
            if(rubrica[i].cognome==char):   #verifica se i caratteri inseriti sono presenti
                n+=1
                rubrica[i].stampa()         #stampa i valori contenuti
                
        
        
    else:
        if(s=='N'):
            print("Inserisci il nome da cercare:")
            char=str(input())
            for i in range(0, 3, 1):
                if(rubrica[i].nome==char):   #verifica se i caratteri inseriti sono presenti
                    n+=1
                    rubrica[i].stampa()

        if(s=='n'):
            print("Inserisci il numero da cercare:")
            char=int(input())
            for i in range(0, 3, 1):
                if(rubrica[i].numero==char):
                    n+=1
                    rubrica[i].stampa()

                

    return n     #ritorna il numero di contatti con la condizione verificata

#MAIN
print("RUBRICA")
contatto=Contatto()
print(contatto.nome)
rubrica=[contatto, contatto, contatto, contatto, contatto, contatto]
for i in range (0, 6, 1):
    rubrica[i]=contatto.__init__()

while(1):
    for i in range(0, 3, 1):
        rubrica[i].stampa()
    print("\nScegli l'operazione da svolgere:\n n=nuovo contatto\n c=cancella contatto \n m=modifica contatto \n r=ricerca contatto\n s=stampa")
    selezione=input()
    if(selezione=='r'):
        x=ricercaContatto()
        print("Sono stati trovati "+str(x)+" contatti corrispondenti alla ricerca effettuata")
    else:
        i=int(input("Inserisci la posizione del contatto:"))
        i-=1    #avviene questa operazione perchè gli indici partono da 0, mentre gli input da 1
        if(selezione=='c'):
            cancellaContatto(i)
        if(selezione=='m'):
            modificaContatto(i)
        if(selezione=='n'):
            creazioneContatto(i)
        if(selezione=='s'):
            visualizzaContatto(i)


    
        
