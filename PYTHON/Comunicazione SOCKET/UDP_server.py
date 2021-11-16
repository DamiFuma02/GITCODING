#-*- coding: utf-8 -*-
#include python socket's Library

from socket import *   #viene inclusa la libreria
serverPort=12000   #definizione porta

#creazione UDP socket
#creo un oggetto di nome serverSocket che appartiene alla classe dei socket
serverSocket = socket(AF_INET, SOCK_DGRAM)   #invocazione costruttore della classe
#  AF_INET  indica il ltipo di socket (IP+porta)
# SOCK_DGRAM

#funzione BIND
serverSocket.bind( ('localhost', serverPort) )
#tramite bind viene creata la coppia porta "serverPort=12000"
#                                   +IP "local host"=127.0.0.1 Loopback
print("Il server è stato configurato, ed è in ascolto")

while 1:         #loop infinito come su arduino


    message, clientAddress = serverSocket.recvfrom (2048)
    
    modifiedMessage = message.upper()
    # upper() mette tutti i caratteri minuscoli in MAIUSC
    #qua verranno svolte le funzioni del server
    serverSocket.sendto( modifiedMessage, clientAddress )
    #invia a clientAddress il messaggio modificato
