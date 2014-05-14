a <- read.table("../data/lengthVSnumber.txt")
names(a) <- c("Length","Number")
a$ratio <- paste(sprintf("%.2f",a[,2]/sum(a[,2])*100),"%",sep="")

ggplot(a,aes(x=factor(Length),y=Number)) + 
  geom_bar(stat="identity",width=0.5, fill="white", colour="darkgreen") +
  geom_text(aes(label=ratio),vjust=-0.2)+
  xlab("Length(nt)") + 
  ylab("Number of small RNAs")
