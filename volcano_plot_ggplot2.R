gene_list<-read.delim("../data/volcano_plot_GSE20986.txt")

ggplot(data=gene_list,mapping=aes(x=logFC,y=-log10(P.Value))) +
  geom_point(alpha=0.3,
             colour=ifelse(gene_list$P.Value<=0.01 #设置点的颜色
                    & abs(gene_list$logFC)>1,"blue","gray"))
