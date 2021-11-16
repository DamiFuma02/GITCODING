import socket
import threading

ServerIP =  "127.0.0.1"
ServerPORT = 5000
ServerADD = (ServerIP, ServerPORT)


def creaSocket():
    # CREAZIONE SOCKET
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # si associa il socket alla coppia IP+Porta
        print("SERVER CREATO CON SUCCESSO")
    except socket.error as errore:
        print(f"Si e verificato un problema. Errore : {errore}")
        print("Sto tentanto di ricreare il Server...")
        creaServer()
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


#MAIN

TCP_Client_Socket = creaSocket()
TCP_Client_Socket.connect(ServerADD)
print("Connessiona inoltrata a: ")
print(ServerADD)



while True:

    #LocalADD = TCP_Client_Socket.getsockname()
    #print(LocalADD)

    stringa = input("INSERISCI LA STRINGA DA INVIARE AL SERVER: \n")
    stringa =  stringa + "\r\n"   #PER IMPOSTARE LA FINE DEL MESSAGGIO
    TCP_Client_Socket.send(stringa.encode())

    print(f"IN ATTESA DI RISPOSTA DAL SERVER {str(TCP_Client_Socket.getpeername())}\n")

    threadRCV = threading.Thread(target=ricezioneDati, args=(TCP_Client_Socket,))
    threadRCV.start()
