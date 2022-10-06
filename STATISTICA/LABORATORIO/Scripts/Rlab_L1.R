######### LABORATORIO 1 - R Intro ############


### Utilizzare R ###

# q(), oppure usa il menu' grafico, per uscire da R.

# savehistory("history.r")

# loadhistory("history.r")

# source("command.r")

# save.image("myfile.Rdata")

# load("myfile.RData") 

# R non utilizza specificazioni del percorso file del tipo c:\mydocuments\myfile.txt
# Questo perche' R utilizza "\" come carattere di "escape". Bisogna quindi usare c:/mydocuments/myfile.txt   
# considerando il "back slash"

getwd()  # stampa la directory di lavoro corrente
# setwd("c:/docs/mydirectory")  #  cambia la directory di lavoro in mydirectory
ls()  # stampa la lista di oggetti presenti nella directory di lavoro corrente
# rm() # rimuove oggetti presenti nella directory di lavoro corrente
# rm(list = ls()) # rimuove tutti gli oggetti presenti nella directory di lavoro


### R come calcolatrice ###

# + and - somma e sottrazione
# * and / moltiplicazione e divisione
# ^ esponente
# %% operatore modulo
# %\% divisione intera

# print() # stampa contenuto oggetti
# log() # logaritmo
# exp() # funzione esponenziale
# sqrt() # radice quadrata
# abs() # valore assoluto
# sin() # funzione seno
# cos() # funzione coseno
# tan() # funzione tangente
# asin() # funzione arcoseno
# factorial() # fattoriale
# choose() coefficiente binomiale;
# sign() funzione segno (negativo, nullo o positivo);
# round() arrotondamento alla cifra decimale specificata.

#  # questo è un commento
1+2+3
2+3*4
3/2+1
2+(3*4)
(2 + 3) * 4
4*3^3
27^(1/3)
2/0 # il risultato è infinito (positivo)
0/0 # il risultato non è un numero, NaN (Not a Number)
23%%3
23%/%3

sqrt(2)
sin(3.14159)
sin(pi)


### Operatori logici ###

# < minore
# <= minore o uguale
# > maggiore
# >= maggiore o uguale
# == uguale
# != diverso
# & operatore and
# | or operatore or
# xor disgiunzione esclusiva

1 == 1
1 == 2
1 != 2
1 <= 2 & 1 <= 3
1 == 1 | 1 == 2
1 > 1 | 1 > 2 & 3 == 3
1 > 1 & 1 > 2 & 1 > 3
xor(TRUE, TRUE)
xor(TRUE, FALSE)

### L'help di R ###

?lm
help(lm)
# ??lm ricerca ogni funzione collegata a lm
apropos("mean")  # quando il nome della funzione non è noto in modo preciso


### Pacchetti e librerie ###

# install.packages("package")  installa un pacchetto

# library("package")  carica un pacchetto

# update.packages()  aggiorna i pacchetti


### Assegnamento ###

1 + 2 # il risultato viene solo stampato sullo schermo
a <- 1+2 # il risultato viene salvato nell'oggetto a
typeof(a)
class(a)
is(a)
str(a)
x <- sqrt(2)   # 
x   # per stampare il contenuto di x
typeof(x)
class(x)
is(x)
str(x)
b <-"hello"
typeof(b)
class(b)
is(b)
str(b)
x^3
y <- x^3
y
x <- pi # un nuovo assegnamento cancella quello precedente
x
is(x)
b <-"hello"
typeof(b)
class(b)
is(b)


### Vettori ###

Vector1 <- c(1,2,3,4,5,6,7,8,9,10) # vettore numerico
Vector1
x <- c(2,3,5,7)
x
x <- c(x,11)
x

Vector2 <- c("a","b","c","d") # vettore di caratteri
Vector2
Vector3 <- c("1","2","3","4")  # vettore di caratteri (i numeri vengono interpretati come caratteri)
Vector3

x = c(TRUE, FALSE, TRUE, FALSE)
y = !x
x
y
x & y
x | y

Vector4 <- c(Vector2 , Vector3 , Vector2 , Vector2 , Vector2)
Vector4

