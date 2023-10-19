#Numero de genes 
library(ggtree)
library(ggplot2)
library(aplot)

tree <- read.tree("arbolito.newick")
d <- read.csv('genoma_genes.csv')

tree <- ggtree(tree)

p1 <- ggplot(d, aes(genes, Strain)) + geom_col(aes(fill='blue')) + 
  geom_text(aes(label= genes, y= Strain)) +
  coord_trans()+ theme_classic() + theme(legend.position='none')

p1 %>% insert_left(tree)

