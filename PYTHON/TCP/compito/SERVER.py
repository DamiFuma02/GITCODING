import socket
#import threading
import array
from time import sleep
import math

BufferLength=18
backlog=5
ServerIP="127.0.0.1"
ServerPORT=5000
ServerCOORDS=(ServerIP,ServerPORT)

def creaServer():
    # CREAZIONE SOCKET
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # si associa il socket alla coppia IP+Porta
        sock.bind(ServerCOORDS)
        print("SERVER CREATO CON SUCCESSO")
    except socket.error as errore:
        print(f"Si e verificato un problema. Errore : {errore}")
        print("Sto tentanto di ricreare il Server...")
        creaServer()
    return sock



def ricevi(NewSOCKET):
    j=0
    while (True):
        PacchettoRicevuto=NewSOCKET.recv(BufferLength).decode()
        print("Messaggio Ricevuto "+PacchettoRicevuto)

        if (len(PacchettoRicevuto)>0):
            #viene composto il messaggio proveniente dal client
            MessaggioCompleto[j]=float(PacchettoRicevuto)
            j+=1

            if (PacchettoRicevuto[-1:]=="\r") or (PacchettoRicevuto[-1:]=="\n"):
                print("Messaggio Terminato\n")
                break
    return MessaggioCompleto


def stampaVettore(VETT):
    print("STAMPA DEL VETTORE\n")
    k = 0
    for k in range(len(VETT)):
        print("k = "+str(k)+" -> "+str(VETT[k]))
    print("FINE VETTORE\n")


def calcoloDelta(a, b, c):
    print("CALCOLO DEL DELTA (DISCRIMINANTE) DELL'EQUAZIONE\nDELTA = b^2 - 4ac")
    Delta=(b*b) - (4*a*c)
    return Delta


def calcolaSoluzioni(VETT):
    VETT = array.array([float, float])
    print("Equazione inserita: ")
    a = MessaggioCompleto[0]
    print(str(a)+"* x^2")
    b = MessaggioCompleto[1]
    print(str(b)+"* x")
    c = MessaggioCompleto[2]
    print(str(c)+"\n")

    DELTA = calcoloDelta(a, b, c)
    print(DELTA)
    if (DELTA==0):
        print("IL DISCRIMINANTE è =0\n")
        print("L'EQUAZIONE AMMETTE DUE SOLUZIONI COINCIDENTI\n")
        VETT[0]= (-b) / (2*a)
        VETT[1]=VETT[0]
        return VETT
    if (DELTA>0):
        print("IL DISCRIMINANTE è >0\n")
        print("L'EQUAZIONE AMMETTE DUE SOLUZIONI DISTINTE\n")
        print("x1 = (-b - rad(DELTA) ) / 2a")
        print("x2 = (-b + rad(DELTA) ) / 2a")
        VETT[0] = (-b - math.sqrt(DELTA) ) / (2*a)
        VETT[1] = (-b + math.sqrt(DELTA) ) / (2*a)
        return VETT

    if (DELTA<0):
        print("IL DISCRIMINANTE è <0\n")
        print("EQUAZIONE IMPOSSIBILE DA RISOLVERE\n")
        VETT[0]= 0
        VETT[1]= 0
        return VETT


# CREAZIONE ARRAY CHE CONTERRà I 3 MESSAGGI RICEVUTI
MessaggioCompleto=array.array("i", [])




VettoreSoluzioni=np.array([float, float])













print("CREAZIONE SERVER...\n")
TCP_Server_Socket = creaServer()


i=0
while True:

    print(" i = " + str(i))
    i= i+1
    print("START PROGRAMMA\n")


    # Il server viene messo in ascolto
    print("Il server è in ascolto delle richieste \n")
    TCP_Server_Socket.listen(backlog)  # si ascoltano backlog richieste


    while True:


        print("IN ATTESA DI UNA CONNESSIONE DA PARTE DEL CLIENT\n")
        NewSOCKET, ClientCOORDS= TCP_Server_Socket.accept()
        #NewSOCKET è il nome del socket dove si eseguiranno gli scambi
        #ClientCOORDS indirizzo del Client
        print("Coordinate locali: "+str(NewSOCKET.getsockname()))

        print ("CONNESSIONE ACCETTATA\n")
        print("La connessione proviene da "+str(ClientCOORDS)+"\n")
        NewSOCKET.settimeout(20)


        #DA QUI INIZIA LO SCAMBIO DI DATI
        # I DATI VENGONO SALVATI NEL VETTORE MessaggioCompleto
        MessaggioCompleto = ricevi(NewSOCKET)

        print("FINE SCAMBIO\n")

        print("MESSAGGIO RICEVUTO\n")
        #  stampaVettore(MessaggioCompleto)


        VettoreSoluzioni = calcolaSoluzioni(MessaggioCompleto)
        stampaVettore(VettoreSoluzioni)
        print(NewSOCKET.getpeername())
        print("INVIO DATI")
        print("lunghezza messaggio " + str(len(VettoreSoluzioni)))



        flag="OK\r\n"
        NewSOCKET.send(flag.encode())
        print("Messaggio SPEDITO = "+flag)
        sleep(2)



        for i in range(0, len(VettoreSoluzioni), 1):
            MSG = str(VettoreSoluzioni[i])
            NewSOCKET.send(MSG.encode())
            print("Messaggio  = " + MSG + " SPEDITO\n")
            sleep(2)

        finemessaggio="\r\n"
        NewSOCKET.send(finemessaggio.encode())
        print("Messaggio  = " + finemessaggio + " SPEDITO\n")



        print("INVIO CONCLUSO\n")




    scelta=input("VUOI CONTINUARE A ESEGUIRE IL SERVER? (S/N)\n")
    if (scelta=='n'):
        print("CHIUSURA SERVER...\n")
        print("\nCHIUSURA SOCKET...\n")
        NewSOCKET.close()
        print("SOCKET CHIUSO\n")
        break

    #RICEZIONE DAL CLIENT
    #CONTIENE IN 0 IL MESSAGGIO E IN 1 LA COPPIA IP+PORTA DEL MITTENTE

TCP_Server_Socket.close()
print("SERVER CHIUSO\n")
