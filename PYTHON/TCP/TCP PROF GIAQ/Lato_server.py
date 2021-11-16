import socket





dimensione_buffer=1024
IP_locale="127.0.0.1"
porta_locale=5000
indirizzoPorta=(IP_locale,porta_locale)

#si crea il socket con i parametri precedenti
TCP_Server_Socket=socket.socket(socket.AF_INET,socket.SOCK_STREAM)

#si associa il socket alla coppia IP+Porta
TCP_Server_Socket.bind(indirizzoPorta)

#Il server viene messo in ascolto
print("Il server è in ascolto delle richieste ")
TCP_Server_Socket.listen(1)    #si ascolta una sola richiesta alla volta
while(True):
    nuovo_Socket,indirizzoClient=TCP_Server_Socket.accept()
    print("Your IP number is "+str(indirizzoClient))
    nuovo_Socket.settimeout(1)

    stringa_ricevuta=""

    while(True): #da qui inizia lo scambio di dati
        frammento_ricevuto=nuovo_Socket.recv(dimensione_buffer).decode()
        if (len(frammento_ricevuto)>0):

            #viene composto il messaggio proveniente dal client
            stringa_ricevuta=stringa_ricevuta+frammento_ricevuto
            if (frammento_ricevuto[-1:]=="\r") or (frammento_ricevuto[-1:]=="\n"):
                stringa_di_risposta=str(stringa_ricevuta).upper()
                nuovo_Socket.send(stringa_di_risposta.encode())
                break
    nuovo_Socket.close()


