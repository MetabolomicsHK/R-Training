a=read.table("../data/acgt.txt",head=T)
matplot(a,
        type="o",
        pch=15:18,
        lty=1,
        bg="yellow",
        lwd=2,
        xlab="Position(nt)",ylab="Frequency",
        font=2,
        font.lab=2,
        cex.lab=1.5)
legend("topright",
       pch=15:18,
       lty=1,
       merge=T,
       legend=names(a),
       col=1:4)

