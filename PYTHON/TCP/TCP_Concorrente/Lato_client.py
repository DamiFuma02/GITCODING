import socket

dimensione_buffer=1024
indirizzo_Server="127.0.0.1"
porta_server=5000
indirizzo_Porta_Server=(indirizzo_Server,porta_server)

TCPClientSocket=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
TCPClientSocket.settimeout(1)

stringa=input("Inserisci una stringa ")
messaggio=stringa+"\r\n"

TCPClientSocket.connect(indirizzo_Porta_Server)
TCPClientSocket.send(messaggio.encode())

#Parte relativa alla risposta
stringaRicevuta=""
while(True):
    frammento=TCPClientSocket.recv(dimensione_buffer).decode()
    if (len(frammento)>0):
        stringaRicevuta=stringaRicevuta+frammento
        if (stringaRicevuta[-1:]=="\r")or (stringaRicevuta[-1:]=="\n"):
            print("Risposta dal server: "+str(stringaRicevuta))
            break
TCPClientSocket.close()