##载入R包
library("gplots")
##读数据
a<-read.table("../data/nprot.2009.97_for_heatmap.txt",head=T,sep="\t")
sample.class<-scan("../data/nprot.2009.97_for_heatmap_sample_class.txt",what="")
##定义聚类图颜色
hmColors = colorRampPalette(c('white', 'darkblue'))(256) 
##设置边条颜色
typeColors = c('Lu'='firebrick1','BaA'='dodgerblue2','BaB'='darkblue')
sideColors = typeColors[sample.class] 
sideColors[is.na(sideColors)] = 'grey' 
##绘制热图
heatmap.2(as.matrix(a),   ##需要矩阵类型数据,
                          ##as.matrix可把数据框类型
                          ##数据转换成matrix类型数据
          #col=hmColors,  ##设置聚类图颜色,也可以用redgreen(255)
          col=redgreen(255),
          trace='none', ##
          key=T,
          ColSideColors = sideColors)

library("pheatmap")
pheatmap(a,border_color=NA,color=hmColors)
pheatmap(a,border_color=NA,color=redgreen(255))
sample.class[is.na(sample.class)] <- "N"
anno <- data.frame(Class=sample.class); row.names(anno) <- names(a)
pheatmap(a,border_color=NA,color=redgreen(255),annotation = anno)



