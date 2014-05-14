

##读数据
a<-read.table("../data/msb201128-s8.txt",skip=3)

ggplot(data=a,aes(x=V1)) +
  geom_histogram(bin=5,colour="black",fill="white") +
  xlab("mRNA/cell") + 
  ylab("Frequency") +
  annotate(geom="text",x=200,y=25,label="Gata3",face="bold",size=7)