xx <- 1:10
xx
5:-5
seq(from=0,to=10) # si possono omettere i nomi degli argomenti e il passo  della sequenza,
# se non è indicato, corrisponde a 1 (valore di dafault)
seq(0,10)
seq(0,10,by=2) # per definire il passo della sequenza
seq(0,10,length.out=25) # per definire la lunghezza della sequenza
rep(0,time=10) # ripete l'elemento 10 volte 
rep("Hello",3) # ripete l'elemento 3 volte
rep(Vector1,2) # il vettore viene ripetuto 2 volte
rep(Vector2,each=2) # ogni elemento del vettore viene ripetuto 2 volte


### Opereazioni con vettori ###

# vengono applicate elemento per elemento

# sum() somma gli elementi del vettore
# prod() prodotto degli elementi del vettore
# min() minimo degli elementi del vettore
# max() massimo degli elementi del vettore
# mean() media aritmetica
# median() mediana
# range() campo di variazione (minimo e massimo)
# var() varianza (divisione per n-1)
# sd() deviazione standard
# cov() covarianza (due argomenti, ad esempio cov(x,y))
# cor() coefficiente di correlazione (due argomenti, ad esempio cov(x,y))
# sort() ordinamento degli elementi (come default decreasing = FALSE)
# order() indice degli elementi ordinati con ordinamento crescente
# length() lunghezza del vettore
# summary() fornisce opportune sintesi statistiche
# which() fornisce l'indice dell'elemento compatibile con una affermazione logica
# which.min() fornisce l'indice del minimo
# which.max() fornisce l'indice del massimo
# unique() fornisce un vettore senza elementi ripetuti
# round() arrotonda i valori fino alla cifra decimale indicata (il valore di default è 0)

x <- 0:10
x+1
y <- -5:5
abs(y)
x+y
x*y
y <- 0:8
x+y

x
x > 5
x <- 3:26
max(x)
min(x)
sum(x)
prod(x)
x <- c(32,18,25:21,40,17)
x
sort(x)  # ordine crescente
order(x) # posizione degli elementi in ordine crescente

Vector1+Vector1
Vector1/Vector1
log(Vector1)
round(log(Vector1))
round(log(Vector1),digit = 3)
which(Vector1>=5) # indice degli elementi >=5


### Selezione di elementi di un vettore ###

Vector6 <- c ("The","Starlab","Fellow","is","a Fool")
Vector6 [3]
Vector6[2:4]
Vector6[c(1 ,3 ,4)]
Vector6[-2] # tutti gli elementi ad esclusione del secondo
Vector6[5] <- "great"
Vector6

xx <- 100:1
xx[7]
xx[c(2,3,5,7,11)]
xx[85:91]
xx[91:85]
xx[c(1:5,8:10)]
xx[c(1,1,1,1,2,2,2,2)]
yy <- xx[c(1,2,4,8,16,32,64)]
yy
x <- c(32,18,25:21,40,17)
x
sort(x)
x[order(x)]
x <- c(1,2,4,8,16,32)
x
x[-4]
x[-c(3,4)]

x <- -8:7
x<0
x[x<0]
x[x<0&x<(-2)]
x[x<0|x>5]
x[x!=6]
x[x==6]


### Altre funzioni ###

z<-c(2,3,4,3,NA,NA,6,6,10,11,2,NA,4,3)
max(z) # questa funzione non si può utilizzare in presenza di NA
na.omit(z) # fornisce il vettore senza NA
max(na.omit(z))
max(z,na.rm=TRUE) # l'argomento na.rm=TRUE permette la rimozione degli NA

is.na(z)

z.noNA <- subset(z,is.na(z)==FALSE )
z.noNA

X <- 1:70
Multiple7 <- subset(X,X%%7==0) # operatore modulo
Multiple7


### Fattori ###

treat <- factor(c("a","b","b","c","a","b"))
treat
levels(treat) # i livelli del fattore treat
resp <- c(10,3,7,6,4,5)
resp[treat=="a"] # le osservazioni riferite ai soggetti con trattamento "a"
sum(resp[treat=="b"]) # la somma delle osservazioni riferite ai soggetti con trattamento "b"

treat1 <- ordered(c("a","b","b","c","a","b"), levels=c("c","b","a")) # si ha  
# un ordinamento diverso rispetto a quello naturale (alfabetico)
treat1
levels(treat1)

x<-c(1:12,25:38,-3:0,13:24)
x1 <- cut(x,c(-5,5,25,40),labels=c("B","M","A")) # classi (-5,5],(5,25],(25,40] che corrispondono ai livelli B, M, A
x1
levels(x1)
f_x1 <- table(x1) # frequenze assolute per ogni livello (classe)
f_x1

