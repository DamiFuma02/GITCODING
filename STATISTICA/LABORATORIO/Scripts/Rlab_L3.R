###### LABORATORIO LEZIONE 3 ######

## Nota: e' necessario installare e caricare il pacchetto "moments" ##

### Studio della dipendenza ###

# Molla #

yy<-c(5.06,5.01,5.12,5.13,5.14,5.16,5.25,5.19,5.24,5.46,5.4,5.57,5.47,5.53,5.61,5.59,5.61,5.75,5.68,5.8)
xx<-c(0,0.2,0.4,0.6,0.8,1,1.2,1.4,1.6,1.8,2,2.2,2.4,2.6,2.8,3,3.2,3.4,3.6,3.8)
plot(xx,yy,xlab="Peso",ylab="Lunghezza",lwd=2,cex.axis=1.2,cex.lab=1.2,ylim=c(5,6),xlim=c(0,4))

# Perni #

perni <- rbind(cbind(rep("M1",10), rep("Fine",10)), cbind(rep("M1",102), rep("Ok",102)),
               cbind(rep("M1",8), rep("Spesso",8)),
               cbind(rep("M2",34), rep("Fine",34)), cbind(rep("M2",161), rep("Ok",161)),
               cbind(rep("M2",5), rep("Spesso",5)),
               cbind(rep("M3",10), rep("Fine",10)), cbind(rep("M3",60), rep("Ok",60)),
               cbind(rep("M3",10), rep("Spesso",10)))
perni <- as.data.frame(perni) # matrice trasformata in data frame
colnames(perni) <- c("Macchinario","Diametro") # nomi delle colonne
freq.rel <- table(perni$Macchinario, perni$Diametro)/apply(table(perni$Macchinario, perni$Diametro),1,sum) # tabella frequenze relative di Diametro per Macchimario
par(mfrow=c(1,3))
barplot(freq.rel[1,],names.arg=c("fine","ok","spesso"),cex.axis=2,cex.names=1.7,main="Macchinario 1", cex.main=2,ylim=c(0,0.9))
barplot(freq.rel[2,],names.arg=c("fine","ok","spesso"),cex.axis=2,cex.names=1.7,main="Macchinario 2", cex.main=2,ylim=c(0,0.9))
barplot(freq.rel[3,],names.arg=c("fine","ok","spesso"),cex.axis=2,cex.names=1.7,main="Macchinario 3", cex.main=2,ylim=c(0,0.9))
par(mfrow=c(1,1))

#  Old Faithful Geyser #

duration<-ifelse(faithful$eruptions < 3,"Corta", "Lunga")
duration<-factor(duration)
faithful1<-data.frame(Pausa=faithful$waiting,Eruzione=duration)
boxplot(Pausa~Eruzione,data=faithful1,col="lightblue")


### Analisi della connessione ###

# Attitudine #

attitudine <- rbind(cbind(rep("S",1),rep("S",1)),cbind(rep("S",3),rep("B",3)),cbind(rep("B",1),rep("S",1)),cbind(rep("B",3),rep("B",3)),
            cbind(rep("B",2),rep("O",2)),cbind(rep("O",2),rep("S",2)),cbind(rep("O",1),rep("B",1)),cbind(rep("O",2),rep("O",2)))
attitudine <- as.data.frame(attitudine) # matrice trasformata in data frame
colnames(attitudine) <- c("X","Y") # nomi delle colonne
attitudine$X<-ordered(attitudine$X, levels=c("S","B","O"))
attitudine$Y<-ordered(attitudine$Y, levels=c("S","B","O"))
str(attitudine)

