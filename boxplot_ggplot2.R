a<-read.delim("../data/ng.864-S2.txt")
##数据预处理
d1<-data.frame(sample="Sperm",meth_ratio=a$Sperm.Rep1..Cs)
d2<-data.frame(sample="GV",meth_ratio=a$GV.Rep1..Cs)
d3<-data.frame(sample="MII",meth_ratio=a$MII.Rep1..Cs)
d4<-data.frame(sample="X3aWT",meth_ratio=a$X3aWT.Rep1..Cs)
md<-rbind(d1,d2)
md<-rbind(md,d3)
md<-rbind(md,d4)

md<-md[ md[,2]!=0,]
library("ggplot2")
ggplot(data=md,mapping=aes(x=sample,y=meth_ratio))+
  geom_boxplot(fill="red",width=0.5)+
  xlab("Sample")+
  ylab("Percent(%)")
  
