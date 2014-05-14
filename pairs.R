x <- read.table("../data/cluster.txt")
pairs(x[,-1],
      pch=21,
      bg="gray",col="yellow",
      font.axis=2,
      cex.axis=1.2)
