

a <- read.table("../data/mcp.M113.035600-2.txt", ##数据文件名
                head=TRUE, ##第一行为表头
                sep="\t", ##制表符("\t")分割
                ##为TRUE时进行列名检查，如果有空格，会用"."代替,
                ##为FALSE时，不进行列名检查
                check.names = FALSE) 

##第一列为基因ID，去掉第一列，把剩余的列保存到x里
x <- a[,-1]

##取前四个样品为例
x <- x[,1:4]
x <- log2(x)
############## 绘制简单的pair图
pairs(x)


############## 对pair图进行个性化设置
## put histograms on the diagonal
panel.hist <- function(x, ...)
{
    usr <- par("usr"); on.exit(par(usr))
    par(usr = c(usr[1:2], 0, 1.5) )
    x <- x[!is.infinite(x) & !is.na(x)]
    h <- hist(x, nclass=25,plot = FALSE)
    breaks <- h$breaks; nB <- length(breaks)
    y <- h$counts; y <- y/max(y)
    rect(breaks[-nB], 0, breaks[-1], y, col = "cyan", ...)
}

## put (absolute) correlations on the upper panels,
## with size proportional to the correlations.
panel.cor <- function(x, y, digits = 2, prefix = "", cex.cor, ...)
{
    usr <- par("usr"); on.exit(par(usr))
    par(usr = c(0, 1, 0, 1))
    
    useValue <- !is.na(x) & !is.na(y) & !is.infinite(x) & !is.infinite(y)
    x <- x[useValue]
    y <- y[useValue]
    r <- abs(cor(x, y))
    txt <- format(c(r, 0.123456789), digits = digits)[1]
    txt <- paste0(prefix, txt)
    if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
    text(0.5, 0.5, txt, cex = cex.cor * r)
}

## 
panel.point <- function(x, y)
{
    useValue <- !is.na(x) & !is.na(y) & !is.infinite(x) & !is.infinite(y)
    x <- x[useValue]
    y <- y[useValue]
    points(x,y,cex=0.5,pch=16,col=rgb(255/255,69/255,0,0.4))
    lines(smooth.spline(x,y),col="blue")
}


pairs(x,diag.panel = panel.hist,upper.panel = panel.cor,lower.panel = panel.point)

