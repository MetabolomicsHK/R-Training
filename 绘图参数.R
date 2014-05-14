par(mgp=c(1.6,0.6,0),mar=c(3,3,2,1))
X=1:10;Y=1:10
line_type=c(1:6)
line_width=seq(from=0.6,by=0.6,length=6)
plot(X,Y,col="blue",pch=16,type="n",main="line type and line width",font.lab=2,cex.lab=1.2)
abline(h=3:8,lty=line_type,col=colors()[120:126],lwd=line_width)
text(3:8,3:8,adj=0,labels=paste("lty=",line_type,",lwd=",line_width),col="red",cex=1.2,font=3)
