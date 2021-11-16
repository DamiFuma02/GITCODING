import socket

serverIP = "127.0.0.1"
serverPORT = 5000
serverADD = (serverIP, serverPORT)

print("ESERCIZIO: TRASFERIRE 4000BYTE AL SERVER\n")

ClientSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
print("Socket UDP creato con successo\n")

