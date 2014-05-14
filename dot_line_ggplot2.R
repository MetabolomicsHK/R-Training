

a=read.table("../data/acgt.txt",head=T)
library(ggplot2)
library(reshape2)
a$Position <- 1:nrow(a)
dat <- melt(a,value.name="Frequency",id.vars="Position",variable.name="Base")
ggplot(data=dat,mapping=aes(x=Position,y=Frequency,shape=Base,colour=Base))+
  geom_line()+
  geom_point()+
  theme(legend.position=c(1,1),legend.justification=c(1,1))
