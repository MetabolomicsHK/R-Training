
a <- read.table("../data/mcp.M113.035600-2.txt", ##数据文件名
                head=TRUE, ##第一行为表头
                sep="\t", ##制表符("\t")分割
                ##为TRUE时进行列名检查，如果有空格，会用"."代替,
                ##为FALSE时，不进行列名检查
                check.names = FALSE) 

##第一列为基因ID，去掉第一列，把剩余的列保存到x里
x <- a[,-1]

##对x进行log转换
x <- log2(x+1)

##计算相关系数
corX <- cor(x)

######## 制相关性热图
library(pheatmap)
## border_color=NA 表示去掉边框颜色
pheatmap(corX,border_color = NA) 
