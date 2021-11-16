import socket

dimensione_buffer = 10
Indirizzo_server = "127.0.0.1"
porta_server = 5000
indirizzo_Porta_Server = (Indirizzo_server, porta_server)

TCP_Client_Socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
TCP_Client_Socket.settimeout(1)

stringa=input("Inserisci: ")
messaggio=stringa+"\r\n"

#invio
TCP_Client_Socket.connect(indirizzo_Porta_Server)
TCP_Client_Socket.send(messaggio.encode())

#parte relativa alla risposta
stringaRicevuta = ""
while True:
    frammento = TCP_Client_Socket.recv(dimensione_buffer).decode()
    if (len(frammento)>0):
        stringaRicevuta = stringaRicevuta+frammento
        if(stringaRicevuta[-1:] == "\r") or (stringaRicevuta[-1:] == "\n"):
            print("Risposta dal server: "+str(stringaRicevuta))
            break
TCP_Client_Socket.close()