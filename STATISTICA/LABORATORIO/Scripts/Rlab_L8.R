###### LABORATORIO LEZIONE 8 ######


### Stime e stimatori  ###

# Successi #

x1<-0:10
x2<-0:75
par(mfrow=c(1,2))
plot(x1/10,dbinom(x1,10,2/3),xlab="x",ylab="",main="n=10",cex.lab=1.5,cex.axis=1.5,pch=19)
abline(0,0,lwd=1)
abline(v=2/3,col='red')
plot(x2/75,dbinom(x2,75,2/3),xlab="x",ylab="",main="n=75",cex.lab=1.5,cex.axis=1.5,pch=19)
abline(0,0,lwd=1)
abline(v=2/3,col='red')
par(mfrow=c(1,1))

# Controllo di qualita' #

x<-c(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0)
p<-mean(x)
p
se<-sqrt(p*(1-p)/length(x))
se

# Web #

x<-c(0,0,3,0,1,0,0,2,1,0,0,2)
lambda<-mean(x)
lambda
se<-sqrt(lambda/length(x))
se

# Campione gaussiano #

set.seed(1)
flag <- 0 # contatore intervalli che contengono il vero valore del parametro
y <- rnorm(5,175,sqrt(16)) # campione simulato da un modello N(175,16)
ci <-c(mean(y)-qnorm(0.975)*sqrt(16/5),mean(y)+qnorm(0.975)*sqrt(16/5)) # intervallo di confidenza per la media di livello 0.95
if(c((ci[1]-175)*(ci[2]-175)<0)) # condizione che 175 appartenga all'intervallo
  {plot(c(1,1),ci,ylim=c(166,183),xlim=c(0,100),type='l',xlab=' ',ylab=' ',lwd=2) # intervallo nero (contiene 175)
  flag<-flag+1}else
  plot(c(1,1),ci,ylim=c(166,183),xlim=c(0,100),type='l',xlab=' ',ylab=' ',col='red',lwd=2) # # intervallo rosso (non contiene 175)
# si ripete per altre 99 volte
for (i in 2:100){
  y <- rnorm(5,175,sqrt(16))
  ci <-c(mean(y)-qnorm(0.975)*sqrt(16/5),mean(y)+qnorm(0.975)*sqrt(16/5))
  if(c((ci[1]-175)*(ci[2]-175)<0))
  {lines(c(i,i),ci,lwd=2)
    flag<-flag+1}else
      lines(c(i,i),ci,col='red',lwd=2)
}
abline(h=175)
flag/100 # percentuale di intervalli che contengono il vero valore del parametro

#  Campione gaussiano con varianza nota #

x<-c(5.00752201898176,1.85069810556901,-0.142274409463075,2.45900167865644, 
     2.06258684424398,2.37533005745348,3.09290733473573,2.89193827576727, 
     3.96777040974456,-0.223556500772768,1.24582432319052,-1.38597908579294, 
     1.72650871215828,2.19206395580825,4.91904449247961,3.52112017078026, 
     2.40192745906163,-1.10705146936821,1.68380070693403,1.29935779592412, 
     -0.41795019167402,2.15347847576679,1.96459316544775,0.420594982309253, 
     1.32823769557452,-0.0314838172008567,3.92485950796051,2.00534383227679, 
     3.42092165639571,0.678639779218378,2.14348357431764,0.133012171545357, 
     0.723328948100102,-0.253209399057751,1.79498218949182,3.01820992429422, 
     2.06437797769392,1.44670540434426,3.79729782081437,2.27671844221721, 
     1.34351162035059,0.726171895764826,3.35659896163966,2.98814208796288, 
     2.34117306638397,2.31372635290214,2.24141654282489,1.61046063578177, 
     1.44823507405404,3.34988000168233)
mean(x) # media campionaria
sqrt(2/50) # standard error
qnorm(0.05,lower.tail=FALSE) # valore critico di livello 0.05 di una normale standard
# intervallo di confidenza per la media di livello 0.90
c(mean(x)-qnorm(0.05,lower.tail=FALSE)*sqrt(2/50),mean(x)+qnorm(0.05,lower.tail=FALSE)*sqrt(2/50))

#  Campione gaussiano con varianza ignota #

x<-c(0.314060524647885,1.45971087975415,0.0182426832227007,3.45606774617669, 
     1.66599435980862,0.0396824836819647,1.88932877663903,2.24414881142886, 
     2.01427779646988,0.768115601092236,3.33798143176343,1.75132159213247, 
     0.321433145501246,-1.93205861703258,2.7908925611708,1.13645428072429, 
     1.17710351034708,2.53478596980998,2.36138215181596,2.0399033031771, 
     2.49963026244232,2.3061077641182,1.30545081075318,-1.6133681486199, 
     2.07656597898075,1.12062197531918,0.979671881460535,-0.879957968202915, 
     0.523793707215946,1.79105862271379)
