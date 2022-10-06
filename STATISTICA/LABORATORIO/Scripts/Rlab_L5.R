###### LABORATORIO LEZIONE 5 ######


### Variabili casuali discrete ###

# Moneta #

par(mfrow=c(1,2))
# funzione di probabilita'
plot(c(0,1,2,3),c(1/8,3/8,3/8,1/8),pch=19,lwd=2,xlim=c(-1,4),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di probabilita' ")
abline(0,0,lwd=2)
# funzione di ripartizione
plot(c(0,1,2,3),c(1/8,4/8,7/8,8/8),pch=19,lwd=2,xlim=c(-1,4),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di ripartizione")
segments(-1,0,0,0,lwd=3)
segments(0,1/8,1,1/8,lwd=3)
segments(1,4/8,2,4/8,lwd=3)
segments(2,7/8,3,7/8,lwd=3)
segments(3,8/8,4,8/8,lwd=3)
par(mfrow=c(1,1))

# Variabile casuale degenere #

par(mfrow=c(1,2))
plot(1,1,pch=19,lwd=2,xlim=c(-1,3),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di probabilita' ")
abline(0,0,lwd=2)
plot(c(1),c(1),pch=19,lwd=2,xlim=c(-1,3),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di ripartizione")
segments(-1,0,1,0,lwd=3)
segments(1,1,4,1,lwd=3)
par(mfrow=c(1,1))

# Variabile casuale bernoulliana #

par(mfrow=c(1,2))
plot(c(0,1),c(1/3,2/3),pch=19,lwd=2,xlim=c(-0.5,1.5),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di probabilita' ")
abline(0,0,lwd=2)
plot(c(0,1),c(1/3,1),pch=19,lwd=2,xlim=c(-1,4),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ",main = "Funzione di ripartizione")
segments(-1,0,0,0,lwd=3)
segments(0,1/3,1,1/3,lwd=3)
segments(1,1,4,1,lwd=3)
par(mfrow=c(1,1))

# Interruzioni #

plot(c(0,1,2,3,4),c(0.4,0.2,0.1,0.05,0.25),pch=19,lwd=2,xlim=c(-0.5,4.5),ylim=c(0,0.5),cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=2)


### Variabili casuali continue ###

# Esempio variabile casuale continua #

par(mfrow=c(1,2))
xx<-seq(-0.5,5,0.01)
# pgamma() e' la il comando che fornisce la funzione di ripartizione di una variabile casuale gamma
plot(xx,pgamma(xx,2,2),type='l',lwd=2,xlim=c(-0.5,5),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
segments(-1,0,0,0,lwd=2)
segments(1,0,1,pgamma(c(1),2,2),lwd=2)
segments(1,pgamma(c(1),2,2),-1.3,pgamma(c(1),2,2),lwd=2)

# dgamma() e' il comando che fornisce la funzione di densita' di una variabile casuale gamma
plot(xx,dgamma(xx,2,2),type='l',lwd=2,xlim=c(-0.5,5),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
segments(-1,0,0,0,lwd=2)
x1<-seq(0,1,0.01)
polygon(c(x1,1),c(dgamma(x1,2,2),0),col="skyblue")
par(mfrow=c(1,1))

par(mfrow=c(1,2))
xx<-seq(-0.5,5,0.01)
plot(xx,pgamma(xx,2,2),type='l',lwd=2,xlim=c(-0.5,5),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
segments(-1,0,0,0,lwd=2)
segments(1,0,1,pgamma(c(1),2,2),lwd=2)
segments(1,pgamma(c(1),2,2),-1.3,pgamma(c(1),2,2),lwd=2)
segments(2,0,2,pgamma(c(2),2,2),lwd=2)
segments(2,pgamma(c(2),2,2),-1.3,pgamma(c(2),2,2),lwd=2)

plot(xx,dgamma(xx,2,2),type='l',lwd=2,xlim=c(-0.5,5),ylim=c(0,1.1),cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
segments(-1,0,0,0,lwd=2)
x1<-seq(1,2,0.01)
polygon(c(1,x1,2),c(0,dgamma(x1,2,2),0),col="skyblue")
par(mfrow=c(1,1))

# Internet #

xx<-seq(0,1,0.01)
plot(xx,6*xx-6*xx^2,xlim=c(-0.2,1.2),ylim=c(0,1.65),type='l',lwd=2,cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
segments(-0.5,0,0,0,lwd=2)
segments(1,0,1.5,0,lwd=2)
x1<-seq(0.5,0.7,0.01)
polygon(c(0.5,x1,0.7),c(0,6*x1-6*x1^2,0),col="skyblue")

# Variabile casuale esponenziale #

par(mfrow=c(1,2))
xx<-seq(-1,5,0.01)
# pexp() e' il comando che fornisce la funzione di ripartizione di una variabile casuale esponenziale
plot(xx,pexp(xx,1),xlim=c(-1,5),ylim=c(0,1.2),type='l',lwd=2,cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)

xx1<-seq(0,5,0.01)
# dexp() e' il comando che fornisce la funzione di densita' di una variabile casuale esponenziale
plot(xx1,dexp(xx1,1),xlim=c(-1,5),ylim=c(0,1.2),type='l',lwd=2,cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
points(0,dexp(0,1),pch=19,lwd=2)
segments(-1,0,0,0,lwd=2)
par(mfrow=c(1,1))

# Variabile casuale uniforme continua #

par(mfrow=c(1,2))
xx<-seq(-0.5,1.5,0.01)
# punif() e' il comando che fornisce la funzione di ripatizione di una variabile casuale uniforme continua
plot(xx,punif(xx,0,1),xlim=c(-0.5,1.5),ylim=c(0,1.2),type='l',lwd=2,cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)

xx1<-seq(0,1,0.01)
# dunif() e' il comando che fornisce la funzione di densita' di una variabile casuale uniforme continua
plot(xx1,dunif(xx1,0,1),xlim=c(-0.5,1.5),ylim=c(0,1.2),type='l',lwd=2,cex.axis=1.5,xlab=" ",ylab=" ")
abline(0,0,lwd=1)
segments(-0.5,0,0,0,lwd=2)
segments(1,0,1.5,0,lwd=2)
par(mfrow=c(1,1))

# Costante di normalizzazione #

par(mfrow=c(1,2))
xx<-seq(0,2,0.01)
plot(xx,(3/8)*xx^2,xlim=c(-1,3),ylim=c(0,1.6),type='l',lwd=2,cex.axis=1.5,xlab=" ",ylab=" ")
points(2,(3/8)*2^2,lwd=2,pch=19)
segments(-1,0,0,0,lwd=2)
segments(2,0,3,0,lwd=2)
abline(0,0,lwd=1)

plot(xx,(1/8)*xx^3,xlim=c(-1,3),ylim=c(0,1.6),type='l',lwd=2,cex.axis=1.5,xlab=" ",ylab=" ")
segments(-1,0,0,0,lwd=2)
segments(2,1,3,1,lwd=2)
abline(0,0,lwd=1)
par(mfrow=c(1,1))

# la funzione integrate calcola l'integrale di una funzione unidimensionale con una procedura numerica
fun<-function(x){(3/8)*x^2} # funzione di densita' sul supporto [0,2]
integrate(fun,0,2) # integrale della funzione di densita' sul supporto [0,2]
fun1<-function(x){x*(3/8)*x^2} 
media<-integrate(fun1,0,2) # calcolo del valore atteso
media
fun2<-function(x){x^2*(3/8)*x^2} 
media2<-integrate(fun2,0,2) # calcolo del valore atteso di X^2
media2$value-media$value^2 # varianza
# calcolo della varianza usando la definizione
fun3<-function(x){(x-media$value)^2*(3/8)*x^2} 
integrate(fun3,0,2)

# la funzione uniroot trova lo zero di una funzione su un intervallo definito
frip_me<-function(x){(1/8)*x^3-(1/2)} # funzione di ripartizione meno 1/2 sul supporto [0,2]
uniroot(frip_me,c(0,2))$root # mediana come soluzione dell'equazione F_X(x)-1/2=0