x<-1:20
y<-factor(rep(0:1,10))
y
tapply(x,y,sum) # la funzione sum viene applicata ai dati x classificati sulla base degli associati livelli osservati del fattore y


### Array e matrici ###

Matrix1 <- matrix(data=1,nrow=3,ncol=3) # tutti gli elementi pari a 1
Matrix1
dim(Matrix1) # la dimensione della matrice

Vector8 <- 1:12
Vector8
Matrix3 <- matrix(data=Vector8,nrow=4)  # come default byrow=FALSE
Matrix3
Matrix4 <- matrix(data=Vector8,nrow=4,byrow=TRUE)  # matrice popolata per righe
Matrix4

Vector9 <- 1:10
Vector9
Vector10 <- Vector9^2
Vector10
Matrix5 <- rbind(Vector9,Vector10)
Matrix5
Matrix6 <- cbind(Vector9,Vector10,Vector9)
Matrix6
colnames(Matrix6)
rownames(Matrix6) # le righe non hanno nome
colnames(Matrix6) <- c("A","B","C")
rownames(Matrix6) <- c("a","b","c","d","e","f","g","h","i","j")
Matrix6

Matrix7 <- diag(5) # crea una matrice identica
Matrix7
Vector11 <- c(1,2,3,4,5)
Matrix8 <- diag(Vector11) # matrice con Vector11 come diagonale principale
Matrix8
diag(Matrix7) # estrae la diagonale della matrice


### Operatori per il calcolo matriciale ###

# + - * / operazioni standard scalari o elemento per elemento
# %*% moltiplicazione tra matrici
# t() calcolo della matrice trasposta
# solve() calcolo della matrice inversa
# det() calcolo del determinante
# chol() decomposizione di Cholesky
# eigen() calcolo di autovalori e autovettori
# crossprod() prodotto incrociato
# \%x\% prodotto di Kronecker


### Selezione di elementi di una matrice ###

Matrix9 <- matrix(1:9,3)
Matrix9
Matrix9[1,1] # primo elemento della prima riga
Matrix9[2,3] # terzo elemento della seconda riga
Matrix9[,1] # prima colonna
Matrix9[2,] # seconda riga
Matrix9[1:2, ] # prima e seconda riga
Matrix9[Matrix9[,2]>4,] # tutte le righe che come secondo elemento hanno un numero maggiore di 4

x <- matrix(1:16,ncol=4)
x
apply(x,1,sum) # si applica sum alle righe (margine=1)
y<-apply(x,2,prod) # si applica prod alle colonne (margine=2)
y

x<-1:5
y<-1:5
outer(x,y) # matrice con elementi dati dal prodotto (funzione di default)  di tutte le combinazioni di elementi di x e y
outer(x,y,"+") # matrice con elementi dati dalla somma di tutte le combinazioni di elementi di x e y


### Liste ###

Lst <- list(name="Fred", wife="Mary", no.children=3,child.ages=c(4,7,9))
Lst
Lst[[1]] # il primo oggetto della lista
Lst[[4]] # il quarto oggetto della lista
Lst$child.ages # l'oggetto chiamato child.ages
Lst$child.ages[2] # il secondo elemento dell'oggetto child.ages


### Data frame ###

data(airquality) # viene caricato il data set
dim(airquality) # dimensione del data frame: 154 osservazioni su 6 variabili
help(airquality)  #  descrizione del data frame
names(airquality)  # nomi delle variabili
head(airquality)  # fornisce la prime 6 righe del data frame, in alternativa si può usare airquality[1:6,]
str(airquality)  # struttura del data frame airquality

airquality$Ozone
airquality$Ozone[1:5]

airquality$Ozone + airquality$Wind/airquality$Temp
with(airquality, Ozone + Wind/Temp)    # stesso risultato

subset(airquality, airquality$Month == 5 & airquality$Solar.R >= 150) # si estrae un data set che contiene le misurazioni di maggio con Solar.R >= 150

x<-1:5
y<-factor(c("a","b","a","a","b"))
z<-matrix(rep(7,15),nrow=5,byrow=F)
es.df<-data.frame(z,uno=x,due=y)
es.df

