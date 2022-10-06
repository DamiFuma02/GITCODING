###### LABORATORIO LEZIONE 2 ######

## Nota: e' necessario installare e caricare i pacchetti "DescTools" e "moments" ##

### Variabili statistiche ###

# Esempio di matrice dei dai (data frame) #

genere <- c("M","M","F","M","F","M","M","F") # vettore di caratteri
eta <- c(28,17,20,32,16,34,18,25) # vettore numerico
livistr <- factor(c(3,2,3,4,2,4,3,3), levels = c("1", "2", "3", "4"), ordered = TRUE) # fattore ordinato
dist <- c(5.0,7.5,12.0,3.2,NA,12.3,25.0,7.7) # vettore numerico
matrdati <- data.frame(genere,eta,livistr,dist) # creazione data frame, "genere" viene interpretato come factor 
str(matrdati)
matrdati


### Distribuzioni di frequenza ###

#  Esempio di matrice dei dai #

table(matrdati$genere) # frequenze assolute
table(matrdati$genere)/sum(table(matrdati$genere)) # frequenze relative
table(matrdati$livistr)
table(matrdati$livistr)/sum(table(matrdati$livistr))
cumsum(table(matrdati$livistr)) # frequenze assolute cumulate
cumsum(table(matrdati$livistr))/sum(table(matrdati$livistr)) # frequenze relative cumulate

table(cut(matrdati$dist,c(0,5,15,Inf))) # si usa cut per definire le classi 0-5 5-15 15-
table(cut(matrdati$dist,c(0,5,15,Inf)))/sum(table(cut(matrdati$dist,c(0,5,15,Inf))))
cumsum(table(cut(matrdati$dist,c(0,5,15,Inf))))
cumsum(table(cut(matrdati$dist,c(0,5,15,Inf))))/sum(table(cut(matrdati$dist,c(0,5,15,Inf))))


# Perni #

# matrice con i dati grezzi
perni <- rbind(cbind(rep("M1",10), rep("Fine",10)), cbind(rep("M1",102), rep("Ok",102)),
               cbind(rep("M1",8), rep("Spesso",8)),
               cbind(rep("M2",34), rep("Fine",34)), cbind(rep("M2",161), rep("Ok",161)),
               cbind(rep("M2",5), rep("Spesso",5)),
               cbind(rep("M3",10), rep("Fine",10)), cbind(rep("M3",60), rep("Ok",60)),
               cbind(rep("M3",10), rep("Spesso",10)))
perni <- as.data.frame(perni) # matrice trasformata in data frame
colnames(perni) <- c("Macchinario","Diametro") # nomi delle colonne
str(perni)

table(perni$Macchinario, perni$Diametro) # tabella frequenze assolute
apply(table(perni$Macchinario, perni$Diametro),1,sum) # totali di riga
# in alternativa margin.table(table(perni$Macchinario, perni$Diametro),1)
apply(table(perni$Macchinario, perni$Diametro),2,sum) # totali di colonna
# in alternativa margin.table(table(perni$Macchinario, perni$Diametro),2)
# tabella frequenze relative di Diametro per Macchinario
table(perni$Macchinario, perni$Diametro)/apply(table(perni$Macchinario, perni$Diametro),1,sum)


### Rappresentazioni grafiche ###

# Perni #

margin.table(table(perni$Macchinario, perni$Diametro),2) # frequenze assolute Diametro
freq.rel.Diam <-margin.table(table(perni$Macchinario, perni$Diametro),2)/sum(margin.table(table(perni$Macchinario, perni$Diametro),2))
freq.rel.Diam # frequenze relative Diametro
pie(margin.table(table(perni$Macchinario, perni$Diametro),2),c("fine","ok","spesso"),cex=1.5) # Diagramma circolare frequenze Diametro
# stesso risultato con le frequenze relative
# pie(freq.rel.Diam,c("fine","ok","spesso"),cex=1.5) 

barplot(freq.rel.Diam,names.arg=c("fine","ok","spesso"),ylim=c(0,1),cex.names=2) # Diagramma a barre frequenze Diametro
# stesso risultato con le frequenze assolute, togliendo l'opzione ylim=c(0,1) 
# barplot(margin.table(table(perni$Macchinario, perni$Diametro),2),names.arg=c("fine","ok","spesso"),cex.names=2)