mean(x)
var(x)
qt(0.025,29,lower.tail=FALSE) # valore critico di livello 0.05 di una t(29)
# intervallo di confidenza per la media di livello 0.95
c(mean(x)-qt(0.025,29,lower.tail=FALSE)*sqrt(var(x)/30),mean(x)+qt(0.025,29,lower.tail=FALSE)*sqrt(var(x)/30))
# in alternativa t.test(x,conf.level = 0.95)$conf.int

# Farmaco #

somma<-393
n<-550
p<-somma/n
p
se<-sqrt(p*(1-p)/n)
se
qnorm(0.025,lower.tail=FALSE)
c(p-qnorm(0.025,lower.tail=FALSE)*se,p+qnorm(0.025,lower.tail=FALSE)*se)

# Sito web #

x<-c(6,3,4,3,5,3,4,5,1,6,6,3,3,4,7,3,6,3,5,7,4,5,3,3,5,2,5,2,3,2,3,1,5,6,5,6,3,3,6,4,5,3,3,10,5,2,2,4,7,4,
     8,4,3,3,2,0,5,2,4,5,9,4,4,2,5,4,4,1,2,4,4,1,1,5,7,4,4,4,9,4,5,4,3,2,5,4,2,4,2,6,4,4,3,4,3,2)
sum(x)
lambda<-mean(x)
lambda
se<-sqrt(lambda/length(x))
se
qnorm(0.05,lower.tail=FALSE)
c(lambda-qnorm(0.05,lower.tail=FALSE)*se,lambda+qnorm(0.05,lower.tail=FALSE)*se)

#  Campione gaussiano con varianza ignota #

x<-c(0.314060524647885,1.45971087975415,0.0182426832227007,3.45606774617669, 
     1.66599435980862,0.0396824836819647,1.88932877663903,2.24414881142886, 
     2.01427779646988,0.768115601092236,3.33798143176343,1.75132159213247, 
     0.321433145501246,-1.93205861703258,2.7908925611708,1.13645428072429, 
     1.17710351034708,2.53478596980998,2.36138215181596,2.0399033031771, 
     2.49963026244232,2.3061077641182,1.30545081075318,-1.6133681486199, 
     2.07656597898075,1.12062197531918,0.979671881460535,-0.879957968202915, 
     0.523793707215946,1.79105862271379)
mean(x)
var(x)
qchisq(0.975,29,lower.tail=FALSE) # valore critico di livello 0.975 di una chi^2(29)
qchisq(0.025,29,lower.tail=FALSE) # valore critico di livello 0.025 di una chi^2(29)
# intervallo di confidenza per la varianza di livello 0.95
c(29*var(x)/qchisq(0.025,29,lower.tail=FALSE),29*var(x)/qchisq(0.975,29,lower.tail=FALSE))
# in alternativa
# S2<-29*var(x)/30
# S2
# c(30*S2/qchisq(0.025,29,lower.tail=FALSE),30*S2/qchisq(0.975,29,lower.tail=FALSE))

## Esercizio 1 Cap.7 (Ieva et al.,2016)

setwd("C:/Users/mamel/Desktop/LABORATORIO DI STATISTICA/Rmd files/new version/")
gluc = read.table(file="glucosio.txt", header=T)
head(gluc)
attach(gluc)
## Verifica della normalità dei dati
qqnorm(Glucosio)
qqline(Glucosio,col='red',lwd=2)

alpha= 0.01
n = length(Glucosio)
n
t.alpha = qt(1-alpha/2, n-1)
med = mean(Glucosio)
stdev = sd(Glucosio)

IC.alpha = c(med - t.alpha*stdev/(sqrt(n)), 
             med + t.alpha*stdev/(sqrt(n)))
IC.alpha


## Esercizio 1 Cap.6 (Ieva et al.,2016)

magnesio <- read.csv("magnesio.txt", sep="")
head(magnesio)

## Verifica della normalità dei dati
attach(magnesio)
qqnorm(Magnesio)
qqline(Magnesio,col='red',lwd=2)


##
hist(Magnesio,prob=TRUE,col='blue')
curve(dnorm(x, mean=mean(Magnesio),sd=sd(Magnesio)),col='red',add=T)


##
alpha <- 0.05
n <- length(Magnesio)
n
media.camp <- mean(Magnesio)
devstd.camp <- sd(Magnesio)
t.alpha <- qt(1-alpha/2,n-1)
IC.alpha_t <- c(media.camp - t.alpha*devstd.camp/sqrt(n), 
                media.camp + t.alpha*devstd.camp/sqrt(n))
IC.alpha_t

z.alpha <- qnorm(1-alpha/2)
IC.alpha_z <- c(media.camp - z.alpha*devstd.camp/sqrt(n), 
                media.camp + z.alpha*devstd.camp/sqrt(n))
IC.alpha_z
