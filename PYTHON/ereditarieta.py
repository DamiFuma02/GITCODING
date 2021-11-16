#ereditarietà applicata alla matematica, piano cartesiano
#il punto è l'entità base, perciò sarà la classe "Parent"
import math
class Punto2D:
    def __init__(self, nome, ascissa, ordinata):
        self.nome=nome   #stringa/carattere
        self.x=ascissa
        self.y=ordinata
        return

    def stampa_punto(self):
        print("Punto " +str(self.nome)+ ": (" +str(self.x)+ ";"+str(self.y)+")")
        #si deve porre come stringa perchè nella concatenazione è possibile solo le stringhe

    def distanza_origine(self):
        return math.sqrt(self.x*self.x+self.y*self.y)


class Punto3D(Punto2D):
    def __init__ (self, nome, ascissa, ordinata, quota):
        super().__init__(nome,ascissa, ordinata)
        #viene chiamato il costruttore del parent;
        #"super" invoca la classe genitore
        self.z=quota
        return

    def stampa_punto(self):
        super().stampa_punto()
        print(self.z)


    def distanza_origine(self):
        d=super().distanza_origine()*super().distanza_origine()
        d=math.sqrt(d+self.z*self.z)
        return d
        

#MAIN

a=Punto2D("a",  1, 2)
b=Punto3D("b", 1, 2, 3)
a.stampa_punto()
b.stampa_punto()
a.distanza_origine()
b.distanza_origine()