freq.rel <- table(perni$Macchinario, perni$Diametro)/apply(table(perni$Macchinario, perni$Diametro),1,sum) # tabella frequenze relative di Diametro per Macchimario
barplot(freq.rel,beside=T,names.arg=c("fine","ok","spesso"),legend.text=c("Macchinario 1","Macchinario 2","Macchinario 3"),cex.axis=2,cex.names=2)
# in questo caso bisogna considerare le frequenze relative
# con l'opzione beside=F 
# barplot(freq.rel,beside=F,names.arg=c("fine","ok","spesso"),legend.text=c("Macchinario 1","Macchinario 2","Macchinario 3"),cex.axis=2,cex.names=2)

# Figli #

figli <-c(rep(0,30),rep(1,45),rep(2,12),rep(3,8),rep(4,4),rep(5,1))
table(figli)
table(figli)/sum(figli)
plot(table(figli)/sum(figli),lwd=3,ylim=c(0,0.5),xlab="numero di figli",ylab="freq. rel. famiglie",cex.lab=1.5,cex.axis=1.5)
# risultato simile (su scala diversa) considerando le frequenze assolute
# plot(table(figli),lwd=3,ylim=c(0,55),xlab="numero di figli",ylab="freq. rel. famiglie",cex.lab=1.5,cex.axis=1.5)
# il comando plot(figli) produce un risultato non desiderato

# Istogramma e stima della densita' #

y<-c(4.3, 5.1, 4.1, 6.5, 5.3, 4.1, 5.4, 5.7, 5.5, 4.6, 6.5, 5.3, 4.3, 2.7, 6.1, 4.9, 4.9, 5.9, 5.8, 5.5, 5.9,
     5.7, 5.0, 3.0, 5.6, 4.9, 4.8, 3.5, 4.5, 5.4, 6.3, 4.8, 5.3, 4.9, 3.6, 4.5, 4.6, 4.9, 6.1, 5.7, 4.8, 4.7,
     5.6, 5.5, 4.3, 4.2, 5.3, 5.7, 4.8, 5.8, 5.3, 4.3, 5.3, 3.8, 6.4, 6.9, 4.6, 3.9, 5.5, 4.8, 7.4, 4.9, 5.6,
     5.0, 4.2, 5.1, 3.1, 6.4, 5.1, 7.1, 5.4, 4.2, 5.6, 4.0, 3.7)
hist(y,xlab="y",ylab=" ", xlim=c(1,9),ylim=c(0,0.65),main=" ",freq = FALSE) # istogramma delle frequenze relative (opzione freq = FALSE)
lines(density(y),lwd=2) # density() fornisce le coordinate della stima della densita' (scelta ottimale della banda)
lines(density(y,bw=2),lwd=2,col='red') # stima della densita' con banda troppo grande (bw=2)
lines(density(y,bw=0.1),lwd=2,col='blue') # stima della densita' con banda troppo piccola (bw=0.1)

# Funzione di ripartizione empirica #

y<-c(2, 2, 3, 5, 2, 5, 5, 4, 3, 1, 2, 2, 4, 3, 4, 3, 4, 7, 2, 4, 5, 2, 4, 1, 2, 3, 0, 2, 5, 2, 3, 3, 3, 2, 4, 4, 
     4, 1, 4, 3, 4, 3, 4, 3, 3, 4, 0, 3, 4, 4)
table(y) # frequenze assolute
table(y)/length(y) # frequenze relative
cumsum(table(y)/length(y)) # frequenze relative cumulate
plot(ecdf(y),main=" ",xlab="y", ylab="Fn(y)") # ecdf() forrnisce le coordinate della funzione di ripartizione empirica

# Old Faithful Geyser#

?faithful # data set disponibile in R
str(faithful)
duration<-ifelse(faithful$eruptions < 3,"Corta", "Lunga") # vettore di caratteri: "Corta", se l'eruzione e' minore di 3 minuti e "Lunga" altrimenti
duration<-factor(duration) # il vettore viene specificato come fattore con due livelli: "Corta" e "Lunga"
faithful1<-data.frame(Pausa=faithful$waiting,Eruzione=duration) # nuovo data frame con le variabili Pausa ed Eruzione
str(faithful1)
head(faithful1) # le prime 56 righe del data frame
faithful1[270:272,] # le ultime 3 righe del data frame

