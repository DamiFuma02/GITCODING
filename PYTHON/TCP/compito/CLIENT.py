import socket
import numpy as np
import sys
#import threading
from time import sleep

#COORDINATE SERVER
BufferLength=20
backlog=5
ServerIP="127.0.0.1"
ServerPORT=5000
ServerCOORDS=(ServerIP,ServerPORT)

def ricevi(sock):
    j=0

    pacchettoRicevuto = sock.recv(4).decode()
    print("Messaggio Ricevuto " + pacchettoRicevuto)

    if (pacchettoRicevuto == "OK\r\n"):
        print("INZIO RICEZIONE SOLUZIONI\n")

        while (True):
            sleep(1)
            print("j = "+str(j))
            pacchettoRicevuto=sock.recv(BufferLength).decode()
            print("Messaggio Ricevuto "+pacchettoRicevuto)

            if (len(pacchettoRicevuto)>0):
                #viene composto il messaggio proveniente dal client
                if (pacchettoRicevuto[0]=="-"):
                    print("Il numero è negativo\n")
                    pacchettoRicevuto[-1:]="\n"
                MessaggioRicevuto[j]=pacchettoRicevuto
                j = j + 1
                if (pacchettoRicevuto[-1:]=="\r") or (pacchettoRicevuto[-1:]=="\n"):
                    print("Messaggio Terminato\n")
                    break


    return MessaggioRicevuto



def creaClient():
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(20)
        sock.connect(ServerCOORDS)
        print("Socket creato con successo\n")
    except socket.error as errore:
        print(f"Si e verificato un problema. Errore : {errore}\n")
        sys.exit()
    return sock

def inputTasiera():

    print("RISOLUZIONE EQUAZIONE DI SECONDO GRADO\n")
    print("Inserisci i coefficienti numerici a*x^2 + b*x + c \n")

    CoeffA = input("Inserisci a: ")
    CoeffB = input("Inserisci b: ")
    CoeffC = input("Inserisci c: ")
    MessaggioA = CoeffA
    MessaggioB = CoeffB
    MessaggioC = CoeffC+"\r\n"
    MessaggioCompleto=(MessaggioA, MessaggioB, MessaggioC)
    return MessaggioCompleto

i=0



def inviaDati(Messaggio):
    print(len(Messaggio))
    for i in range(0, len(Messaggio), 1):
        TCP_Client_Socket.send(Messaggio[i].encode())
        print("Messaggio "+str(i+1)+" = "+Messaggio[i]+" SPEDITO\n")
        sleep(1)



MessaggioRicevuto=np.array([str,str, str])


while (True):

    TCP_Client_Socket = creaClient()

    Messaggio=inputTasiera()

    print("i = "+str(i))
    i+=1

    print("---------------------------\n")

    inviaDati(Messaggio)


    print("INVIO DATI CONCLUSO\n")


    print("RICEZIONE DATI da "+str(TCP_Client_Socket.getpeername())+"\n")

    MessaggioRicevuto=ricevi(TCP_Client_Socket)

    print("Lunghezza Messaggio RIcevuto" + str(len(MessaggioRicevuto)))


    if (MessaggioRicevuto[0]=="0" and MessaggioRicevuto[1]=="0"):
        print("L'equazione inserita non ammette soluzioni\nIl discriminante Delta < 0")
    else:
        print("Soluzioni dell'equazione: \n")

        for i in range (0,len(MessaggioRicevuto)-1, 1):
            print("i = "+ str(i) + "-> "+str(MessaggioRicevuto[i]))


    print("\nOPERAZIONI TERMINATE\nCHIUSURA SOCKET...\n")

    TCP_Client_Socket.close()
    print("SOCKET CHIUSO\n")