z<-matrix(rep(7,15),nrow=5,byrow=F)
z
class(z)
z_df<- as.data.frame(z) # matrice trasformata in un data frame
z_df
class(z_df)


### Caricare e salvare data set ###

# dat <- read.table("file.txt", sep=" ", header=T) # legge il file di testo con sep=" " (il default per read.table) come separatore
# dat <- read.table("file.csv", sep=",", header=T) # legge il file di testo con sep="," (il default per read.csv) come separatore

airq<-airquality[!is.na(airquality$Ozone),]

write.table(airq,file="airq.txt",sep=" ",row.names=F)  # per salvare il data set con lo spazio come separatore, row.names=F assicura che inomi delle righe non vengono riportati in airq
write.table(airq,file="airq.csv",sep=",",row.names=F)  # per salvare il data set con la virgola come separatore

airq1<-read.table("airq.txt",header=T,sep=" ") # per caricare il nuovo data frame
airq2<-read.table("airq.csv",header=T,sep=",") # per caricare il nuovo data frame 

attach(airquality)
Ozone[1:3]
detach(airquality)
Ozone[1:3]


### Ulteriori funzioni utili ###

# is.numeric()
# is.vector()
# is.factor()
# is.matrix()
# is.data.frame()
# is.character()

# as.numeric() trasforma vettori e matrici di altre classi nella classe numeric
# as.character() trasforma vettori e matrici di altre classi/di altro tipo in character
# as.integer() trasforma vettori e matrici di altro tipo in {integer
# as.factor() trasforma vettori e matrici in fattori
# as.matrix() trasforma un vettore o un data frame in una matrice
# as.vector() trasforma una matrice in un vettore
# as.data.frame() trasforma vettori e matrici in data frame
# as.list() trasforma vettori e matrici in liste


### Comandi grafici ###

# plot(x,y) se x e y sono vettori, produce lo scatterplot di y rispetto a x;
# plot(x) se x e' una serie temporale, produce il grafico della serie; se x e' un vettore numerico, produce il grafico dei valori di x rispetto agli indici corrispondenti

# funzione grafica di alto livello
curve(x^3-3*x,-2,2) # opzioni from=-2 e to=2 

# funzione grafica di basso livello, poiché con l'opzione add=T si aggiunge una curva al grafico esistente
curve(x^2-2,add=T,col="red") # il colore selezionato è il rosso

# lo stesso risultato si ottiene con
# x <- seq(-2,2,0.01)
# plot(x,x^3-3*x,type='l') # opzione type='l' per rappresentare una linea continua invece dei punti
# lines(x,x^2-2,col="red") # il colore selezionato è il rosso


### Funzioni ###

bmi<-function(weight,height) # Indice di massa corporea sulla base di peso (chilogrammi) e altezza (metri)
{ 
  x<- weight/height^2 
  return(x)
}

bmi(75,1.7)

x<-c(60,65,75,80,90)
y<-c(1.5,1.6,1.7,1.8,1.9)
bmi(x,y)
bmi(1.7,y)

bmi1<-function(weight,height,cm=F) # Indice di massa corporea con altezza in metri o centimetri
{
  if(cm==T) height<-height/100
  weight/height ^2
}

bmi1(75,1.7)
bmi1(75,170,cm=T)

x<-seq(50,100,by=0.1)
y<-seq(1.5,1.95, by=0.01)
index<-outer(x,y,bmi)
persp(x,y,index,xlab="weight",ylab="height",zlab="bmi",ticktype ="detailed") # rappresentazione grafica tridimensionale
persp(x,y,index,xlab="weight",ylab="height",zlab="bmi",theta=-90,phi=30,ticktype ="detailed") # rotazione della figura

contour(x,y,index,xlab="weight",ylab="height") # linee di livello
contour(x,y,index,xlab="weight",ylab="height",col=2:11,levels=20:30) # linee di livello da 20 a 30 con colori diversi
# to add a grid
abline(h=seq(1.5,1.9,by=0.05),lty=2,col="grey")  # funzione grafica di secondo livello
abline(v=seq(50,100,by=5),lty=2,col="grey")

geom<-function(n,r,a0)  # i primi n termini di una serie geometrica con valore iniziale a0 e ragione r
{
  ser<-numeric(n)
  ser[1]<-a0
  for (i in 2:n)
    ser[i]<-ser[i-1]*r
  return(ser)
}

geom(10,0.5,1)


