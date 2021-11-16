#CLIENT 2
import socket

#FUNZIONE RICEZIONE
def ricezione ():
    stringaRicevuta = ""
    while True:
        frammento_ricevuto = TCP_Client_socket.recv(dimensioneBuffer).decode()
        if (len(frammento_ricevuto) == dimensioneBuffer):
            stringaRicevuta = stringaRicevuta + frammento_ricevuto
        else:
            stringaRicevuta = frammento_ricevuto
            break;
    return stringaRicevuta

#PARAMETRI CONNESSIONE
dimensioneBuffer = 1024
IP_remoto = "10.3.0.157"
porta_remota = 50000

indirizzoPortaServer = (IP_remoto, porta_remota)

# CREAZIONE SOCKET
TCP_Client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
TCP_Client_socket.settimeout(1)

# RICHIESTA CONNESSIONE
TCP_Client_socket.connect(indirizzoPortaServer)

print("-------------------")
print("CONNESSO COL SERVER")
print("-------------------")

print(ricezione()) #stampa titolo

nparametri = 0

#INSERIMENTO PARAMETRI EQUAZIONE SEC GRADO
while(nparametri < 3):
    risposta = ricezione()
    messaggio = input(risposta) #INSERISCI RISPOSTA
    TCP_Client_socket.send(messaggio.encode())  #INVIA RISPOSTA
    nparametri = nparametri + 1 #Parametri inseriti

#RISULTATI
x1 = ricezione()
x2 = ricezione()

if(x1==x2):
    print("Il risultato è: ",x1)
else:
    print("RISULTATI:")
    print("x1: ",x1)
    print("x2: ",x2)
TCP_Client_socket.close()