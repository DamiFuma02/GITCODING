
#SENSORE CHE RILEVA LA TEMPERATURA

import socket
import numpy as np
import sys
#import threading
from time import sleep



#COORDINATE SERVER
BufferLength=20
ServerIP="127.0.0.1"
ServerPORT=5000
ServerCOORDS=(ServerIP,ServerPORT)



def creaSocket():
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(20)
        sock.connect(ServerCOORDS)
        print("Socket creato con successo\n")
    except socket.error as errore:
        print(f"Si e verificato un problema. Errore : {errore}\n")
        sys.exit()
    return sock




def main():
    print("CONNECTING...")
    print(client.connect(serverIP, serverPort))
    print("CONNECTED...")
    client.onConnectionChange(onTCPConnectionChange)
    sleep(1)  # per evitare che spedisca i dati prima della connesione

    while True:
        # Richiesta dal Server a,b,c - risposrta dal client
        lettura = letturaValore()
        client.send(lettura)
        print("Dato spedito = " + str(lettura))


# ---------------------
# RISULTATO


def letturaValore():
    return analogRead(0)


# MAIN
if __name__ == "__main__":
    pinMode

    main()


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