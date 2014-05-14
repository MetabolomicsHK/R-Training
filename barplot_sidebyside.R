h =read.table("../data/acgt.txt",head=T)
par(mgp=c(1.6,0.6,0),mar=c(3,3,1,1))
barplot(t(as.matrix(h)),
        ylim=c(0,1),
        xlab="Position",
        ylab="Frequency",
        main="Homo sapiens",
        col=rainbow(4),
        beside=TRUE,
        font=2,cex.lab=1.4)
box()
legend("topright",
       legend=c("A","G","C","T"),
       pch=15,
       col=rainbow(4))