hist(faithful1$Pausa,xlab="Pausa",ylab=" ",col="lightblue",main=" ") # istogramma di Pausa

par(mfrow=c(1,2)) # finestra grafica con due pannelli su una riga
# istogramma di Pausa per Eruzione="Corta" e di Pausa per Eruzione="Lunga"
hist(faithful1$Pausa[faithful1$Eruzione=="Corta"],xlim=c(40,100),xlab="Pausa",ylab=" ",col="lightblue",main="Eruzione corta")
hist(faithful1$Pausa[faithful1$Eruzione=="Lunga"],xlim=c(40,100),xlab="Pausa",ylab=" ",col="lightblue",main="Eruzione lunga")
par(mfrow=c(1,1)) # si ritorna alla finestra grafica di default

# funzione di ripartizione empirica di Pausa per Eruzione="Corta" (rosso) e di Pausa per Eruzione="Lunga" (nero)
plot(ecdf(faithful1$Pausa[faithful1$Eruzione=="Corta"]),xlim=c(40,100),main=" ",xlab="y", ylab="Fn(y)",col="red",lwd=2)
plot(ecdf(faithful1$Pausa[faithful1$Eruzione=="Lunga"]),main=" ",xlab=" ", ylab=" ",add=TRUE,lwd=2)

# Velocita' #

?cars # data set disponibile in R
str(cars)
plot(cars$speed,cars$dist,main=" ",xlab="velocità",ylab="spazio di frenata",pch=16)

# Patologie polmonari #

?UKLungDeaths  # data set disponibile in R
data(UKLungDeaths) # per caricare dataset
ts.plot(ldeaths, xlab="anno", ylab=" ",lwd=2) # per rappresentare graficamente una serie temporale


### Indici sintetici ###

# Esempio 1 media #

y <- c(27,30,30)
mean(y)
y <- c(28,30,30)
mean(y)

# Esempio 2 media #

y <- c(rep(0,109),rep(1,65),rep(2,22),rep(3,3),rep(4,1))
mean(y) # calcolo della media con i dati grezzi
table(y) # frequenze assolute
sum(seq(0,4,1)*table(y))/sum(table(y)) # calcolo della media con la tabella di frequenza

# Esempio 3 media #

yc <- c((0+10)/2,(10+15)/2,(15+20)/2)
p <- c(0.3,0.52,0.18)
sum(yc*p)

# Luogo di lavoro #

x <- c(23,32,44,21,36,30,28,33,45,34,29,31)
y <- c(22,24,22,33,26,31,24,28,32,31,37,24)
min(x)
min(y)
max(x)
max(y)
mean(x)
mean(y)

# Polveri sottili #

km <- factor(c("B", "A", "A", "B", "B", "B", "A", "B", "B", "A", "A", "B", "B"))
pm <- c(2.30, 2.15, 3.50, 2.60, 2.75, 2.82, 4.05, 2.25, 2.68, 3.00, 4.02, 2.85, 3.38)
mean(pm) # media tutti i veicoli
mean(pm[km=="A"]) # media veicoli A
mean(pm[km=="B"]) # media veicoli B
table(km)
table(km)/length(km)

pm[11] <- 40.2 # dato anomalo
mean(pm)

# Voti #

y <- ordered(c("S","S","B","B","O"),levels=c("S","B","O"))
median(y) # R aspetta un vettore numerico
library("DescTools") # installare e caricare la libreria "DescTools"
Median(y) # utilizzare la funzione Median (M maiuscola)
y <- ordered(c("S","S","S","B","B","O"),levels=c("S","B","O"))
Median(y) # la mediana e' sia S che B, la funzione ritorna il primo dei due
y <- ordered(c("S","S","B","B","O","O"),levels=c("S","B","O"))
Median(y) # i due valori sono entrambi B

# Serie TV #

y <- c(0,1,3,3,4,6,6,6)
median(y) # mediana convenzionale
y <- c(0,1,3,3,4,6,6)
median(y)

# Componenti per famiglia #

liguria <- c(rep(1,197906),rep(2,203709),rep(3,168536),rep(4,117509),rep(5,29727),rep(6,6577),rep(7,1707),rep(8,906))
length(liguria)
table(liguria)
cumsum(table(liguria))
table(liguria)/length(liguria)
cumsum(table(liguria)/length(liguria))
median(liguria)

