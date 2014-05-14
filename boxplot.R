##读取数据
a<-read.delim("../data/ng.864-S2.txt")
##数据预处理
d1<-data.frame(sample="Sperm",meth_ratio=a$Sperm.Rep1..Cs)
d2<-data.frame(sample="GV",meth_ratio=a$GV.Rep1..Cs)
d3<-data.frame(sample="MII",meth_ratio=a$MII.Rep1..Cs)
d4<-data.frame(sample="X3aWT",meth_ratio=a$X3aWT.Rep1..Cs)

md<-rbind(d1,d2)
md<-rbind(md,d3)
md<-rbind(md,d4)
##绘图
pdf("boxplot.pdf",width=3.1,height=3.4)
par(mgp=c(1.6,0.6,0),mar=c(3,3,1,1))
boxplot(md[md[,2]!=0,2]~md[md[,2]!=0,1],
        boxwex = 0.3,
        col="red",
        cex=0.6,
        xlab="Sample",ylab="Percent(%)")
dev.off()
