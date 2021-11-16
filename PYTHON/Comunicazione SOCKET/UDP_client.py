# -*- coding: utf-8 -*-

from socket import *
serverName = "localhost"
serverPort = 12000
#CONICIDE con quella nel programma UDP_server.py

clientSocket = socket (AF_INET, SOCK_DGRAM)
#creazione socket Client

message = input("Inserisci una frase")
#input da tastiera


clientSocket.sendto( message.encode() , (serverName, serverPort) )

modifiedMessage, serverAddress = clientSocket.recvfrom (2048)
#riceve dal server il messaggio che e stato modificato

print(modifiedMessage)

clientSocket.close()

str=input("Premi un tasto per concludere")