tab<-table(attitudine$X,attitudine$Y) # tabella di contingenza (distribuzione di frequenza assoluta congiunta)
tab
margin.table(tab,1) # distribuzione marginale di X (frequenza assoluta)
margin.table(tab,2) # distribuzione marginale di Y (frequenza assoluta)
tab[1,] # distribuzione condizionata di Y|X=S (frequenza assoluta)
tab[2,] # distribuzione condizionata di Y|X=B (frequenza assoluta)
tab[3,] # distribuzione condizionata di Y|X=O (frequenza assoluta)
tab[,1] # distribuzione condizionata di X|Y=S (frequenza assoluta)
tab[,2] # distribuzione condizionata di X|Y=B (frequenza assoluta)
tab[,3] # distribuzione condizionata di X|Y=O (frequenza assoluta)

tab/sum(tab) # distribuzione di frequenza relativa congiunta
# in alternativa, prop.table(tab)
margin.table(tab,1)/sum(margin.table(tab,1)) # distribuzione marginale di X (frequenza relativa)
margin.table(tab,2)/sum(margin.table(tab,2)) # distribuzione marginale di Y (frequenza relativa)
tab[1,]/sum(tab[1,]) # distribuzione condizionata di Y|X=S (frequenza relativa)
tab[2,]/sum(tab[2,]) # distribuzione condizionata di Y|X=B (frequenza relativa)
tab[3,]/sum(tab[3,]) # distribuzione condizionata di Y|X=O (frequenza relativa)
# in alternativa, prop.table(tab,1)
tab[,1]/sum(tab[,1]) # distribuzione condizionata di X|Y=S (frequenza relativa)
tab[,2]/sum(tab[,2]) # distribuzione condizionata di X|Y=B (frequenza relativa)
tab[,3]/sum(tab[,3]) # distribuzione condizionata di X|Y=O (frequenza assoluta)
# in alternativa, prop.table(tab,2)

xtot<-margin.table(tab,1) # distribuzione marginale di X
ytot<-margin.table(tab,2) # distribuzione marginale di Y
xtot <- as.matrix(xtot) # vettore interpretato come matrice
ytot <- as.matrix(ytot) # vettore interpretato come matrice
tab_ind <- xtot%*%t(ytot)/sum(xtot) # tabella di contingenza in caso di indipendenza
tab_ind
chisq_obsstat <- sum((tab-tab_ind)^2/tab_ind) # indice di connessione chi-quadrato
chisq_obsstat # in alternativa si puo' usare il comando summary(tab) oppure chisq.test(tab)
chisq_obsstat/(sum(tab)*min(c(length(tab[1,])-1,length(tab[,1])-1))) # indice di connessione chi-quadrato normalizzato

# Casco #

tab_casco<-matrix(c(17,218,130,428),nrow = 2,byrow = TRUE)
tab_casco<-as.table(tab_casco) # per trasformare la matrice in una tabella di contingenza
xtot_casco<-margin.table(tab_casco,1)
ytot_casco<-margin.table(tab_casco,2)
xtot_casco <- as.matrix(xtot_casco) # vettore interpretato come matrice
ytot_casco <- as.matrix(ytot_casco) # vettore interpretato come matrice
tab_ind_casco <- xtot_casco%*%t(ytot_casco)/sum(xtot_casco) # tabella di contingenza in caso di indipendenza
tab_ind_casco
chisq_casco <- sum((tab_casco-tab_ind_casco)^2/tab_ind_casco)
chisq_casco
summary(tab_casco)
chisq_casco/(sum(tab_casco)*min(c(length(tab_casco[1,])-1,length(tab_casco[,1])-1)))


### Dipendenza in media ###

#  Old Faithful Geyser Data #

