import socket      # LIBRERIA SOCKET
ServerIP="127.0.0.1"
ServerPort = 10000                     #numero qualsiasi, fino a 65535 ma nono deve essere entro le 1024
ServerCOORDS = (ServerIP, ServerPort)     #TUPL
BufferLength=1024     #BYTE

#CREAZIONE DEL SOCKET
UDP_Socket_Server = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
                                #FAMIGLIA IPv4,  TIPOLOGIA DI COMUNICAZIONE
#ASSOCIAZIONE DELLE COORDS AL SOCKET
UDP_Socket_Server.bind(ServerCOORDS)     #viene passata la TUPLA che contiene IP e PORTA

def crea_file():
    file = open("file.txt", "w")
    for i in range (0, 10, 1):
        f.write(str(i) + "\n")
    f.close()

    file = open("file.txt", "r")
    while 1:
        lettura = f.read()
        if (lettura==""):
            break
        else:
            print(int(lettura))



print ("Il SERVER è stato creato\n")
i=0
while(True):
    i+=1
    #IL SERVER é IN ASCOLTO, perciò deve ricevere qualcosa dal CLIENT

    richiesta=UDP_Socket_Server.recvfrom(BufferLength)

    byteMessaggio=richiesta[0]
    indirizzoClient=richiesta[1]   #TUPLA (IP, PORTA)

    MessaggioTESTO=str(byteMessaggio.decode() )
    #IL messaggio viene decodificato e poi convertito in stringa

    print("La richiesta proviene da: ", indirizzoClient)
    print("Messaggio ricevuto: ", MessaggioTESTO)

    #AZIONI DEL SERVER
    MessaggioTESTO=str(MessaggioTESTO[::-1])
    print("Messaggio invertito: ", MessaggioTESTO)

    MessaggioRisposta = MessaggioTESTO.upper()
    MessaggioRisposta = MessaggioRisposta.encode()
    #Viene ricodificato in un formato che poi possa essere spedito

    UDP_Socket_Server.sendto(MessaggioRisposta, indirizzoClient)
    print ("Ho Inviato il messaggio a: ", indirizzoClient )




