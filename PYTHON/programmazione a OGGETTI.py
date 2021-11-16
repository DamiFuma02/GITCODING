class contatto:
    cognome="Fumagalli"
    nome="Damiano"
    numero=1234

#METODI
#DEVE TERMINARE CON RETURN variabile che si vuole restituire.
#se non si scrive nulla vuol dire che il metodo è void
    def stampa():
        print("Cognome: ", contatto.cognome)
        print("Nome: ", contatto.nome)
        print("Indirizzo: ", contatto.numero)
        return

    def get_cognome():
        return self.cognome   #al posto di this-> in C++

    def get_nome():
        return self.nome

#MAIN
contatto.stampa()
