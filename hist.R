##读数据
a<-read.table("../data/msb201128-s8.txt",skip=3)
##查看数据概况
head(a)
##设置画图参数
par(mgp=c(1.6,0.6,0))
##利用hist绘制频率分布图,图形高：350，宽：600
hist(a[,1],nclass=50,
     xlab="mRNA/cell",
     cex.lab=1.2,
     main="")
##添加文字
text(locator(1),labels="Gata3",font=2)
hist(a[,2],nclass=50,
     xlab="mRNA/cell",
     cex.lab=1.2,main="")
text(locator(1),labels="Tbx21",font=2)
##Inset histogram
hist(a[a[,2]>1,2],nclass=40,
     xlab="",cex.lab=1.2,main="")