duration<-ifelse(faithful$eruptions < 3,"Corta", "Lunga")
duration<-factor(duration)
faithful1<-data.frame(Pausa=faithful$waiting,Eruzione=duration)
summary(faithful1$Pausa[faithful1$Eruzione=="Corta"])
summary(faithful1$Pausa[faithful1$Eruzione=="Lunga"])
var(faithful1$Pausa[faithful1$Eruzione=="Corta"])
var(faithful1$Pausa[faithful1$Eruzione=="Lunga"])
library("moments")
skewness(faithful1$Pausa[faithful1$Eruzione=="Corta"])
skewness(faithful1$Pausa[faithful1$Eruzione=="Lunga"])
kurtosis(faithful1$Pausa[faithful1$Eruzione=="Corta"])
kurtosis(faithful1$Pausa[faithful1$Eruzione=="Lunga"])
par(mfrow=c(1,2))
hist(faithful1$Pausa[faithful1$Eruzione=="Corta"],xlim=c(40,100),ylim=c(0,55),xlab="Pausa",ylab=" ",col="lightblue",main="Eruzione corta")
hist(faithful1$Pausa[faithful1$Eruzione=="Lunga"],xlim=c(40,100),ylim=c(0,55),xlab="Pausa",ylab=" ",col="lightblue",main="Eruzione lunga")
par(mfrow=c(1,1))


### Analisi di correlazione ###

# Velocita' #

plot(cars$speed,cars$dist,main=" ",xlab="velocità",ylab="spazio di frenata",pch=16)
cov(cars$speed,cars$dist)*(length(cars[,1])-1)/length(cars[,1]) # covarianza, tenendo conto che cov() divide per n-1 invece che per n
mean(cars$speed*cars$dist)-mean(cars$speed)*mean(cars$dist) # regola di calcolo
cor(cars$speed,cars$dist) # coefficiente di correlazione lineare, in alternativa cov(cars$speed,cars$dist)/sqrt(var(cars$speed)*var(cars$dist))

# Esempio 1 correlazione #

