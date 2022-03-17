vettoreA = c(1,2,3,4)
vettoreB = c(5,6,7,8)
vettoreA+vettoreB    #len(vettorelungo) %% len(vettoreCorto) = 0 
10*vettoreA   #moltiplica 10 per ogni elemento del vettore
vettoreA*vettoreB    #moltiplica ogni elemento con quello corrispondente
vettoreA%*%vettoreB #prodotto scalare tra vettore riga (A) e vettore colonna(B)
vettoreA[3]    #3°elemento del vettore, la numerazione parte da 1
vettoreA[-c(1,2,3)]   #toglie gli elementi 123 dal vettoreA
vettoreA > 10   #restituisce un vettore booleano con risultato del confronto per ogni elemento
vettoreA [vettoreA>10]  #seleziona solo le posizione in cui elementi = TRUE
#COERSIONE = cambio di tipo di dato
sum(vettoreA) #traduce ogni elemento del vettore in int e poi li somma
mean(vettoreA)  #media artimentica dei valori di vettoreA
x = c(nome1=1,nome2=2,nome3=3)  #assegna i nomi a ogni elemento del vettore
x["nome"]  #stampa l'elemento del vettore x chiamato nome
vett = 2:5   # --> [2,3,4,5]
vett[vett%%2 == 0] #stampa tutti gli elementi in cui la condizione espressa = TRUE
#LISTE
lista = list(nome1 = 1, nome2 = "ciao", nome3 = TRUE)
lista$nome1  #stampa l'elemento con chiave nome1
lista[c("nome1","nome2")]
lista[1]  #lista con dentro l'elemento in pos 1
lista[[1]]  #valore effettivo della cella 1 con il suo tipo di dato
#MATRICI
M = matrix(data = 2:5, nrow = 2, ncol=2, byrow = TRUE, dimnames = list("riga", "colonna"))  #la lunghezza di data deve essere multipla di ncol
?matrix   #visualizza l'help del comando matrix
#byrow cambia la struttura della matrice, riga o colonna
M[numeroRiga,]  #restituisce solo una riga
M[,numerColonna]  #restituisce solo la colonna
