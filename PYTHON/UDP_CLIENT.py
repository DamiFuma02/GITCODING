import socket
ServerIP="127.0.0.1"
ServerPort= 10000
ServerCOORDS = (ServerIP, ServerPort)     #TUPL

BufferLength=1024     #BYTE

#CREAZIONE SOCKET CLIENT
UDP_Client_Socket= socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

#RICEVERE UNA STRINGA DA TASTIERA E SPEDIRLA AL SERVER

stringa=input("Inserisci il messaggio da inviare\n")

#CODIFICARE LA STRINGA IN OGGETTO BYTE
Messaggio=stringa.encode()

#INVIO DEL MESSAGGIO
UDP_Client_Socket.sendto(Messaggio, ServerCOORDS)

#RISPOSTA DAL SERVER
risposta=UDP_Client_Socket.recvfrom(BufferLength)

#CONTROLLO SE IL SERVER HA OPERATO CORRETTAMENTE
#In questo caso verificare la correttezza della risposta

MessaggioRicevuto = risposta[0]
Servercoordss=risposta[1]
MessaggioTESTO = MessaggioRicevuto.decode()

print ("Messggio ricevuto da ",Servercoordss)
print ("\n",MessaggioTESTO)