par(mfrow=c(2,2))
set.seed(1) # si fissa il seed della procedura di simulazione
x1<-rnorm(100) # valori per X: simulazione di 100 valori gaussiani 
y1<-x1 # valori per Y
cor(x1,y1) # coefficiente di correlazione lineare
plot(x1,y1,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=1") # scatterplot
abline(lm(y1~x1),lwd=2,col='red') # descrizione del legame lineare tra X e Y
x2<-x1
y2<-x2*0.8+rnorm(100,0,0.5)
cor(x2,y2)
plot(x2,y2,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=0.83")
abline(lm(y2~x2),lwd=2,col='red')
x3<-x1
y3<-x3*0.3+rnorm(100,0,0.5)
cor(x3,y3)
plot(x3,y3,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=0.49")
abline(lm(y3~x3),lwd=2,col='red')
x4<-x1
y4<-x4*0.1+rnorm(100,0,0.5)
cor(x4,y4)
plot(x4,y4,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=0.18")
abline(lm(y4~x4),lwd=2,col='red')

x5<-x1
y5<-x5*(-0.001)+rnorm(100,0,0.5)
cor(x5,y5)
plot(x5,y5,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=-0.003")
abline(lm(y5~x5),lwd=2,col='red')
x6<-x1
y6<-x6*(-0.3)+rnorm(100,0,0.5)
cor(x6,y6)
plot(x6,y6,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=-0.49")
abline(lm(y6~x6),lwd=2,col='red')
x7<-x1
y7<-x7*-0.8+rnorm(100,0,0.5)
cor(x7,y7)
plot(x7,y7,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=-0.83")
abline(lm(y7~x7),lwd=2,col='red')
x8<-x1
y8<--x8
cor(x8,y8)
plot(x8,y8,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2,main="r=-1")
abline(lm(y8~x8),lwd=2,col='red')
par(mfrow=c(1,1))

# Esempio 2 correlazione #

set.seed(1)
x<-rnorm(100)
y<-x^2
cor(x,y)
plot(x,y,pch=1,lwd=2,xlab="x",yla ="y",cex.axis=1.2, cex.lab=1.2)
abline(lm(y~x),lwd=2,col='red')

# Molla #

yy<-c(5.06,5.01,5.12,5.13,5.14,5.16,5.25,5.19,5.24,5.46,5.4,5.57,5.47,5.53,5.61,5.59,5.61,5.75,5.68,5.8)
xx<-c(0,0.2,0.4,0.6,0.8,1,1.2,1.4,1.6,1.8,2,2.2,2.4,2.6,2.8,3,3.2,3.4,3.6,3.8)
mean(xx)
mean(yy)
var(xx)*19/20
var(yy)*19/20
cov(xx,yy)*19/20
cor(xx,yy) # coefficiente di correlazione lineare
cor(xx,yy,method = "spearman") # coefficiente di correlazione di Spearman
cor(xx,yy,method = "kendall") # coefficiente di correlazione di Kendall
yy[19]<-5.01 # valore anomalo
cor(xx,yy)
cor(xx,yy,method = "spearman")
cor(xx,yy,method = "kendall")


### Analisi di regressione ###

# Molla #

yy<-c(5.06,5.01,5.12,5.13,5.14,5.16,5.25,5.19,5.24,5.46,5.4,5.57,5.47,5.53,5.61,5.59,5.61,5.75,5.68,5.8)
xx<-c(0,0.2,0.4,0.6,0.8,1,1.2,1.4,1.6,1.8,2,2.2,2.4,2.6,2.8,3,3.2,3.4,3.6,3.8)
modello<-lm(yy~xx) # stima del modello lineare
modello # stime dei minimi quadrati, oppure in alternativa b<-(cov(xx,yy)*19/20)/(var(xx)*19/20) a<-mean(yy)-b*mean(xx)

plot(xx,yy,xlab="Peso",ylab="Lunghezza",lwd=2,cex.axis=1.2,cex.lab=1.2,ylim=c(5,6),xlim=c(0,4))
abline(modello,lwd=2,col='red') # in alternativa abline(a,b,lwd=2,col='red')
segments(xx,yy,xx,fitted.values(modello), col="blue", lwd=2)
fitted.values(modello) # i valori previsti (stimati) dal modello per Y, in corrispondenza ai valori osservati di X, in alternativa predict(modello)
residuals(modello) # i residui stimati
predict(modello,newdata = data.frame(xx=c(2.5))) # valore previsto dal modello per x=2.5, in alternativa a+b*2.5
predict(modello,newdata = data.frame(xx=c(7.5))) # valore previsto dal modello per x=7.5, in alternativa a+b*7.5

R2<-var(fitted.values(modello))*19/(var(yy)*19) # in alternativa 1-var(residuals(modello))*19/(var(yy)*19) o summary(modello)$r.squared
R2
cor(xx,yy)^2

# Velocita' #

modello_vel<-lm(cars$dist~cars$speed) # in alternativa modello_vel<-lm(dist~speed,data=cars)
modello_vel
plot(cars$speed,cars$dist,main=" ",xlab="velocità",ylab="spazio di frenata",pch=16)
abline(modello_vel,lwd=2,col='red')
fitted.values(modello_vel)
residuals(modello_vel)
predict(modello_vel,newdata = data.frame(speed=c(13,23,28)))
summary(modello_vel)$r.squared

modello_vel1<-lm(sqrt(cars$dist)~cars$speed) # modello con risposta sqrt(Y), in alternativa modello_vel1<-lm(sqrt(dist)~speed,data=cars)
modello_vel1
summary(modello_vel1)$r.squared

par(mfrow=c(1,2))
plot(cars$speed,sqrt(cars$dist),main=" ",xlab="velocità",ylab="radice quadrata spazio di frenata",pch=16)
abline(modello_vel1,lwd=2,col='red')
plot(cars$speed,cars$dist,main=" ",xlab="velocità",ylab="spazio di frenata",pch=16) # dati nella scala originaria
lines(seq(3,27,0.01),(1.2771+0.3224*seq(3,27,0.01))^2,lwd=2,col='red') # retta di regressione riportata nella scala originaria (diventa una parabola)
par(mfrow=c(1,1))

