##读数据
a=read.table("../data/replicate_experiment_sRNA.txt",
             head=T)
##设置全局绘图参数
par(mar=c(3,3,2,1),mgp=c(1.6,0.6,0))
##绘制散点图
plot(a[,2],a[,3],log="xy",cex.lab=1.4,
	cex.axis=1.2,font.lab=2,font.axis=2,
	xlab="R1",ylab="RS",pch="+",
	col="red",cex=0.9,axes=F)
##添加X轴
axis(1,at=axTicks(1),labels=as.integer(axTicks(1)))
##添加Y轴
axis(2,at=axTicks(2),labels=as.integer(axTicks(2)))
##添加图头
title(main="R1 VS RS")
##添加边框
box(bty="l")

