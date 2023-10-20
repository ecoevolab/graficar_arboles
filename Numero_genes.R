#Numero de genes 
library(ggplot2)
library(dplyr)
library(aplot)
library(ggtree)



tree <- read.tree("../../arbol_filo/arbolito.newick")
d <- read.csv('../../arbol_filo/genoma_genes.csv')
d <- d %>%
  mutate(Strain = stringr::str_replace_all(Strain, " ", "_")) %>%
  rename(label = Strain)

tree <- ggtree(tree)

p1 <- d %>%
  ggplot(aes(y = label, x = genes)) +
  geom_col(fill='blue') +
  geom_text(aes(label = genes)) +
  theme_classic() +
  theme(axis.title.y = element_blank())
p1
p1 %>% insert_left(tree)




