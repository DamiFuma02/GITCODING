import math

class Numero:
    def __init__(self, valore=0):
        self.val = valore
    #la classe numero contiene un parametro di nome "val"

    def stampa(self):
        print(self.val)
        return


class Calcolatrice:
    def somma(num1, num2):
        return (num1.val + num2.val)

    def differenza(num1, num2) :
        if (num1.val>num2.val):
            return (num1.val - num2.val)
        else:
            return (num2.val - num1.val)

    def prodotto(num1, num2):
        return (num1.val * num2.val)

    def quoziente(num1, num2):
        return (num1.val / num2.val)



#MAIN
num1=Numero(10)       #creaione oggetto n1 con valore 10
num2=Numero(5)

#come chiamare la classe calcolatrice??
print("CALCOLATRICE\n scegliere l'operazione da svolgere (S=somma, D=differenza, P=prodotto, Q=quoziente")
a=input()

if (a=='s'):
    print("Operazione somma\n")
    print(num1.val, "+", num2.val, "=", Calcolatrice.somma(num1, num2))
if (a=='d'):
    print("Operazione differenza\n")
    print(num1.val, "-", num2.val, "=", Calcolatrice.differenza(num1, num2))
if (a=='p'):
    print("Operazione prodotto\n")
    print(num1.val, "*", num2.val, "=", Calcolatrice.prodotto(num1, num2))
if (a=='q'):
    print("Operazione divisione\n")
    print(num1.val, "/", num2.val, "=", Calcolatrice.quoziente(num1, num2))
    
#chiama il metodo somma della classe "Calcolatrice" ,
#a cui verranno passati oggetti della classe "Numero"
    