campania <- c(rep(1,225641),rep(2,304325),rep(3,278879),rep(4,355488),rep(5,228494),rep(6,98924),rep(7,42894),rep(8,34999))
length(campania)
table(campania)
cumsum(table(campania))
table(campania)/length(campania)
cumsum(table(campania)/length(campania))
median(campania)

# Polveri sottili #

pm <- c(2.30, 2.15, 3.50, 2.60, 2.75, 2.82, 4.05, 2.25, 2.68, 3.00, 4.02, 2.85, 3.38)
median(pm)
pm[11] <- 40.2 # dato anomalo
median(pm)

# Asfalto #

y <- c(30,75,79,80,80,105,126,138,149,179,179,191,223,232,232,236,240,242,245,247,254,274,384,470)
mean(y)
median(y)
# R usa una procedura diversa per il calcolo del quantile convenzionale, basata sulla media pesata degli eventuali due valori
quantile(y,probs=c(0.25,0.5,0.75))

# Old Faithful Geyser #

duration<-ifelse(faithful$eruptions < 3,"Corta", "Lunga")
duration<-factor(duration)
faithful1<-data.frame(Pausa=faithful$waiting,Eruzione=duration)
boxplot(Pausa~Eruzione,data=faithful1,col="lightblue")
# in alternativa boxplot(faithful1$Pausa[faithful1$Eruzione=="Corta"],faithful1$Pausa[faithful1$Eruzione=="Lunga"],col="lightblue")

# Creta #

cava1<-c(rep(1,20),rep(2,40),rep(3,70),rep(4,35),rep(5,10),rep(6,5))
cava2<-c(rep(4,15),rep(5,20),rep(6,55),rep(7,80),rep(8,40),rep(9,20))
table(cava1)
sum(table(cava1))
table(cava2)
sum(table(cava2))
table(c(cava1,cava2))
sum(table(c(cava1,cava2)))
par(mfrow=c(1,2))
plot(table(c(cava1,cava2)),xlab="numero medio impurita' ",ylab="frequenza assoluta",ylim=c(0,87),lwd=2)
plot(table(cava1),xlab="numero medio impurita' ",ylab="frequenza assoluta",xlim=c(1,9),ylim=c(0,87),lwd=2)
lines(seq(4,9,1)+0.05,table(cava2),type="h",col='red',lwd=2)
par(mfrow=c(1,1))

# Sonnifero #

xx<-matrix(c(0.7,-1.6,-0.2,-1.2,-0.1,3.4,3.7,0.8,0,2,1.9,0.8,1.1,0.1,-0.1,4.4,5.5,1.6,4.6,4.6),ncol=2)
xx
summary(xx[,1]) # il calcolo dei quantili convenzionali si basa su una opportuna media pesata
summary(xx[,2]) # il calcolo dei quantili convenzionali si basa su una opportuna media pesata
boxplot(xx, at= 1:2,lwd=2)

# Inquinamento #

dispA<-c(14.98654,15.14828,15.15741,14.78573,15.22160,14.86475,14.94835,14.64653,15.00364,15.06475,14.99282,14.92189,14.99575,
        15.64405,15.33492,14.73466,14.93331,14.94189,15.22719,14.64697,15.29087,14.90708,15.02215,14.97803,14.85369,15.35937,15.09510,
        14.70682,14.77203,15.28139,14.97825,14.93426,14.88053,15.11486,15.01449,15.10965,15.06394,14.79222,14.76657,15.15009,14.72711,
        14.98090,14.75410,14.90115,15.17730,14.89586,14.96936,15.00198,15.21905,14.97432,15.04769,14.90602,14.98397,15.33279,15.23659,
        15.07793,15.11311,14.78668,14.94863,15.05302,14.66592,15.13632,15.05976,14.98333,14.94836,14.99909,14.89628,15.19492,14.58320,
        14.83856,15.02708,15.03368,14.77780,15.40490,15.34432,14.71978,15.01237,14.73821,15.15963,15.22495,14.72350,15.31984,15.15886,
        15.49579,14.92472,15.32498,14.75861,15.13450,15.32448,14.98809,15.10179,15.29890,14.98695,14.96983,15.41413,15.12123,15.26597,
        15.09788,14.72764,15.14286,15.46952,15.13055,15.00559,14.83167,14.71813,15.03142,14.99039,14.89292,15.38937,14.76792,15.28734,
        15.20681,15.10421,15.45162,15.00441,14.90440,14.88044,15.26423,14.73072,14.60118,15.02576,14.84693,15.14960,14.55898,14.98658,
        15.23278,15.12612,15.09414,15.08752,15.09658,15.00574,15.03512,15.14976,14.93821,14.60090,14.97181,15.46100,15.05996,15.15891,
        15.08800,15.18066,14.64953,14.78898,14.82059,15.10667,15.00653,14.86939,15.16498,14.73762,14.58239,14.88403,15.19361,14.97908,
        15.00001,14.67176,15.01569,14.84952,14.79514,14.83009,15.11935,14.88455,14.51907,15.30290,14.93205,15.04080,15.11013,14.98879,
        14.91813,14.44163,14.80356,14.95201,15.11953,14.70853,15.15046,14.86291,15.34034,14.75090,14.86912,14.92036,14.93270)

