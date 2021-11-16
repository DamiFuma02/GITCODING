import math
#dichiarazione classe
class punto:
    #COSTRUTTORE __init__
    def __init__ (self, x=0, y=0):    #DEVE ESSERCI SEMPRE SELF!!!!
        #i parametri indicano i valori di default nel caso in cui non vengano
        #passati i valori
        self.x=x    #assegnazione dei valori
        self.y=y    #ai parametri

    def distanza_origine(self):         #distanza dall'origine del punto scelto
        dist=math.sqrt(self.x*self.x + self.y*self.y)
        return dist

#MAIN
p1=punto(3, 4)
print("P1  x=",p1.x, "  y=", p1.y)

p2=punto()
print("P1  x=",p2.x, "  y=", p2.y)

print("Distanza del punto dall'origine = ", p1.distanza_origine() )
