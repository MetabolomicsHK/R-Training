

a <- read.table("../data/mcp.M113.035600-2.txt", 
                head=TRUE, sep="\t", 
                check.names = FALSE) 
##第一列为基因ID，去掉第一列，把剩余的列保存到x里
x <- a[,-1]
##转置
x <- t(x)
x <- log2(x+1)
##加载包，利用这个包里的pca函数进行PCA分析
library(pcaMethods)
##进行PCA分析
pres <- pca(x,scale = "pareto",center = TRUE,nPcs = 3)
##提取主成分的贡献率
xlab <- paste("PC1",sprintf("(%.2f%%)",100*pres@R2[1]))
ylab <- paste("PC2",sprintf("(%.2f%%)",100*pres@R2[2]))
zlab <- paste("PC3",sprintf("(%.2f%%)",100*pres@R2[3]))
##绘制3维PCA的得分图
plotData <- data.frame(x=pres@scores[,1],
                       y=pres@scores[,2],
                       z=pres@scores[,3],
                       sample=names(a)[-1])
library(scatterplot3d)
s3d <- scatterplot3d(plotData$x,plotData$y,plotData$z,type="h",angle = 24,
                     col.grid="lightblue",lty.hplot=2,pch="",color="gray",
                     xlab = xlab,
                     ylab = ylab,
                     zlab = zlab,
)#color = as.numeric(as.factor(plotData$class)))
s3d$points(plotData$x,plotData$y,plotData$z, pch = 1,col = 2)
s3d.coords <- s3d$xyz.convert(plotData$x,plotData$y,plotData$z)
text(s3d.coords$x, s3d.coords$y, labels = plotData$sample,
     pos = 4,cex=0.7)