dispB<-c(14.62067,15.26097,14.87602,15.45027,15.32593,14.74834,15.19424,14.97163,15.09104,15.31831,15.06252,15.19373,14.72724,
        14.90797,14.75423,14.99820,14.31944,15.36786,15.48341,15.01780,14.58473,15.12630,15.03021,15.01365,14.34351,14.58493,14.97563,
        15.29785,15.44040,14.76965,14.53352,15.27177,15.28055,15.53123,13.82846,15.12360,15.24214,14.92428,14.65803,15.18722,14.83586,
        15.60325,14.85619,15.01115,15.30457,14.63107,15.13094,15.01104,14.64376,14.95360,15.53356,15.69041,14.82695,15.29568,15.09679,
        15.28104,15.10458,14.56744,15.19535,15.12521,14.46866,14.71408,14.93787,14.96020,14.78997,14.90338,15.45271,15.21145,15.38612,
        15.65470,15.06021,14.93443,15.02647,14.81672,15.38435,15.33135,15.11671,14.88797,15.03316,15.44367,15.43368,14.49792,14.82239,
        14.67267,14.59706,14.47115,15.19742,14.99877,15.06001,15.38270,14.60696,15.22274,15.63418,14.93377,15.36101,15.33171,15.32998,
        15.22515,14.42690,15.04781,15.64006,15.00974,14.60602,14.99329,15.33431,15.21277,14.87049,14.51086,15.80354,14.87940,14.90026,
        14.88420,14.44305,14.97657,14.78323,14.88690,15.10098,15.17093,14.91092,15.11042,14.59041,15.53938,14.58149,15.02527,14.86442,
        15.11187,14.85419,14.71329,14.75993,14.91381,15.09344,14.98552,15.30405,15.21515,14.99674,14.82704,15.06626,15.07602,14.96841,
        15.25176,14.84417,15.22224,15.42500,15.54409,15.54403,15.04272,14.74762,14.99012,15.15673,14.71890,15.15306,15.40174,14.37135,
        14.83015,15.27419,14.97257,14.59326,15.17822,15.15458,15.41121,15.16800,15.15758,14.58378,14.74625,14.85794,15.67266,14.99509,
        14.78124,15.21816,14.68988,14.84746,14.96116,14.96338,15.07308,14.85328,15.13676,14.89107,15.18928,14.74481,15.13047)

summary(dispA)
summary(dispB)
par(mfrow=c(1,2))
hist(dispA,breaks=c(13.8,14,14.2,14.4,14.6,14.8,15,15.2,15.4,15.6,15.8,16),lwd=3,xlab="Dispositivo A", 
     ylim=c(0,60),ylab="frequenza asssoluta",cex.axis=1.5, cex.lab=1.5,col="lightblue",main=" ")
hist(dispB,breaks=c(13.8,14,14.2,14.4,14.6,14.8,15,15.2,15.4,15.6,15.8,16),lwd=3,xlab="Dispositivo B", 
     ylim=c(0,60),ylab="frequenza asssoluta",cex.axis=1.5, cex.lab=1.5,col="lightblue",main=" ")
par(mfrow=c(1,1))
boxplot(dispA, dispB, names=c("Dispositivo A", "Dispositivo B"), at=1:2,lwd=2)

range(dispA) # fornisce i valori di min e max, in alternativa max(dispA)-min(dispA)
range(dispB) # fornisce i valori di min e max, in alternativa max(dispB)-min(dispB)

