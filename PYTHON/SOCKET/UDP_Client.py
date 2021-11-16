# CLIENT
import socket

indirizzoServer = "10.3.0.157"
portaServer = 10000

tuplaServer = (indirizzoServer, portaServer)

dimensioneBuffer = 1024

#Creazione SOCKET

socketClient = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

richiesta = ("Connessione").encode()
socketClient.sendto(richiesta, tuplaServer)

risposta = socketClient.recvfrom(dimensioneBuffer)

dati = risposta[0].decode()

print(dati, " con il Server: ", tuplaServer)

c = 1
while (c != 0):

    risposta = socketClient.recvfrom(dimensioneBuffer)
    dati = risposta[0].decode()

    c = input(dati)

    richiesta = c.encode()
    socketClient.sendto(richiesta, tuplaServer)


