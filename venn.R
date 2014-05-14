library(plotrix)
x=0:10
y=seq(0,10,length=11)
pdf("venn.pdf",width=3,height=4.5)
plot(x,y,type="n",axes=F,xlab="",ylab="")
draw.circle(2,5,2,col=rgb(154/255,0/255,205/255,0.6))
draw.circle(4,5,2,col=rgb(21/255,3/255,252/255,0.6))
text(1,5,labels="10.12%",col="white",font=2,cex=0.3)
text(5,5,labels="40.38%",col="white",font=2,cex=0.3)
text(3,5,labels="49.5%",col="white",font=2,cex=0.3)
legend(6.2,5,pch=15, xjust=0,yjust=0.5,bty="n",cex=0.3,
       col=c(rgb(154/255,0/255,205/255),rgb(74/255,2/255,233/255),rgb(21/255,3/255,252/255)),
       legend=c("sample 1 uniq","sample 1 & sample 2","sample 2 uniq"))
text(3.5,6.5,labels="Venn chart for uniq_sRNAs",font=2,cex=0.5)
dev.off()

