import math
from random import random


def tiraDado():
    x = random()*6       #genera un numero casuale tra 0.99999999999999999999 e 5.999999999
    print(math.floor(x))       #Arrotonda x per difetto al primo intero <= x    [0;5]    0=valore 1, 1=valore 2 .... 5 = valore 6
    
tiraDado()
