#Numero de genes 
library(ggtree)
library(ggplot2)
library(aplot)

tree <- read.tree("arbolito.newick")
d <- read.csv('genoma_genes.csv')

tree <- ggtree(tree)

d$Strain = as.factor(d$Strain)
p1 <- ggplot(d, aes(genoma, Strain)) + geom_col(aes(fill='blue')) + 
  geom_text(aes(label= genoma, y= Strain)) +
  coord_trans() + theme_classic() + theme(legend.position='none')

p1 %>% insert_left(tree)


