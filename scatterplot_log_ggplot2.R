a <- read.delim("../data/nature10098-s5.txt")
daf <- data.frame(x=a$mRNA.copy.number.replicate..molecules.cell.,
                  y=a$Protein.copy.number.replicate..molecules.cell.)
ggplot(data=daf,aes(x=x,y=y)) + 
  geom_point(alpha=0.2) + ## geom_point(alpha=0.2,colour="blue")
  scale_y_log10() + 
  scale_x_log10() + 
  xlab("mRNA copies per cell, replicate") + 
  ylab("Protein copies per cell, replicate") +
  annotate(geom="text",x=5,y=10^7,label="R^{2}==0.31",parse=TRUE,vjust=1)
