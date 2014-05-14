set.seed(8) 
#产生1000个服从mean=10,sd=10的随机数
x=rnorm(1000,10,10) 
x=x[x<0] #去掉x里大于等于0的元素
dat <- data.frame(x=x)
##ggplot(data=dat,mapping=aes(x=x,y=..density..)) +
ggplot(data=dat,mapping=aes(x=x)) +
  geom_histogram(bin=0.5,colour="black",fill="white")

##直接提供向量
ggplot(data=NULL,mapping=aes(x=x)) +
  geom_histogram(bin=0.5,colour="black",fill="white")
