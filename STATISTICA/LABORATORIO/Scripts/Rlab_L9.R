###### LABORATORIO LEZIONE 9 ######


### Introduzione  ###

# Batterie #
x<-c(31,36,32,40,34,33,36,37,37,34,40,35,33,28,38,35,35,38,37,37,38,37,31,29,37,35,35,31,33,36,39,35,36,35,31,34,34,33,38,37)
mean(x)
qnorm(0.05) # valore critico (soglia inferiore)
(mean(x)-36)/sqrt(9/40) # valore osservato per la media campionaria standardizzata sotto H_0; e' minore del valore critico
pnorm((mean(x)-36)/sqrt(9/40)) # probabilita', supponendo vera H_0, di osservare un valore per Z minore o oguale a quello osservato

par(mfrow=c(1,2))
xx1<-seq(-3.5,qnorm(0.05),0.01)
xx2<-seq(-3.5,3.5,0.01)
plot(xx2,dnorm(xx2),type='l',lwd=2,cex.axis=1.3,xlim=c(-3.5,3.5),ylim=c(0,0.45),xlab="",ylab="")
polygon(c(-3.5,xx1,qnorm(0.05)),c(0,dnorm(xx1),0),col="skyblue")
abline(0,0)
points((mean(x)-36)/sqrt(9/40),0,pch=16,lwd=2,col='red')
xx1<-seq(-3.5,(mean(x)-36)/sqrt(9/40),0.01)
plot(xx2,dnorm(xx2),type='l',lwd=2,cex.axis=1.3,xlim=c(-3.5,3.5),ylim=c(0,0.45),xlab="",ylab="")
polygon(c(-3.5,xx1,(mean(x)-36)/sqrt(9/40)),c(0,dnorm(xx1),0),col="red")
abline(0,0)
points((mean(x)-36)/sqrt(9/40),0,pch=16,lwd=2,col='red')
par(mfrow=c(1,1))


### Test sulla media e sulla varianza ###

# Contenitori #

x<-c(184.35,188.69,178.88,168.98,180.29,193.4,177.03,188.9,132.52,177.06,180.26,187.93,200.46,195.94,189.98,166.33,181.14,178.41,170.06,185.64,185.62,185.47,183.9,185.4,185.27)
mean(x)
(mean(x)-175)/sqrt(100/25) # valore osservato per la statistica test z sotto H_0
qnorm(0.05,lower.tail=FALSE) # soglia di rifiuto (superiore): si rifiuta H_0
pnorm((mean(x)-175)/sqrt(100/25),lower.tail=FALSE) # p-value

# Bilancia (varianza nota) #

x<-c(19,23.2,12.8,18.9,30.9,16.7,31.9,27.2,22.7,16.5)
mean(x)
(mean(x)-25)/sqrt(45/10)
qnorm(0.025) # soglia inferiore
qnorm(0.025,lower.tail=FALSE) # soglia superiore
2*min(pnorm((mean(x)-25)/sqrt(45/10)),pnorm((mean(x)-25)/sqrt(45/10),lower.tail=FALSE)) # p-value

# Spese mediche #

x<-c(57,61,56,67,61,56,62,63,63,59,67,62,57,50,65,60,60,64,64,63,64,63,60,51,63,60,59,53,58,62,66, 
     60,62,60,54,58,58,60,65,63,59,59,63,62,57,57,62,63,59,64,62,57,62,55,66,69)
mean(x)
var(x)
(mean(x)-66)/sqrt(var(x)/56) # valore osservato per la statistica test t sotto H_0
qt(0.05,55)  # soglia di rifiuto (inferiore) riferita a una t(55): si rifiuta H_0
pt((mean(x)-66)/sqrt(var(x)/56),55)
# in alternativa
t.test(x,alternative="less",mu=66)

# Bilancia (varianza ignota) #

x<-c(19,23.2,12.8,18.9,30.9,16.7,31.9,27.2,22.7,16.5)
mean(x)
mean(x^2)
s2<-mean(x^2)-mean(x)^2
s2
sc2<-10*s2/9 # in alterativa, var(x)
sc2
(mean(x)-25)/sqrt(var(x)/10)
qt(0.025,9) # soglia inferiore
qt(0.025,9,lower.tail=FALSE) # soglia superiore: non si rifiuta H_0
2*min(pt((mean(x)-25)/sqrt(var(x)/10),9),pt((mean(x)-25)/sqrt(var(x)/10),9,lower.tail=FALSE)) # p-value
# in alternativa
t.test(x,alternative="two.sided",mu=25)

