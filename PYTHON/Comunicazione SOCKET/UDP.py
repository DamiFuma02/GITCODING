import threading
import logging
from socket import *

def UDP_server():
    serverPort=12000   #definizione porta
    
    







    
    return

def UDP_clint ():

    return




t1= threading.Thread (target = UDP_server, args=()  )
#creo processo serrver

t2= threading.Thread (target = UDP_client, args=()  )
#creo processo client

t1.start()
t2.start()

t1.join(1)   #deve aspettare 1 secondo per dare tempo al t2 (client) di spegnersi
t2.join()   #aspetta la fine del thread
