import socket
LocalIP="127.0.0.1"
LocalPORT=5000
LocalCOORDS=(LocalIP,LocalPORT)    #TUPLA LOCALADDRESS

ServerIP="192.168.1.17"
ServerPort= 10000
ServerCOORDS = (ServerIP, ServerPort)     #TUPL

BufferLength=1024     #BYTE

#CREAZIONE SOCKET CLIENT
TCP_Client_Socket= socket.socket(socket.AF_INET, socket.SOCK_STREAM)
TCP_Client_Socket.settimeout(1)

#RICEVERE UNA STRINGA DA TASTIERA E SPEDIRLA AL SERVER

stringa=input("Inserisci il messaggio da inviare\n")
messaggio=stringa+"\r\n"

TCP_Client_Socket.connect(ServerCOORDS)

#CODIFICARE LA STRINGA IN OGGETTO BYTE
Messaggio=messaggio.encode()

#INVIO DEL MESSAGGIO
TCP_Client_Socket.sendto(Messaggio, ServerCOORDS)

#RISPOSTA DAL SERVER
risposta=TCP_Client_Socket.recvfrom(BufferLength).decode()

#CONTROLLO SE IL SERVER HA OPERATO CORRETTAMENTE
#In questo caso verificare la correttezza della risposta


MessaggioRicevuto = risposta[0]
Servercoordss=risposta[1]
MessaggioTESTO = MessaggioRicevuto.decode()

print ("Messggio ricevuto da ",Servercoordss)
print ("\n",MessaggioTESTO)


TCP_Client_Socket.close()