# Carta di credito #

x<-36
n<-120
p<-x/n # stima per p
p
se<-sqrt(p*(1-p)/n) # standard error stimato
se
p0<-0.2 # valor di p sotto H_0
se0<-sqrt(p0*(1-p0)/n) # standard error sotto H_0
se0
(p-p0)/se0 # valore osservato per la statistica test z sotto H_0
qnorm(0.025) # soglia inferiore
qnorm(0.025,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
2*min(pnorm((p-p0)/se0),pnorm((p-p0)/se0,lower.tail=FALSE)) # p-value (approssimato)
# in alternativa
prop.test(x,n,p=0.2,correct=FALSE)
# la statistica test e' Z^2 che, sotto H_0, ha distribuzione approssimata chi^2(1)
((p-p0)/se0)^2

# Chip #

x<-c(26,17,22,23,37,33,29,24,32,27,28,23,27,34,26,21,29,27,17,30,28,25,34,31,33,31,25,25,28,25,26,25,30,34,25,25,18,26, 
     31,34,28,25,33,24,29,32,38,30,25,24,19,31,32,30,29,33,43,30,32,30,27,30,26,32,25,29,31,26,20,26,34,31,34,28,23)
mean(x) # stima per lambda
se<-sqrt(mean(x)/length(x)) # standard error stimato
se
se0<-sqrt(25/length(x)) # standard error sotto H_0
se0
(mean(x)-25)/se0 # valore osservato per la statistica test z sotto H_0
qnorm(0.01,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
pnorm((mean(x)-25)/se0,lower.tail=FALSE) # p-value (approssimato)

# Lampadina #

x<-c(490.8,642.4,808.3,79.3,108,14.5,97.7,434.8,226.3,766.5,107.3,280.1,227.4,16.5,634.4,223.4,439.9,342.7,373.8, 
     583.4,280.5,124.3,289.9,72.5,189.2,73.3,124.1,58.5,36.8,96.9,527.7,143.4,124.7,105.4,346.9,748.2,54.5,638.8, 
     157.1,212,436.9,409.9,10.3,34.9,394.3,199.6,121.1,19.3,59.4,83.1,65.5,126.4,465,222.7,5.6,49.6,905.4,379,25.3, 
     330.9,73,348.2,145.3,105.2,30.5,251.5,43.5,27.5,576,218.1)
mean(x) # stime della durata media
se<-sqrt(mean(x)^2/length(x)) # standard error stimato
se
se0<-sqrt(200^2/length(x)) # standard error sotto H_0
se0
(mean(x)-200)/se0 # valore osservato per la statistica test z sotto H_0
qnorm(0.01,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
pnorm((mean(x)-200)/se0,lower.tail=FALSE) # p-value (approssimato)

# Catalizzatore #

x<-c(5.19,10.33,13.67,15.65,11.87,11.58,12.58,9.13,11.86,13.15,13.02,11.33,12.75)
mean(x)
mean(x^2)
s2<-12*var(x)/13
s2
length(x)*s2/3.83 # valore osservato per la statistica test sotto H_0
qchisq(0.025,12) # soglia inferiore
qchisq(0.025,12,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
2*min(pchisq(length(x)*s2/3.83,12),pchisq(length(x)*s2/3.83,12,lower.tail=FALSE)) # p-value

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
mean(dispA)
mean(dispB)
var(dispA)
var(dispB)
sp2<-((length(dispA)-1)*var(dispA)+(length(dispB)-1)*var(dispB))/(length(dispA)+length(dispB)-2)
sp2
t2<-(mean(dispA)-mean(dispB))/sqrt(sp2*(1/length(dispA)+1/length(dispB))) # valore osservato per la statistica test t a due campioni sotto H_0
t2
qt(0.025,length(dispA)+length(dispB)-2) # soglia inferiore
qt(0.025,length(dispA)+length(dispB)-2,lower.tail=FALSE) # soglia superiore: non si rifiuta H_0
2*min(pt(t2,length(dispA)+length(dispB)-2),pt(t2,length(dispA)+length(dispB)-2,lower.tail=FALSE)) # p-value
# in alternativa
t.test(dispA,dispB,alternative="two.sided",var.equal=TRUE) # ipotizzando varianze uguali
t.test(dispA,dispB,alternative="two.sided") # ipotizzando varianze diverse (test di Welch)

f<-var(dispA)/var(dispB) # valore osservato per la statistica test F per il confronto tra le varianze sotto H_0
f
qf(0.005,length(dispA)-1,length(dispB)-1) # soglia inferiore
qf(0.005,length(dispA)-1,length(dispB)-1,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
2*min(pf(f,length(dispA)-1,length(dispB)-1),pf(f,length(dispA)-1,length(dispB)-1,lower.tail=FALSE)) # p-value
# in alternativa
var.test(dispA,dispB,alternative="two.sided")

# Vernici #

x1<-c(7.29,6.64,8.31,4.51,5.23,5.71,6.37,0.96,7.03,9.16,6.98,8.4,4.01,5.31,3.93,8.04,7.5)
x2<-c(9.03,6.72,12.21,8.43,8.71,6.99,7.71,9.52,8.04,9.32,5.53,12.92,10.47,5.62,5.56,9.24,9.47,8.36)
mean(x1)
mean(x2)
var(x1)
var(x2)
var.test(x1,x2,alternative="two.sided") # test F per il confronto tra varianze; si accetta H_0
sp2<-((length(x1)-1)*var(x1)+(length(x2)-1)*var(x2))/(length(x1)+length(x2)-2)
sp2
t2<-(mean(x1)-mean(x2))/sqrt(sp2*(1/length(x1)+1/length(x2)))# valore osservato per la statistica test t a due campioni sotto H_0
t2
qt(0.005,length(x1)+length(x2)-2) # soglia inferiore
qt(0.005,length(x1)+length(x2)-2,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
2*min(pt(t2,length(x1)+length(x2)-2),pt(t2,length(x1)+length(x2)-2,lower.tail=FALSE)) # p-value
# in alternativa
t.test(x1,x2,alternative="two.sided",var.equal=TRUE) # ipotizzando varianze uguali
t.test(x1,x2,alternative="two.sided") # ipotizzando varianze diverse (test di Welch)

# Pressione #

prima<-c(146,145,136,145,146,147,144,147,146,145,145,143,133,146,146)
dopo<-c(130,118,120,121,119,141,118,120,119,120,123,120,119,129,121)
mean(prima)
mean(dopo)
var(prima)
var(dopo)
diff<-prima-dopo
diff
mean(diff)
var(diff)
mean(diff)/sqrt(var(diff)/length(diff)) # statistica test t per dati appaiati sotto H_0
qt(0.01,length(diff)-1,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
pt(mean(diff)/sqrt(var(diff)/length(diff)),length(diff)-1,lower.tail=FALSE) # p-value
# in alternativa
t.test(prima,dopo,alternative="greater",paired=TRUE) # test t per dati appaiati


### Test su proporzioni ###

# Cerotti #

x1<-40
n1<-224
x2<-87
n2<-245
p1<-x1/n1
p1
p2<-x2/n2
p2
p<-(x1+x2)/(n1+n2)
p
(p1-p2)/sqrt(p*(1-p)*(1/n1+1/n2)) # valore osservato per la statistica test z sotto H_0
qnorm(0.025) # soglia inferiore
qnorm(0.025,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
2*min(pnorm((p1-p2)/sqrt(p*(1-p)*(1/n1+1/n2))),pnorm((p1-p2)/sqrt(p*(1-p)*(1/n1+1/n2)),lower.tail=FALSE)) # p-value (approssimato)
# in alternativa
prop.test(c(x1,x2),c(n1,n2),correct=FALSE)
# la statistica test e' Z^2 che, sotto H_0, ha distribuzione approssimata chi^2(1)
((p1-p2)/sqrt(p*(1-p)*(1/n1+1/n2)))^2

# Aspirina #

x1<-139
n1<-11037
x2<-239
n2<-11034
p1<-x1/n1
p1
p2<-x2/n2
p2
p<-(x1+x2)/(n1+n2)
p
(p1-p2)/sqrt(p*(1-p)*(1/n1+1/n2)) # valore osservato per la statistica test z sotto H_0
pnorm((p1-p2)/sqrt(p*(1-p)*(1/n1+1/n2))) # p-value (approssimato)
# in alternativa
prop.test(c(x1,x2),c(n1,n2),alternative="less",correct=FALSE)

# Farmaco #

x<-matrix(c(10,104,12,5,70,10,10,65,44),3,3,byrow=TRUE)
x
qchisq(0.01,4,lower.tail=FALSE) # valore critico (soglia superiore): si rifiuta H_0
pchisq(35.537,4,lower.tail=FALSE) # P-value (approssimato)
chisq.test(x,correct=FALSE)

# Fisioterapia #

x<-matrix(c(163,64,154,108),2,2,byrow=TRUE)
x
p1<-x[1,1]/sum(x[1,])
p1
p2<-x[2,1]/sum(x[2,])
p2
p<-sum(x[,1])/sum(x)
p
z<-(p1-p2)/sqrt(p*(1-p)*(1/sum(x[1,])+1/sum(x[2,]))) # valore osservato per la statistica test z sotto H_0
z
qnorm(0.025) # soglia inferiore
qnorm(0.025,lower.tail=FALSE) # soglia superiore: si rifiuta H_0
2*min(pnorm(z),pnorm(z,lower.tail=FALSE)) # p-value (approssimato)
# in alternativa
prop.test(x,correct=FALSE) # stesso risultato con prop.test(c(x[1,1],x[2,1]),c(sum(x[1,]),sum(x[2,])),correct=FALSE)
# la statistica test e' Z^2 che, sotto H_0, ha distribuzione approssimata chi^2(1)
z^2
# la funzione prop.test() si utilizza quando si hanno due campioni multinomiali (in particolare bernoulliani/binomiali)
# con due o piu' campioni bisogna utilizzare la funzione chisq.test()
# chisq.test(x,correct=FALSE) fornisce lo stesso risultato

# Perni #

perni <- rbind(cbind(rep("M1",10), rep("Fine",10)), cbind(rep("M1",102), rep("Ok",102)),
               cbind(rep("M1",8), rep("Spesso",8)),
               cbind(rep("M2",34), rep("Fine",34)), cbind(rep("M2",161), rep("Ok",161)),
               cbind(rep("M2",5), rep("Spesso",5)),
               cbind(rep("M3",10), rep("Fine",10)), cbind(rep("M3",60), rep("Ok",60)),
               cbind(rep("M3",10), rep("Spesso",10)))
perni <- as.data.frame(perni) # matrice trasformata in data frame
colnames(perni) <- c("Macchinario","Diametro") # nomi delle colonne
str(perni)
tab<-table(perni$Macchinario, perni$Diametro) # tabella frequenze assolute
tab

xtot<-margin.table(tab,1) # distribuzione marginale di X
xtot
ytot<-margin.table(tab,2) # distribuzione marginale di Y
ytot
xtot <- as.matrix(xtot) # vettore interpretato come matrice
ytot <- as.matrix(ytot) # vettore interpretato come matrice
tab_ind <- xtot%*%t(ytot)/sum(xtot) # tabella di contingenza in caso di indipendenza
tab_ind
chisq_obsstat <- sum((tab-tab_ind)^2/tab_ind) # statistica test chi-quadrato
chisq_obsstat
qchisq(0.01,4,lower.tail=FALSE) # valore critico (soglia superiore): si rifiuta H_0
pchisq(15.03,4,lower.tail=FALSE) # P-value (approssimato)
# in alternativa si puo' usare il comando 
chisq.test(tab,correct=FALSE)

# Nascite #

xo<-c(13,23,24,20,27,18,15) # frequenze osservate
xo
prob<-rep(1/7,7) # probabilita' sotto H_0
xa<-140*prob # frequenze attese sotto H_0
xa
chisq_stat<-sum((xo-xa)^2/xa) # statistica test chi-quadrato
chisq_stat
qchisq(0.05,6,lower.tail=FALSE) # valore critico (soglia superiore): si rifiuta H_0
pchisq(chisq_stat,6,lower.tail=FALSE) # P-value (approssimato)
# in alternativa si puo' usare il comando 
chisq.test(xo,p=prob,correct=FALSE)

##Esercizio 7.2 (Ieva et al., 2016)
siero = read.table(file="siero.txt", header=T)
head(siero)
attach(siero)

qqnorm(Siero)
qqline(Siero,col='red',lwd=2)

mean(Siero)
dati = log(Siero)
qqnorm(dati)
qqline(dati,col='red',lwd=2)
med = mean(dati)
med

##

alpha= 0.01
mu0 = log(0.4)
mu0
t.test(dati, alternative ='greater', mu=mu0, conf.level= 1-alpha)


## Esercizio 7.3 (Ieva et al., 2016)


dati <- read.table('penicillina.txt', header=T)
head(dati)

dim(dati)
n <- dim(dati)[1]

##

names(dati)
attach(dati)
p.0 <- 0.6
alpha <- 0.05
z.alpha <- qnorm(1-alpha)
p.camp <- length(which(Rid_Temp=='S'))/n
p.camp
Z.0 <- (p.camp - p.0)/ sqrt(p.0*(1 - p.0)/n)
Z.0
Z.0 > z.alpha
detach(dati)

