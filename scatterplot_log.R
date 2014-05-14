##读取数据
a<-read.delim("../data/nature10098-s5.txt")
pdf("mRNA-Protein.pdf",height=4,width=4)
par(mgp=c(1.8,0.6,0),mar=c(3,3,1,1))
x<-a$mRNA.copy.number.replicate..molecules.cell.
y<-a$Protein.copy.number.replicate..molecules.cell.
plot(x,y,log="xy",pch=15,bty="l",
     xlab="mRNA copies per cell, replicate",
     ylab="Protein copies per cell, replicate",
     cex=0.7,font.lab=2,font.axis=2,
     xaxt="n",yaxt="n", #不绘制X，Y轴
     ylim=c(10^2,10^7))
axis(1,at=c(1,10^0.5,10,10^1.5,100,10^2.5,1000),
     labels=c("1","","10","","100","","1,000"))
axis(2,at=c(10^2,10^3,10^4,10^5,10^6,10^7),
     labels=c(expression(10*phantom()^2),
                expression(10*phantom()^3),
                expression(10*phantom()^4),
                expression(10*phantom()^5),
                expression(10*phantom()^6), expression(10*phantom()^7)))
##线性拟合
lm.obj<-lm(y~x)
rs<-summary(lm.obj)
rsc<-sprintf("%.2f",rs$r.squared)
text(x=1,y=10^7, pos=4, 
     labels=expression(paste(R*phantom()^2,"=",0.31,sep="")))
dev.off()
