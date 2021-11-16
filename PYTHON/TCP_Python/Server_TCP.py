import socket


file = open("file.txt", "w")

dimensione_buffer = 1024
IP_locale = "127.0.0.1"
porta_locale = 5000
IndirizzoPorta = (IP_locale, porta_locale)
mesServizio = "errore: dati ricevuti pericolosi"

TCP_Server_Socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  # SOCK_STREAM serve per il TCP
TCP_Server_Socket.bind(IndirizzoPorta)

# Il server viene messo in ascolto
print("Il server è in ascolto delle richieste")
TCP_Server_Socket.listen(1)  # apertura passiva/ascolto passivo 1 = backlog, numero massimo di richieste accettate


while True:

    nuovo_Socket, indirizzoClient = TCP_Server_Socket.accept()  # accept da una tupla 0 = connessione 1= indirizzo client

    print("la connesione proviene dall'indirizzo " + str(indirizzoClient))
    nuovo_Socket.settimeout(1)
    stringa_ricevuta = ""

    while True:  # inizia lo scambio di dati
        frammento_ricevuto = nuovo_Socket.recv(dimensione_buffer).decode()
        print(frammento_ricevuto, "\n")

        if (len(frammento_ricevuto) > 0):  # se la lunghezza(len) è >0 entra dentro l'if
                                           # viene composto il messaggio proveniente dal client
            stringa_ricevuta = stringa_ricevuta + frammento_ricevuto

            if ( stringa_ricevuta=="virus" or stringa_ricevuta=="errore"):
                errore = str(mesServizio)
                nuovo_Socket.send(errore.encode())
                print("errore: dati pericolosi")
                break
            if (frammento_ricevuto[-1:] == "\r" or frammento_ricevuto[-1:] == "\n"):
                print("Messaggio terminato")
                break

            else:
                stringa_di_risposta = str(stringa_ricevuta)
                nuovo_Socket.send(stringa_di_risposta.encode())




    nuovo_Socket.close()
