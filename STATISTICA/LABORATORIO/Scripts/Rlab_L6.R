###### LABORATORIO LEZIONE 6 ######


### Modelli discreti ###

# Dado #

par(mfrow=c(1,2))
xx<-c(1:6)
plot(xx,rep(1/6,6),pch=19,xlim=c(0,7),ylim=c(0,1.1),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di probabilita")
abline(0,0,lwd=2)
plot(xx,c(1,2,3,4,5,6)/6,pch=19,xlim=c(0,7),ylim=c(0,1.1),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di ripartizione")
segments(0,0,1,0,lwd=2)
segments(1,1/6,2,1/6,lwd=2)
segments(2,2/6,3,2/6,lwd=2)
segments(3,3/6,4,3/6,lwd=2)
segments(4,4/6,5,4/6,lwd=2)
segments(5,5/6,6,5/6,lwd=2)
segments(6,6/6,7,6/6,lwd=2)
abline(0,0,lwd=1)
par(mfrow=c(1,1))

# Modello binomiale #

par(mfrow=c(2,2))
xx<-seq(0,10,1)
# dbinom(x,size,prob) fornisce i valori della funzione di probabilita' in x di una Bin(size,prob)
plot(xx,dbinom(xx,10,0.2),pch=19,ylim=c(0,0.5),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="n=10, p=0.2")
segments(0,0,10,0,lwd=2)
plot(xx,dbinom(xx,10,0.5),pch=19,ylim=c(0,0.5),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="n=10, p=0.5")
segments(0,0,10,0,lwd=2)
plot(xx,dbinom(xx,10,0.8),pch=19,ylim=c(0,0.5),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="n=10, p=0.8")
segments(0,0,10,0,lwd=2)
xx<-seq(0,20,1)
plot(xx,dbinom(xx,20,0.5),pch=19,ylim=c(0,0.5),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="n=20, p=0.5")
segments(0,0,20,0,lwd=2)
par(mfrow=c(1,1))

# Atleti #

# dbinom(x,size,prob) fornisce i valori della funzione di probabilita' in x di una Bin(size,prob)
1-dbinom(0,10,0.3) # P(X>=1)
dbinom(2,10,0.3) # P(X=2)
dbinom(0,10,0.3)+dbinom(1,10,0.3)+dbinom(2,10,0.3)+dbinom(3,10,0.3) # P(X<4)
# pbinom(q,size,prob) fornisce i valori della funzione di ripartizione in q di una Bin(size,prob)
pbinom(2,10,0.3) # P(X<=2)
# qbinom(p,size,prob) fornisce il quantile di livello p di una Bin(size,prob)
qbinom(0.5,10,0.3) # mediana
# rbinom(n,size,prob) simula n osservazioni da una Bin(size,prob)
rbinom(4,10,0.3) 
# per avere sempre gli stessi valori simulati e' necessario fissare il seed della procedura di simulazione
set.seed(11)
rbinom(4,10,0.3)

# Monitor #

dbinom(0,50,0.1) # P(x=0)
1-pbinom(3,50,0.1) # P(X>3)
qbinom(c(0.25,0.5,0.75),50,0.1) # quartili

# Modello poisson #

par(mfrow=c(2,2))
xx<-seq(0,30,1)
# dpois(x,lambda) fornisce i valori della funzione di probabilita' in x di una P(lambda)
plot(xx,dpois(xx,0.5),pch=19,ylim=c(0,0.7),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="lambda=0.5")
abline(0,0,lwd=2)
plot(xx,dpois(xx,2),pch=19,ylim=c(0,0.7),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="lambda=2")
abline(0,0,lwd=2)
plot(xx,dpois(xx,5),pch=19,ylim=c(0,0.7),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="lambda=5")
abline(0,0,lwd=2)
plot(xx,dpois(xx,15),pch=19,ylim=c(0,0.7),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="lambda=15")
abline(0,0,lwd=2)
par(mfrow=c(1,1))

# Pronto soccorso #

# dpois(x,lambda) fornisce i valori della funzione di probabilita' in x di una P(lambda)
dpois(2,3) # P(X=2)
# ppois(x,lambda) fornisce i valori della funzione di ripartizione in q di una P(lambda)
1-ppois(2,3) # P(X>2)=1-P(X<=2)
# qpois(p,lambda) fornisce il quantile di livello p di una P(lambda)
qpois(0.5,3) # mediana
qpois(c(0.25,0.5,0.75),3) # quartili
# rpois(n,lambda) simula n osservazioni da una P(lambda)
rpois(4,3) 
# per avere sempre gli stessi valori simulati e' necessario fissare il seed della procedura di simulazione
set.seed(11)
rpois(4,3) 

# Pezzi difettosi #

dbinom(3,100,0.01) # P(X=3) esatta usando la Bi(100,0.01)
dpois(3,1) # P(X=3) approssimata usando la P(1)

# Modello geometrico #

par(mfrow=c(1,2))
xx<-seq(1,15,1)
# dgeom(x,prob) fornisce i valori della funzione di probabilita' in x di una Ge(prob)
# si considera l'argomento x-1 perche' in R la distribuzione geometrica e' definita in modo equivalente 
# considerando il numero di insuccessi (invece del numero di prove) prima del successo
plot(xx,dgeom(xx-1,0.25),pch=19,ylim=c(0,0.6),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="p=0.25")
abline(0,0,lwd=2)
plot(xx,dgeom(xx-1,0.5),pch=19,ylim=c(0,0.6),lwd=2,cex.axis=1.5,xlab=" ",ylab=" ",main="p=0.5")
abline(0,0,lwd=2)
par(mfrow=c(1,1))

# Gioco del lotto #

# dgeom(x,prob) fornisce i valori della funzione di probabilita' in x di una Ge(prob)
# per quanto detto in precedenza si considera l'argomento x-1
dgeom(20-1,1/18) # P(X=20)
# pgeom(q,prob) fornisce i valori della funzione di ripartizione in q di una Ge(prob)
dgeom(30-1,1/18)/(1-pgeom(10-1,1/18)) # P(X=30|X>10)=P(X=30)/P(X>10)
# qgoem(p,prob) fornisce il quantile di livello p di una Ge(prob); per quanto detto in precedenza bisogna aggiungere 1
qgeom(0.5,1/18)*+ # mediana
qgeom(c(0.25,0.5,0.75),1/18)+1 # quartili
# rgeom(n,prob) simula n osservazioni da una Ge(prob); per quanto detto in precedenza bisogna aggiungere  1
rgeom(4,1/18)+1
# per avere sempre gli stessi valori simulati e' necessario fissare il seed della procedura di simulazione
set.seed(11)
rgeom(4,1/18)+1

# Criceti #

# dunif(x,min,max) fornisce i valori della funzione di densita' in x di una U(min,max)
x<-seq(-pi,pi,0.01)
plot(x,dunif(x,-pi,pi),type='l',lwd=2,xlim=c(-pi-0.5,pi+0.5),ylim=c(0,0.2),xlab="",ylab="")
abline(0,0,lwd=1)
segments(-0.5-pi,0,-pi,0,lwd=2)
segments(pi,0,pi+0.5,0,lwd=2)
# punif(x,min,max) fornisce i valori della funzione di ripartizione in q di una U(min,max)
x<-seq(-pi,pi,0.01)
plot(x,punif(x,-pi,pi),type='l',lwd=2,xlim=c(-pi-0.5,pi+0.5),ylim=c(0,1.2),xlab="",ylab="")
abline(0,0,lwd=1)
segments(-0.5-pi,0,-pi,0,lwd=2)
segments(pi,1,pi+0.5,1,lwd=2)

punif(1,-pi,pi) # P(X<=1)
1-punif(1,-pi,pi) # P(X>1)
punif(1,-pi,pi)-punif(-1,-pi,pi) # P(-1<=X<=1)
# qunif(p,min,max) fornisce il quantile di livello p di una U(min,max)
qunif(0.5,-pi,pi) # mediana
qunif(c(0.25,0.5,0.75),-pi,pi) # quartili
# runif(n,min,max) simula n osservazioni da una U(min,max)
runif(4,-pi,pi) 
# per avere sempre gli stessi valori simulati e' necessario fissare il seed della procedura di simulazione
set.seed(11)
runif(4,-pi,pi)

# si simulano n=20 osservazioni da una U(-pi,pi) e si rappresentano istogramma e stima della densita'
# in rosso la vera funzione di densita' U(-pi,pi)
set.seed(1)
x<-runif(20,-pi,pi)
hist(x,freq=FALSE,xlim=c(-5,4),main="n=20",xlab="",ylab="")
lines(density(x))
lines(seq(-pi,pi,0.01),dunif(seq(-pi,pi,0.01),-pi,pi),col='red')
segments(-1.5-pi,0,-pi,0,col='red')
segments(pi,0,pi+1.5,0,col='red')
# si simulano n=1000 osservazioni da una U(-pi,pi) e si rappresentano istogramma e stima della densita'
# le stime sono molto piu' vicine alla vera funzione di densita' U(-pi,pi) (in rosso)
set.seed(1)
x<-runif(1000,-pi,pi)
hist(x,freq=FALSE,xlim=c(-5,4),breaks = 25,main="n=1000",xlab="",ylab="")
lines(density(x))
lines(seq(-pi,pi,0.01),dunif(seq(-pi,pi,0.01),-pi,pi),col='red')
segments(-1.5-pi,0,-pi,0,col='red')
segments(pi,0,pi+1.5,0,col='red')

# Circuito #

# dexp(x,rate) fornisce i valori della funzione di densita' in x di una Esp(rate)
# pexp(q,rate) fornisce i valori della funzione di ripartizione in q di una Esp(rate)
pexp(10,0.2)*pexp(10,0.3) # P(X_1<=10 e X_2<=10) (componenti in parallelo)
# con l'opzione lower.tail=FALSE si ottiene P(X>q)=1-P(X<=q)=1-F(q)
1-pexp(10,0.2,lower.tail=FALSE)*pexp(10,0.3,lower.tail=FALSE) # P(X_1<=10 o X_2<=10) (componenti in serie)
# in alternativa pexp(10,0.2)+pexp(10,0.3)-pexp(10,0.2)*pexp(10,0.3)

# qexp(p,rate) fornisce il quantile di livello p di una Esp(rate)
qexp(0.5,0.2) # mediana
qexp(c(0.25,0.5,0.75),0.2) # quartili
qexp(0.5,0.3) # mediana
qexp(c(0.25,0.5,0.75),0.3) # quartili
# rexp(n,rate) simula n osservazioni da una Esp(rate)
rexp(4,0.2) 
# per avere sempre gli stessi valori simulati e' necessario fissare il seed della procedura di simulazione
set.seed(11)
rexp(4,0.2)

# Modello normale #

# dnorm(x,mean,sd) fornisce i valori della funzione di densita' in x di una N(mean,sd^2)
# pnorm(q,mean,sd) fornisce i valori della funzione di ripartizione in q di una N(mean,sd^2)
# si considera sd invece della varianza
par(mfrow=c(1,2))
xx<-seq(-4.5,4.5,0.001)
plot(xx,dnorm(xx,0,1),ylim=c(0,0.6),type='l',lwd=2,cex.axis=1.3,xlab="",ylab="",main="Funzione di densita")
lines(xx,dnorm(xx,1,1),lwd=2,lty=2)
lines(xx,dnorm(xx,0,sqrt(2)),lwd=2,lty=3)
lines(xx,dnorm(xx,0,sqrt(1/2)),lwd=2,lty=4)
abline(0,0,lwd=1)
plot(xx,pnorm(xx,0,1),ylim=c(0,1),type='l',lwd=2,cex.axis=1.3,xlab="",ylab="",main="Funzione di ripartizione")
lines(xx,pnorm(xx,1,1),lwd=2,lty=2)
lines(xx,pnorm(xx,0,sqrt(2)),lwd=2,lty=3)
lines(xx,pnorm(xx,0,sqrt(1/2)),lwd=2,lty=4)
abline(0,0,lwd=1)
par(mfrow=c(1,1))

xx<-seq(-4,4,0.01)
plot(xx,dnorm(xx,0,1),ylim=c(0,0.5),type='l',lwd=2,cex.axis=1.3,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
x1<-seq(-5,-2,0.01)
x2<-seq(2,5,0.01)
polygon(c(-5,x1,-2),c(0,dnorm(x1,0,1),0),col='skyblue')
polygon(c(2,x2,5),c(0,dnorm(x2,0,1),0),col='skyblue')

# per la simmetria, rispetto a z=0, della funzione di densita' della distribuzione normale standard
pnorm(-2) # P(Z<=-2); si considerano i valori di default mean=1 e sd=1
pnorm(2,lower.tail=FALSE) # P(Z>=2); con l'opzione lower.tail=FALSE si considera la coda destra
dnorm(-2) # phi(-2)
dnorm(2) # phi(2)
pnorm(2)-pnorm(-2) # P(|Z|<=2)=P(-2<=Z<=2)
2*pnorm(2,lower.tail=FALSE) # P(|Z|>=2)

pnorm(1)-pnorm(-1) # regola dei 2 sigma
pnorm(2)-pnorm(-2) # refola dei 4 sigma
pnorm(3)-pnorm(-3) # regola dei 6 sigma

# qnorm(p,mean,sd) fornisce il quantile di livello p di una N(mean,sd^2)
# con l'opzione lower.tail=FALSE si ottengono i valori critici
qnorm(c(0.25,0.5,0.75)) # quartili di una normle standard
qnorm(c(0.10,0.05,0.025,0.01,0.005,0.001,0.0005),lower.tail=FALSE) # valori critici

# rnorm(n,mean,sd) simula n osservazioni da una N(mean,sd^2)
rnorm(4) 
# per avere sempre gli stessi valori simulati e' necessario fissare il seed della procedura di simulazione
set.seed(11)
rnorm(4)

# si simulano n=20 osservazioni da una N(0,1) e si rappresentano istogramma e stima della densita'
# in rosso la vera funzione di densita' N(0,1)
set.seed(1)
x<-rnorm(20)
hist(x,freq=FALSE,xlim=c(-4,4),main="n=20",xlab="",ylab="")
lines(density(x))
lines(seq(-4,4,0.01),dnorm(seq(-4,4,0.01)),col='red')
abline(0,0,lwd=1)
# si simulano n=1000 osservazioni da una N(0,1) e si rappresentano istogramma e stima della densita'
# le stime sono molto piu' vicine alla vera funzione di densita' N(0,1) (in rosso)
set.seed(1)
x<-rnorm(1000)
hist(x,freq=FALSE,xlim=c(-4,4),main="n=1000",xlab="",ylab="")
lines(density(x))
lines(seq(-4,4,0.01),dnorm(seq(-4,4,0.01)),col='red')
abline(0,0,lwd=1)

# Pressione #

pnorm(135,129,sqrt(392.04)) # P(X<=135)
pnorm(130,129,sqrt(392.04))-pnorm(120,129,sqrt(392.04)) # P(120<=X<=130)
# P(120<=X<=150|X>129)
(pnorm(150,129,sqrt(392.04))-pnorm(129,129,sqrt(392.04)))/pnorm(129,129,sqrt(392.04),lower.tail=FALSE)

# Barre #

pnorm(5.1,5.05,sqrt(0.01))-pnorm(4.9,5.05,sqrt(0.01)) # P(4.9<=X<=5.1) con X N(5.05,0.01)
pnorm(5.1,5,sqrt(0.01))-pnorm(4.9,5,sqrt(0.01)) # P(4.9<=X<=5.1) con X N(5,0.01)
pnorm(5.1,5,sqrt(0.0025))-pnorm(4.9,5,sqrt(0.0025)) # P(4.9<=X<=5.1) con X N(5,0.0025)

# Riso #

dbinom(0,5,pnorm(500,500,5))

# Cipolle #

cipolle<-read.table("onions.dat",col.names=c("peso","dens","sede")) # il file onions.dat si trova nella cartella di lavoro
par(mfrow=c(1,2))
hist(cipolle$peso,freq=F,lwd=3,xlab=" ",ylab=" ",xlim=c(-20,220),ylim=c(0,0.013),cex.axis=1.2,main=" ")
xx<-seq(-20,220,0.01)
lines(density(cipolle$peso),lwd=2)
lines(xx,dnorm(xx,mean(cipolle$peso),sqrt(var(cipolle$peso)*83/84)),lwd=2,col='red')
qqnorm(cipolle$peso,xlab=" ",ylab=" ",cex.axis=1.2,main=" ")
qqline(cipolle$peso,lwd=2)
par(mfrow=c(1,1))

par(mfrow=c(1,2))
logpeso<-log(cipolle$peso)
hist(logpeso,freq=F,lwd=3,xlab=" ",ylab=" ",xlim=c(1.5,6),ylim=c(0,0.8),cex.axis=1.2,main=" ")
xx<-seq(1.5,6,0.01)
lines(density(logpeso),lwd=2)
lines(xx,dnorm(xx,mean(logpeso),sqrt(var(logpeso)*83/84)),lwd=2,col='red')
qqnorm(logpeso,xlab=" ",ylab=" ",cex.axis=1.2,main=" ")
qqline(logpeso,lwd=2)
par(mfrow=c(1,1))

# Modello chi-quadrato #

xx<-seq(0.001,25,0.01)
plot(xx,dchisq(xx,1),ylim=c(0,0.4),xlim=c(0,25),type='l',lwd=2,cex.axis=1.3,xlab=" ",ylab=" ")
lines(xx,dchisq(xx,3),lwd=2,lty=2)
lines(xx,dchisq(xx,6),lwd=2,lty=3)
lines(xx,dchisq(xx,10),lwd=2,lty=4)
abline(0,0,lwd=1)

# dchisq(x,df) fornisce i valori della funzione di densita' in x di una chi(df)
# pchisq(q,df) fornisce i valori della funzione di ripartizione in q di una chi(df)
# qchisq(p,df) fornisce il quantile di livello p di una chi(df)
# rchisq(n,df) simula n osservazioni da una chi(df)

qchisq(c(0.999,0.995,0.99,0.975,0.95,0.9,0.10,0.05,0.025,0.01,0.005,0.001),15,lower.tail=FALSE) # valori critici si una chi(15)

# Modello t di Student #

xx<-seq(-6,6,0.01)
plot(xx,dt(xx,1),ylim=c(0,0.45),xlim=c(-6,6),type='l',lwd=2,cex.axis=1.3,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
lines(xx,dnorm(xx),lwd=2,col='red')
lines(xx,dt(xx,3),lwd=2,lty=2)
lines(xx,dt(xx,10),lwd=2,lty=4)

# dt(x,df) fornisce i valori della funzione di densita' in x di una t(df)
# pt(q,df) fornisce i valori della funzione di ripartizione in q di una t(df)
# qt(p,df) fornisce il quantile di livello p di una t(df)
# rt(n,df) simula n osservazioni da una t(df)

qt(c(0.10,0.05,0.025,0.01,0.005,0.001),3,lower.tail=FALSE) # valori critici si una t(3)

# Modello F di Fisher #

xx<-seq(0,6,0.01)
plot(xx,df(xx,5,5),ylim=c(0,1.1),xlim=c(0,6),type='l',lwd=2,cex.axis=1.3,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
lines(xx,df(xx,5,25),lwd=2,lty=2)
lines(xx,df(xx,25,5),lwd=3,lty=3)
lines(xx,df(xx,25,25),lwd=2,lty=4)

# df(x,df1,df2) fornisce i valori della funzione di densita' in x di una F(df1,df2)
# pf(q,df1,df2) fornisce i valori della funzione di ripartizione in q di una F(df1,df2)
# qf(p,df1,df2) fornisce il quantile di livello p di una F(df1,df2)
# rf(n,df1,df2) simula n osservazioni da una F(df1,df2)

qf(c(0.999,0.995,0.99,0.975,0.95,0.9,0.10,0.05,0.025,0.01,0.005,0.001),5,5,lower.tail=FALSE) # valori critici si una F(5,5)
