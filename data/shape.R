gruppi<-rep(c(0,1),50)
condizione<-rep(c(0,1),each=50)
sguardi<-round(rnorm(100,10,2))

shapes<-as.data.frame(cbind(gruppi,condizione,sguardi))

shapes$sguardi<-ifelse(shapes$condizione==1 & shapes$gruppi==1,shapes$sguardi+2,shapes$sguardi)
shapes$gruppi<-factor(shapes$gruppi)
shapes$condizione<-factor(shapes$condizione)

contrasts(shapes$gruppi)<-contr.sum(2)/2
contrasts(shapes$gruppi)

contrasts(shapes$condizione)<-contr.sum(2)/2
contrasts(shapes$condizione)
mod<-lm(sguardi~gruppi*condizione,data=shapes)
summary(mod)
tt<-tapply(shapes$sguardi,list(shapes$condizione),mean)
s