IQR(dispA) # in alternativa quantile(dispA,0.75)-quantile(dispA,0.25)
IQR(dispB) # in alternativa quantile(dispB,0.75)-quantile(dispB,0.25)

var(dispA)*(length(dispA)-1)/length(dispA) # perche' var() divide per n-1 invece che per n
var(dispB)*(length(dispB)-1)/length(dispB) # perche' var() divide per n-1 invece che per n
sqrt(var(dispA)*(length(dispA)-1)/length(dispA))
sqrt(var(dispB)*(length(dispB)-1)/length(dispB))

# Esempio 1 varianza #

y <- c(rep(0,109),rep(1,65),rep(2,22),rep(3,3),rep(4,1))
mean(y)
var(y)*199/200
sqrt(var(y)*199/200)
table(y)
media<-sum(seq(0,4,1)*table(y))/sum(table(y))
sum((seq(0,4,1)-media)^2*table(y))/sum(table(y)) # calcolo della varianza con la tabella di frequenza
sum(seq(0,4,1)^2*table(y))/sum(table(y))-media^2 # calcolo della varianza con la formula di calcolo


# Esempio 2 varianza #

yc <- c((0+10)/2,(10+15)/2,(15+20)/2)
p <- c(0.3,0.52,0.18)
media<-sum(yc*p) # media aritmetica
sum((yc-media)^2*p)
sum(yc^2*p)-media^2

# Sbarchi #

merci<-c(22806,21849,12627,4937)
passeggeri<-c(42,248,3,266)
mean(merci)
mean(passeggeri)
var(merci)*3/4
var(passeggeri)*3/4
sqrt(var(merci)*3/4)/mean(merci)
sqrt(var(passeggeri)*3/4)/mean(passeggeri)

# Esempio simmetria #

par(mfrow=c(1,3))
x1<-c(2.17, 2.8, -0.85, 2.38, 1.05, 1.2, -0.46, 1.98, 2.13, 1.67, -0.34, 1.77, 2.26, 2.05, 0.88, 0.43, 2.34, 1.17, 0.79, 1.95, 
      1.87, 1.41, 1.2, 2.22, 2.47, 2.42, 0.8, 1.39, 2.26, 1.62, 0.48, 1.38, 2.21, 1.67, 0.71, 1.59, 0.76, 2.25, 1.44, 1.33, 2.17, 1.46, 
      1.99, 1.62, -1.82, 2.39, 0.08, -0.61, -1.15, 2.29)
mean(x1)
median(x1)
hist(x1,xlab="",ylab="",xlim=c(-2,3),main="",freq=FALSE)
abline(v=median(x1),lwd=2)
abline(v=mean(x1),lwd=2,col="red")

x2<-c(0.24, -1.49, 0.29, 0.14, 0.25, -0.84, 0.81, -0.75, 0.82, -1.19, -1.56, 1.14, 1.22, -1.5, -0.12, 0.06, 0.41, 1.32, -0.18, -0.58, 
      0.55, 0.16, 0.39, -0.17, 0.14, -0.79, -0.22, -0.4, 1.19, -0.45, -1.6, 1.99, -0.94, 0.14, 1.86, -0.1, 0.66, -0.34, -0.62, -0.56, 
      -1.17, -0.93, -2.38, 2.01, 0.68, 0.36, 0.64, -0.17, -0.05, 0.67)
mean(x2)
median(x2)
hist(x2,xlab="",ylab="",main="",freq=FALSE)
abline(v=median(x2),lwd=2)
abline(v=mean(x2),lwd=2,col="red")

x3<-c(2.57, 1.8, 1.6, 2.14, 4.76, 6.52, 4.32, 2.13, 2.06, 8.99, 2, 2.29, 2.72, 2.17, 3.49, 3.31, 2.22, 2.32, 2.89, 2.83, 2.67, 2.07, 
      2.46, 7.86, 5.1, 3.29, 6.21, 4.47, 2.22, 3.1, 2.86, 2.23, 2.33, 2.14, 2.64, 3.24, 3.15, 5.77, 2.33, 2.25, 2.71, 2.87, 2.69, 2.44, 
      2.46, 2.34, 2.33, 2.75, 2.69, 2.06)
mean(x3)
median(x3)
hist(x3,xlab="",ylab="",main="",freq=FALSE)
abline(v=median(x3),lwd=2)
abline(v=mean(x3),lwd=2,col="red")
par(mfrow=c(1,1))

