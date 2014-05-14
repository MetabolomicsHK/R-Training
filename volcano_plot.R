##读取数据
gene_list<-read.delim("../data/volcano_plot_GSE20986.txt")
##查看数据概况
head(gene_list)
par(mar=c(3,3,2,1), mgp=c(1.6,0.6,0), tck=-.01) 
plot(gene_list$logFC, -log10(gene_list$P.Value),
     pch=16,      #设置点的类型
     cex=0.5,     #设置点的大小
     cex.lab=1.2, #设置坐标轴名称的字体大小
     font.lab=2,  #设置坐标轴名称的字体类型，粗体
     col=ifelse(gene_list$P.Value<=0.01 #设置点的颜色
                & abs(gene_list$logFC)>1,"blue","gray"),
     xlim=c(-10, 10), ylim=c(0, 15), #Set limits
     xlab="log2 fold change", 
     ylab="-log10 p-value")#Set axis labels

