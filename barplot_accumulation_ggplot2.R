h <- read.table("../data/acgt.txt")
h$pos <- 1:nrow(h)
dat <- melt(h,value.name="Frequency",id.vars="pos",variable.name="Base")
p   <- ggplot(data=dat,aes(x=pos,y=Frequency,fill=Base))+
  geom_bar(stat="identity") +
  xlab("Position")


p + scale_fill_manual(values=2:5)+guides(fill=guide_legend(reverse=TRUE))
