###### LABORATORIO LEZIONE 4 ######


# Dado #

Omega<-c(1,2,3,4,5,6)
set.seed(11)
sample(Omega,1) # lancio di un dado regolare
set.seed(11)
sample(Omega,3, replace=TRUE) # tre lanci di un dado regolare; replace=TRUE per avere estrazioni con reinserimento

# lancio del dado regolare fino ad ottenere 6 per la prima volta
set.seed(11)
ris<-sample(Omega,1)
ris
while (ris!=6) {ris<-sample(Omega,1)
  print(ris)
}


# Lotteria #

choose(5,1)*choose(995,9)/choose(1000,10) # probabilita' di un biglietto vincente
1-choose(5,0)*choose(995,10)/choose(1000,10) # probabilita' di almeno un biglietto vincente
choose(5,2)*choose(995,8)/choose(1000,10) # probabilita' di due biglietti vincenti


# Indirizzi #

nind<-200 # numero indirizzi disponibili
npc<-10 # numero pc

1-choose(nind,npc)*prod(1:npc)/(nind^npc) # probabilita che vengano assegnati almeno due indirizzi identici

# E' possibile, in modo analogo, calcolare la probabilita' che almeno 2 persone su un totale di n 
# siano nate nello stesso giorno (escludendo la presenza di anni bisestili)
#
# n<-c(5,10,15,20,21,22,23,24,25,30,50,60,70,80,90,100)
# for(i in n) cat("\n n=",i,"P(almeno 2 persone su n nate nello stesso giorno)=",1-choose(365,i)*prod(1:i)/(365^i))


# Due palline #

urna<-c(rep("N",10),rep("B",5)) # urna con 10 palline nere e 5 bianche
set.seed(11)
sample(urna,2) # estrazione di due palline senza reinserimento
sample(urna,2,replace = TRUE) # estrazione di due palline con reinserimento
sample(urna,5) # estrazione di cinque palline senza reinserimento
sample(urna,5,replace = TRUE) # estrazione di cinque palline con reinserimento


# Banca #

banca <- rbind(cbind(rep("cattivo",60),rep("si",60)),
               cbind(rep("buono",520),rep("si",520)),
               cbind(rep("cattivo",21),rep("no",21)),
               cbind(rep("buono",609),rep("no",609)))
banca <- as.data.frame(banca) # matrice trasformata in data frame
colnames(banca) <- c("tipo","cc") # nomi delle colonne
banca$tipo<-ordered(banca$tipo, levels=c("cattivo","buono"))
banca$cc<-ordered(banca$cc, levels=c("si","no"))
str(banca)

tab<-table(banca$cc,banca$tipo) # tabella di contingenza (distribuzione di frequenza assoluta congiunta)
tab

tab/sum(tab) # distribuzione di probabilita' congiunta di "cc" e "tipo"; distribuzione di frequenza relativa congiunta
# in alternativa, prop.table(tab)
margin.table(tab,1)/sum(margin.table(tab,1)) # distribuzione di probabilita' marginale di "cc" (frequenza relativa marginale)
margin.table(tab,2)/sum(margin.table(tab,2)) # distribuzione marginale di "tipo" (frequenza relativa marginale)
tab[1,]/sum(tab[1,]) # distribuzione condizionata di "tipo|cc=si" (frequenza relativa condizionata)
tab[2,]/sum(tab[2,]) # distribuzione condizionata di "tipo|cc=no" (frequenza relativa condizionata)
# in alternativa, prop.table(tab,1)
tab[,1]/sum(tab[,1]) # distribuzione condizionata di "cc|tipo=buono" (frequenza relativa condizionata)
tab[,2]/sum(tab[,2]) # distribuzione condizionata di "cc|tipo=cattivo" (frequenza relativa condizionata)
# in alternativa, prop.table(tab,2)

ccmarg<-margin.table(tab,1)/sum(margin.table(tab,1)) # distribuzione marginale di "cc"
tipomarg<-margin.table(tab,2)/sum(margin.table(tab,2)) # distribuzione marginale di "tipo"
ccmarg <- as.matrix(ccmarg) # vettore interpretato come matrice
tipomarg <- as.matrix(tipomarg) # vettore interpretato come matrice
prob_ind <- ccmarg%*%t(tipomarg) # probabilita' congiunta di "cc" e "tipo" in caso di indipendenza
prob_ind
tab/sum(tab) # probabilita' congiunta effettiva di "cc" e "tipo"

