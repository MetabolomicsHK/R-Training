par(mgp=c(1.6,0.6,0),mar=c(3,3,2,1))
X=1:10;Y=1:10
cex_type=c(0.7,0.8,0.9,1,2,3,4,5,6,7)
plot(X,Y,col="blue",pch=16,
	cex=cex_type,    #绘图符号大小，1是正常大小
	cex.axis=1.1,    #坐标轴刻度数字大小	
	cex.lab=1.2,     #坐标轴标签大小
	cex.main=1.4,    #标题文字大小
	#cex.sub=1.3,    #副标题文字大小
	font.axis=3,     #坐标轴刻度数字字体，斜体
	font.lab=2,      #坐标轴标签字体，粗体
	font.main=4,     #标题字体，粗斜体
	#font.sub=1,     #副标题字体，正常
	main="字体",
	xlim=c(1,12),ylim=c(1,12))
text(X,Y,adj=0,labels=paste("cex=",cex_type),col="red",cex=1.2,font=3)
