###### LABORATORIO LEZIONE 10 ######


### Analisi di correlazione  ###

# Velocita' #

plot(cars$speed,cars$dist,main=" ",xlab="velocità",ylab="spazio di frenata",cex.axis=1.2,cex.lab=1.2,pch=16)
ro<-cor(cars$speed,cars$dist) # coefficiente di correlazione
ro
ro*sqrt(length(cars$speed)-2)/sqrt(1-ro^2) # valore osservato per la statistica test sotto H_0
qt(0.01,length(cars$speed)-2,lower.tail=FALSE)# soglia superiore: si rifiuta H_0
pt(ro*sqrt(length(cars$speed)-2)/sqrt(1-ro^2),length(cars$speed)-2,lower.tail=FALSE) # p-value
# in alternativa
cor.test(cars$speed,cars$dist,alternative="greater")
# test di correlazione utilizzando l'indice di Spearman e l'indice di Kendall
cor.test(cars$speed,cars$dist,method="spearman",alternative="greater")
cor.test(cars$speed,cars$dist,method="kendall",alternative="greater")

# Mais #

x<-c(171,169,181,173,178,180,185,183,170,174) 
y<-c(60,57,71,66,65,78,82,78,62,70)
plot(x,y,main=" ",xlab="fertilizzante",ylab="peso mais",cex.axis=1.2,cex.lab=1.2,pch=16)
mean(y)
mean(x)
cov(y,x)*9/10
var(x)*9/10
b<-cov(x,y)/var(x)
b
a<-mean(y)-b*mean(x)
a
# in alternativa si usa la funzione lm() che permette la stima di un modello lineare e fornisce un oggetto di classe 'lm'
lm_mais<-lm(y~x)
lm_mais$coefficients
plot(x,y,main=" ",xlab="fertilizzante",ylab="peso mais",cex.axis=1.2,cex.lab=1.2,pch=16)
abline(lm_mais,lwd=2,col='red') # per aggiungere la retta di regressione stimata

# la funzione summary(), con argomento un oggetto di classe 'lm', fornisce: alcune statistiche riassuntive sui residui stimati,
# una tabella con le stime di a e b, gli associati standard error stimati, il valore della statistica test e del p-value per 
# H_0: a=0 e H_0: b=0.
# Inoltre, una stima per la deviazione standard dei residui (residual standard error), che elevata al quadrato corrisponde 
# alla stima per la varianza dei residui
summary(lm_mais)
summary(lm_mais)$sigma^2 # stima della varianza dei residui

fitted.values(lm_mais) # valori stimati dal modello
residuals(lm_mais) # residui stimati
mean(residuals(lm_mais)) # i residui stimati hanno media nulla
sum(residuals(lm_mais)^2)/(length(y)-2) # stima della varianza dei residui

summary(lm_mais)$coefficients # matrice con stime, standard error, test e p-value
# intervallo di confidenza per a di livello 0.95
summary(lm_mais)$coefficients[1,1]+c(qt(0.025,8),qt(0.025,8,lower.tail=FALSE))*summary(lm_mais)$coefficients[1,2]
# intervallo di confidenza per b di livello 0.95
summary(lm_mais)$coefficients[2,1]+c(qt(0.025,8),qt(0.025,8,lower.tail=FALSE))*summary(lm_mais)$coefficients[2,2]

