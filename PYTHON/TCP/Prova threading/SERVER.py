import socket
import threading
import numpy as np

LocalIP =  "127.0.0.1"
LocalPORT = 5000
LocalADD = (LocalIP, LocalPORT)

def creaSocket():
    # CREAZIONE SOCKET
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    while(sock == -1):
        print("SI E VERIFICATO UN ERRORE DURANTE LA CREAZIONE DEL SOCKET\nSTO RITENTANDO...")
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # si associa il socket alla coppia IP+Porta
    sock.bind(LocalADD)
    print("SERVER CREATO CON SUCCESSO")
    return sock


BufferLength=10
def ricezioneDati(sock):
    MessaggioCompleto=""
    j = 0
    while (True):
        PacchettoRicevuto = sock.recv(BufferLength).decode()
        print("Messaggio Ricevuto " + PacchettoRicevuto)
        if (len(PacchettoRicevuto) > 0):
            print("Numero caratteri ricevuti: ")
            print(str(len(PacchettoRicevuto)-2))
            # viene composto il messaggio proveniente dal client
            print("i\n")
            MessaggioCompleto += PacchettoRicevuto
            j=j+1

            if (PacchettoRicevuto[-1:] == "\r") or (PacchettoRicevuto[-1:] == "\n"):
                print("Messaggio Terminato\n")
                break;

    print(f"Messaggio Completo = {MessaggioCompleto}\n")
    #threadElab = threading.Thread(target=elaborazioneDati, args=(MessaggioCompleto, sock))
    #threadElab.start()
    elaborazioneDati(MessaggioCompleto, sock)


def elaborazioneDati(mess, sock):
    sockett = sock
    scelta=input("Cosa vuoi fare?\nM = MAIUSCOLO\nSD = Shift DX\nSS = Shift SX\n")
    print(scelta)
    if (scelta=='m'):
        mess = mess.upper()
        print(f"Messaggio finale : {mess}")

    if (scelta=="ss"):
        k=input("Quante posizioni vuoi traslare?")
        print(f"Messaggio inziale: {mess}")
        mess = int(mess)
        mess<<k
        print(f"Messaggio finale shiftato di {k} posizioni: {mess}")

    if (scelta=="sd"):
        k = input("Quante posizioni vuoi traslare?")
        print(f"Messaggio inziale: {mess}")
        mess = int (mess)
        mess>>k
        print(f"Messaggio finale shiftato di {k} posizioni: {mess}")

    #threadSEND = threading.Thread(target=invioDati, args=(mess, sockett, ))
    #threadSEND.start()
    invioDati(mess, sock)


def invioDati(mess, sock):
    mess = str(mess) + "\r\n"
    sock.send(str(mess).encode())
    print(f"Messaggio SPEDITO : {str(mess)}")
    riutilizzo(sock)








TCP_Server_Socket = creaSocket()



print("Server in attesa\n")
backlog = input("Quante connessioni si desidera ricevere contemporaneamente?\n")
TCP_Server_Socket.listen(int(backlog))     #si ascoltano massimo 2 connessioni
print("IL SERVER è IN ATTESA DI UNA RICHIESTA DI CONNESSIONE")




while True:
    newSocket, ClientADD =  TCP_Server_Socket.accept()
    print(f"RICHIESTA Connessione accettata.\nProviene da: {str(ClientADD)}")


    print("AVVIO THREAD RICEZIONE DATI\n")
    threadRCV = threading.Thread (target=ricezioneDati, args=(newSocket,))
    threadRCV.start()



def riutilizzo(sock):

    scelta = input("Vuoi chiudere il server? (S/N)")
    if (scelta=="s"):
        print("CHIUSURA SERVER...\n")
        sock.close()
        TCP_Server_Socket.close()
        print("SEVER CHIUSO, PER RIUTILIZZARE RIAVVIARE IL PROGRAMMA\n")
    if (scelta=="n"):
        main()





main()


