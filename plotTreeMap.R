


a <- read.table("../data/mcp.M113.035600-2.txt", 
                head=TRUE, sep="\t", 
                check.names = FALSE) 
##第一列为基因ID，去掉第一列，把剩余的列保存到x里
x <- a[,-1]
##转置
x <- t(x)
x <- log2(x+1)

cfit <- hclust(dist(x)) 
library(ape)
png("treemap.png",width = 700,height = 700,res = 120)
plot(as.phylo(cfit),type="fan",
     label.offset=0.1,
     show.node.label=TRUE,
     no.margin=TRUE,
     cex=0.8)
dev.off()


plot(as.phylo(cfit),type="un",
     label.offset=0.1,
     show.node.label=TRUE,
     no.margin=TRUE,
     cex=0.8)

plot(as.phylo(cfit),type="phylogram",
     label.offset=0.1,
     show.node.label=TRUE,
     no.margin=TRUE,
     cex=0.8)