library("moments") # installare e caricare la libreria "moments"
skewness(x1)
skewness(x2)
skewness(x3)

# Esempio curtosi #

par(mfrow=c(1,3))
y1<-c(-0.12, 0.02, 0.43, -0.12, -0.39, -1.11, 0.73, 1.9, 0.81, -0.8, 0.3, 0.18, -0.99, 1.33, 2.61, 1.04, 1.5, -0.83, 0.42, 0.24, -0.87, 
      -0.15, -1.7, -0.04, -0.3, 1.74, -0.55, -0.76, 0.34, -1.99, -0.45, -0.42, 0.41, -1.28, -0.1, 0.17, 3.55, 2.23, 0.31, -1.05, -0.32, 
      0, 0.48, -0.59, -2.22, -3.28, 0.02, -0.11, -2.02, 0.36)
hist(y1,freq = F,xlim=c(-4,4),ylim=c(0,0.5),xlab='',ylab='',main='')
lines(seq(-5,5,0.01),dnorm(seq(-5,5,0.01)),col='red',lwd=2)
lines(density(y1),col='blue',lwd=2)

y2<-c(-0.53, 1.21, 0.75, -0.22, 0.89, 0.79, 0.14, -0.22, 0.87, 0.39, -0.2, 0.39, -0.14, 0.61, 1.32, -1.38, -0.9, -0.21, -0.03, 0.01, 
      -2.54, 0.12, -0.12, 0.09, -0.22, 2.24, -0.61, -1.45, -0.89, -0.2, -0.75, 0.8, 1.66, -1.1, -0.85, -0.91, -0.82, 0.74, -1.2, 1.64, 
      -1.71, 0.45, 0.33, -0.44, 0.06, 0.09, -0.21, 1.37, -1.57, 1.9)
hist(y2,freq = F,xlim=c(-4,4),ylim=c(0,0.5),xlab='',ylab='',main='')
lines(seq(-5,5,0.01),dnorm(seq(-5,5,0.01)),col='red',lwd=2)
lines(density(y2),col='blue',lwd=2)

y3<-c(-0.39, 0.23, -1.32, -1.16, 1.38, -0.73, 1.52, 0.82, 0.15, -0.8, -0.63, -0.15, -1.34, -0.06, -0.95, 0.21, -0.02, 1.09, -0.39, 
      -0.46, -0.48, 0.18, -0.24, 0.55, 0.27, 0.2, 0.11, -0.18, 0.09, -0.29, -0.35, -0.27, 0.54, -0.59, -0.23, 0.44, 0.11, 0.97, -0.11, 
      0.03, -0.62, 0.21, 0.65, -0.24, 0.65, 0.03, -0.89, 0.64, 0.56, 0.31)

y3<-c(-0.53, 1.21, 0.75, 0.22, 0.89, 0.79, 0.14, -0.22, 0.87, 1.69, -0.2, 0.39, -0.14, 0.61, 0.72, -1.01, -0.9, -1.51, -0.03, 1.41, 
      -0.54, 2.12, -0.12, 0.09, -0.22, 1.24, -0.61, 0.45, -0.89, -0.2, -0.75, 0.8, 1.66, 0.1, -0.85, -0.91, -0.82, 0.74, -1.2, 1.44, 
      -0.71, 0.45, 0.33, -1.64, 0.06, 0.09, -0.21, 1.37, -0.87, 1.9)
hist(y3,10,freq = F,xlim=c(-4,4),ylim=c(0,0.5),xlab='',ylab='',main='')
lines(seq(-5,5,0.01),dnorm(seq(-5,5,0.01)),col='red',lwd=2)
lines(density(y3),col='blue',lwd=2)
par(mfrow=c(1,1))

# library("moments") # indice di curtosi del pacchetto "moments"
kurtosis(y1)
kurtosis(y2)
kurtosis(y3)

# Inquinamento #

