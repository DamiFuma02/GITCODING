class Persona():
    def __init__(self):
        #si può interagire con l'utente
        self.Cognome=input("Inserisci il cognome")
        self.Nome=input("Inserisci il nome")
        self.CF=input("Inserisci il CF")
        return

    def stampa(self):
        print("Cognome :"+self.Cognome)
        print("Nome: "+self.Nome)
        print("Codice Fiscale: "+self.CF)
        
class Docente(Persona):
    def __init__(self):
        super().__init__()
        #richiama il costruttore Parent
        self.Materia=input("Inserisci la materia del docente:")
        return
    def stampa(self):
        super().stampa()
        print("Materia: "+self.Materia)
        return

class Studente(Persona):
    def __init__(self):
        super().__init__()
        self.Classe=input("Inserisci la classe: ")
        return
    
    def stampa(self):
        super().stampa()
        print("Classe: "+self.Classe)
        return
    

Docente1=Docente()
Docente1.stampa()
Studente1=Studente()
Studente1.stampa()
