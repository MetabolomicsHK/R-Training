h <- read.table("../data/acgt.txt")
h$pos <- 1:nrow(h)
dat <- melt(h,value.name="Frequency",
            id.vars="pos",
            variable.name="Base")
p <- ggplot(data=dat,aes(x=pos,y=Frequency,fill=Base)) +
        geom_bar(stat="identity",position="dodge") +
        xlab("Position")



p+theme(legend.position=c(1,1),
        legend.justification=c(1,1))