# la funzione predict(), con argomento un oggetto di classe 'lm', permette la stima della media della variabile risposta e il 
# calcolo degli associati intervalli di confidenza. Inoltre si possono calcolare previsioni e intervalli di previsione
# valori stimati dal modello (senza argomenti aggiuntivi si considerano i valori osservati di x); stessi risultati di fitted.values(lm_mais)
predict(lm_mais)
# oltre ai valori stimati dal modello si ottengono gli estremi inferiore e superiore degli intervalli di confidenza (di livello 0.95) per la 
# media delle Y
predict(lm_mais, interval="confidence")
# definendo l'argomento newdata (che deve essere un dataframe con un elemento con lo stesso nome della variabile esplicativa), si possono 
# ottenere previsioni per Y (che coincidono con stime della media di Y) riferite a nuovi valori di x, l'intervallo di di confidenza 
# (di livello 0.95) per la media di Y e l'intervallo di previsione (di livello 0.95) per Y
xnew<-data.frame(x=c(176))
predict(lm_mais,newdata=xnew,interval="confidence") # stima della media di Y (con x=xnew) e intervallo di confidenza di livello 0.95
predict(lm_mais,newdata=xnew,interval="prediction") # previsione per Y (con x=xnew) e intervallo di previsione di livello 0.95
# stima della media di Y e previsore per Y coincidono ma l'intervallo di previsione e' piu' ampio

var(residuals(lm_mais))*9/10 # varianza residua
var(y)*9/10 # varianza totale
1-var(residuals(lm_mais))/var(y) # indice di determinazione lineare
cor(x,y)^2 # # indice di determinazione lineare come quadrato di cor(x,y)
# alternativa
summary(lm_mais)$r.squared

# grafici per le diagnostiche
plot(lm_mais,which=1)
plot(lm_mais,which=2)
plot(lm_mais,which=3)
plot(lm_mais,which=4)

# Misurazioni #

x<-c(-1.08,-1.02,-0.39,-0.48,-0.58,-0.24,-0.05,-0.33,0.51,-0.53,-0.47,0.1,0.39,0.11,0.52,0.34,1.08,1.21)
y<-c(-1.06,-0.81,-0.48,-0.42,-0.30,-0.35,-0.31,-0.18,-0.20,-0.11,-0.09,0.16,0.45,0.53,0.67,0.80,0.87,0.92) 
plot(x,y,lwd=2,xlab="x", ylab="y", pch=16,cex.axis=1.2,cex.lab=1.2)

mean(y)
mean(x)
cov(y,x)*17/18
var(x)*17/18
b<-cov(x,y)/var(x)
b
a<-mean(y)-b*mean(x)
a
lm_mis<-lm(y~x) # stima del modello lineare
plot(x,y,lwd=2,xlab="x", ylab="y", pch=16,cex.axis=1.2,cex.lab=1.2)
abline(lm_mis,lwd=2, col="red")

fitted.values(lm_mis) # valori stimati dal modello
residuals(lm_mis) # residui stimati
sum(residuals(lm_mis)^2)/(length(y)-2) # stima della varianza dei residui
# in alternativa
summary(lm_mis)$sigma^2

summary(lm_mis)$coefficients # matrice con stime, standard error, test e p-value
# intervallo di confidenza per a di livello 0.95
summary(lm_mis)$coefficients[1,1]+c(qt(0.025,16),qt(0.025,16,lower.tail=FALSE))*summary(lm_mis)$coefficients[1,2]
# intervallo di confidenza per b di livello 0.95
summary(lm_mis)$coefficients[2,1]+c(qt(0.025,16),qt(0.025,16,lower.tail=FALSE))*summary(lm_mis)$coefficients[2,2]

var(residuals(lm_mis))*17/18 # varianza residua
var(y)*17/18 # varianza totale
1-var(residuals(lm_mis))/var(y) # indice di determinazione lineare
# alternativa
summary(lm_mis)$r.squared

summary(lm_mis) # sintesi dei principali risultati 

# plot diagnostici; l'opzione "which = " individua il grafico che si vuole rappresentare
par(mfrow=c(1,3))
plot(lm_mis, which = 1, lwd=2, pch = 16, cex.lab=1.2,cex.axis=1.2,caption="")
plot(lm_mis, which = 2, lwd=2, pch = 16, cex.lab=1.2,cex.axis=1.2,caption="")
plot(lm_mis, which = 4, lwd=2, pch = 16, cex.lab=1.2,cex.axis=1.2,caption="")
par(mfrow=c(1,1))

