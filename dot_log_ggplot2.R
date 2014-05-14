
a <- read.delim("../data/replicate_experiment_sRNA.txt")
library("ggplot2")
ggplot(data=a,aes(x=R1,y=RS)) + 
  geom_point(alpha=0.2) +  ##geom_point(alpha=0.2,colour="red") 
  scale_y_log10() + 
  scale_x_log10() +
  ggtitle(label="R1 VS RS")
