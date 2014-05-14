data(ToothGrowth)
head(ToothGrowth)
tg.m <-tapply(ToothGrowth$len, ToothGrowth$dose, mean)
tg.sd <-tapply(ToothGrowth$len, ToothGrowth$dose, sd)
tg<-cbind(tg.m,tg.sd)
tg<-as.data.frame(tg)
tg$Dose <- c(0.5,1,2)

ggplot(tg, aes(x=factor(Dose), y=tg.m)) + 
    geom_bar(stat="identity", size=.2, width=0.3) +
    geom_errorbar(aes(ymin=tg.m-tg.sd, ymax=tg.m+tg.sd),
        size=0.3, width=.2)+
    xlab("Dose") +
    ylab("Growth") 
