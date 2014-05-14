a<-read.table("lengthVSnumber.txt")
#pdf("lengthVSnumber.pdf")
bar=barplot(a[,2],ylim=c(0,1.2*max(a[,2])),
	cex.lab=1.5,names.arg=a[,1],
	xlab="Length(nt)",font.lab=1.5,
  ylab="Number of small RNAs",
	space=0.9,col="blue",
	main="Length distribution")
ratio=paste(sprintf("%.2f",
	a[,2]/sum(a[,2])*100),"%",sep="")
text(bar,a[,2],labels=ratio,adj=c(0.5,0),
	cex=0.8,font=2,pos=3)
abline(h=axTicks(2),lty=2,col=rgb(0,0,0,0.5));
box()
