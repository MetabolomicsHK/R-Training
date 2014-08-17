

##########################################################
##5个集合的文氏图
##准备数据
venn.data <- list()
venn.data$s1 <- scan("proteinSet1.txt",what="")
venn.data$s2 <- scan("proteinSet2.txt",what="")
venn.data$s3 <- scan("proteinSet3.txt",what="")
venn.data$s4 <- scan("proteinSet4.txt",what="")
venn.data$s5 <- scan("proteinSet5.txt",what="")

##加载包
library("VennDiagram")

##绘图函数
grob.list <- venn.diagram(x=venn.data,filename=NULL,
                          cex=0.8,cat.cex=2,
                          fill=2:6,##填充色
                          margin=c(0.1,0.1,0.1,0.1),##图形四边的空距
                          )
grid.draw(grob.list)

##########################################################
##2个集合的文氏图
##准备数据
venn.data <- list()
venn.data$s1 <- scan("proteinSet1.txt",what="")
venn.data$s2 <- scan("proteinSet2.txt",what="")

##加载包
library("VennDiagram")

##绘图函数
grob.list <- venn.diagram(x=venn.data,filename=NULL,
                          cex=0.8,cat.cex=2,
                          cat.dist=0.04,##类别名与边的距离
                          fill=c("blue","yellow"),
                          )
grid.draw(grob.list)


##########################################################
##3个集合的文氏图
##准备数据
venn.data <- list()
venn.data$s1 <- scan("proteinSet1.txt",what="")
venn.data$s2 <- scan("proteinSet2.txt",what="")
venn.data$s3 <- scan("proteinSet3.txt",what="")

##加载包
library("VennDiagram")

##绘图函数
grob.list <- venn.diagram(x=venn.data,filename=NULL,
                          cex=0.8,
                          cat.dist=0.04,##类别名与边的距离
                          cat.cex=2, ##类别名字体大小
                          fill=1:3,
                          cat.dist=0.04,##类别名与边的距离
                          )
grid.draw(grob.list)

##########################################################
##4个集合的文氏图
##准备数据
venn.data <- list()
venn.data$s1 <- scan("proteinSet1.txt",what="")
venn.data$s2 <- scan("proteinSet2.txt",what="")
venn.data$s3 <- scan("proteinSet3.txt",what="")
venn.data$s4 <- scan("proteinSet4.txt",what="")

##加载包
library("VennDiagram")

##绘图函数
grob.list <- venn.diagram(x=venn.data,filename=NULL,
                          cex=0.8,cat.cex=2,
                          cat.dist=0.04,##类别名与边的距离
                          label.col="white",##区域类数字的颜色
                          fontface=2,##区域类数字的字体
                          fill=2:5)
grid.draw(grob.list)
