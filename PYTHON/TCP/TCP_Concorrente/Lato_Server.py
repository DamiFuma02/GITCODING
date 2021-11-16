import socket
import threading   #libreria che gestisce i processi concorrenti

#sottoprogramma che gestisce la richiesta di connessione di un client
# input=sock corrisponde al socket della richiesta che il server deve gestire
def protocollo(sock):
    sock.settimeout(1)  #si setta il timeout

    stringa_Ricevuta=""
    while True:
        frammento_ricevuto=sock.recv(dimensioneBuffer).decode()
        if len(frammento_ricevuto)>0:
            stringa_Ricevuta=stringa_Ricevuta+frammento_ricevuto
            if frammento_ricevuto[-1:]=="\r" or frammento_ricevuto[-1:]=="\n":
                print("Stringa da remoto ricevuta: "+str(stringa_Ricevuta))

                #qui si mettono tutte le operazioni del servizio da eseguire
                #sui dati inviati dal client
                stringa_da_inviare=str(stringa_Ricevuta).upper()

                print("Stringa inviata: "+str(stringa_da_inviare))
                sock.send(stringa_da_inviare.encode())
                break
    sock.close()

#qui comincia il main del programma
dimensioneBuffer=1024
indirizzoIPlocale="127.0.0.1"
portaLocale=5000
indirizzoPorta=(indirizzoIPlocale,portaLocale)

TCPServerSocket=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
TCPServerSocket.bind(indirizzoPorta)

print("Server in attesa di richieste ")
TCPServerSocket.listen(2)   #Si ascoltano massimo 2 connessioni

while True:
    nuovoSocket,indirizzoRemoto=TCPServerSocket.accept()
    print("Connessione da "+str(indirizzoRemoto))

    pippo=threading.Thread(target=protocollo,args=(nuovoSocket,))
    pippo.start()
