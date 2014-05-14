##读取数据
dat=read.table("../data/pie3D.txt")
##计算比例
ratio=sprintf("%.2f",100*dat[,2]/sum(dat[,2]))
ratio=paste(ratio,"%",sep="")
label=paste(dat[,1],ratio,sep="\n")
##载入R包
library("plotrix")

##保存为pdf
pdf("pie3D.pdf",height=4,width=4)
##设置全局图形参数
par(mgp=c(1.6,0.6,0),mar=c(3,3,1,1))
##绘制3维饼图
pie3D(dat[,2],col=1:6,
      main="Pie3D chart for miRNAs uniq",
      border="purple", #设置边框颜色
      labels=label, #设置标签
      labelcex=0.8, #标签字体的大小
      explode=0,  #各部分分开比例，默认为0
      radius=1) #半径

dev.off()