dispA<-c(14.98654,15.14828,15.15741,14.78573,15.22160,14.86475,14.94835,14.64653,15.00364,15.06475,14.99282,14.92189,14.99575,
         15.64405,15.33492,14.73466,14.93331,14.94189,15.22719,14.64697,15.29087,14.90708,15.02215,14.97803,14.85369,15.35937,15.09510,
         14.70682,14.77203,15.28139,14.97825,14.93426,14.88053,15.11486,15.01449,15.10965,15.06394,14.79222,14.76657,15.15009,14.72711,
         14.98090,14.75410,14.90115,15.17730,14.89586,14.96936,15.00198,15.21905,14.97432,15.04769,14.90602,14.98397,15.33279,15.23659,
         15.07793,15.11311,14.78668,14.94863,15.05302,14.66592,15.13632,15.05976,14.98333,14.94836,14.99909,14.89628,15.19492,14.58320,
         14.83856,15.02708,15.03368,14.77780,15.40490,15.34432,14.71978,15.01237,14.73821,15.15963,15.22495,14.72350,15.31984,15.15886,
         15.49579,14.92472,15.32498,14.75861,15.13450,15.32448,14.98809,15.10179,15.29890,14.98695,14.96983,15.41413,15.12123,15.26597,
         15.09788,14.72764,15.14286,15.46952,15.13055,15.00559,14.83167,14.71813,15.03142,14.99039,14.89292,15.38937,14.76792,15.28734,
         15.20681,15.10421,15.45162,15.00441,14.90440,14.88044,15.26423,14.73072,14.60118,15.02576,14.84693,15.14960,14.55898,14.98658,
         15.23278,15.12612,15.09414,15.08752,15.09658,15.00574,15.03512,15.14976,14.93821,14.60090,14.97181,15.46100,15.05996,15.15891,
         15.08800,15.18066,14.64953,14.78898,14.82059,15.10667,15.00653,14.86939,15.16498,14.73762,14.58239,14.88403,15.19361,14.97908,
         15.00001,14.67176,15.01569,14.84952,14.79514,14.83009,15.11935,14.88455,14.51907,15.30290,14.93205,15.04080,15.11013,14.98879,
         14.91813,14.44163,14.80356,14.95201,15.11953,14.70853,15.15046,14.86291,15.34034,14.75090,14.86912,14.92036,14.93270)

dispB<-c(14.62067,15.26097,14.87602,15.45027,15.32593,14.74834,15.19424,14.97163,15.09104,15.31831,15.06252,15.19373,14.72724,
         14.90797,14.75423,14.99820,14.31944,15.36786,15.48341,15.01780,14.58473,15.12630,15.03021,15.01365,14.34351,14.58493,14.97563,
         15.29785,15.44040,14.76965,14.53352,15.27177,15.28055,15.53123,13.82846,15.12360,15.24214,14.92428,14.65803,15.18722,14.83586,
         15.60325,14.85619,15.01115,15.30457,14.63107,15.13094,15.01104,14.64376,14.95360,15.53356,15.69041,14.82695,15.29568,15.09679,
         15.28104,15.10458,14.56744,15.19535,15.12521,14.46866,14.71408,14.93787,14.96020,14.78997,14.90338,15.45271,15.21145,15.38612,
         15.65470,15.06021,14.93443,15.02647,14.81672,15.38435,15.33135,15.11671,14.88797,15.03316,15.44367,15.43368,14.49792,14.82239,
         14.67267,14.59706,14.47115,15.19742,14.99877,15.06001,15.38270,14.60696,15.22274,15.63418,14.93377,15.36101,15.33171,15.32998,
         15.22515,14.42690,15.04781,15.64006,15.00974,14.60602,14.99329,15.33431,15.21277,14.87049,14.51086,15.80354,14.87940,14.90026,
         14.88420,14.44305,14.97657,14.78323,14.88690,15.10098,15.17093,14.91092,15.11042,14.59041,15.53938,14.58149,15.02527,14.86442,
         15.11187,14.85419,14.71329,14.75993,14.91381,15.09344,14.98552,15.30405,15.21515,14.99674,14.82704,15.06626,15.07602,14.96841,
         15.25176,14.84417,15.22224,15.42500,15.54409,15.54403,15.04272,14.74762,14.99012,15.15673,14.71890,15.15306,15.40174,14.37135,
         14.83015,15.27419,14.97257,14.59326,15.17822,15.15458,15.41121,15.16800,15.15758,14.58378,14.74625,14.85794,15.67266,14.99509,
         14.78124,15.21816,14.68988,14.84746,14.96116,14.96338,15.07308,14.85328,15.13676,14.89107,15.18928,14.74481,15.13047)

# library("moments")
skewness(dispA)
skewness(dispB)
kurtosis(dispA)
kurtosis(dispB)



