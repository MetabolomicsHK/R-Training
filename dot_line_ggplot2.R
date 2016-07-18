a=read.table("../data/acgt.txt",head=T)
library(ggplot2)
library(tidyr)
a$Position <- 1:nrow(a)
dat <- gather(a,"Base","Frequency",-Position)
ggplot(data=dat,mapping=aes(x=Position,y=Frequency,shape=Base,colour=Base))+
  geom_line()+
  geom_point()+
  theme(legend.position=c(1,1),legend.justification=c(1,1))
