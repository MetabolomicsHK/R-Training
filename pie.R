dat=read.table("../data/pie.txt")
ratio=sprintf("%.2f",100*dat[,2]/sum(dat[,2]))
ratio=paste(ratio,"%",sep="")
label=paste(dat[,1],ratio,sep="\n")

pdf("pie.pdf",width=3,height=3)
par(family="serif")
pie(dat[,2],
    col=1:6,
    border="purple",
    labels=label,
    cex=0.5,
    cex.main=0.6,
    )
title(main="Pie chart for miRNAs uniq",
    line=0.3,
    cex.main=0.6)
dev.off()




