set.seed(8) 
#产生1000个服从mean=10,sd=10的随机数
x=rnorm(1000,10,10) 
x=x[x<0] #去掉x里大于等于0的元素
#设置全局图形参数
par(mgp=c(1.6,0.6,0))
par(mar=c(3,3,1,1)) 
#绘制频率直方图
hist(x,
     main="Hist of X",
     xlab="X",   #x轴的名称
     nclass=30,  #区间数量
     freq=F,     #是否绘制频数分布
     font=2,cex.lab=1.2) #字体设置 
#添加线条
lines(density(x),
      col="blue",lwd=2) 
lines(-30:0,
      dnorm(-30:0,mean(x),sd(x)),
      col="red",lwd=2) #同上
#添加图例
legend("topleft",
       pch=c(15,-1,-1),
       lty=c(-1,1,1),
       col=c("gray","blue","red"),
       legend=c("Histogram",
                "Density line",
                "Normal density line"))




