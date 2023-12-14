#Tamaño Genoma
library(ggplot2)
library(dplyr)
library(aplot)
library(ggtree)
setwd("~/Documents/lab_sur/arbol_filo")

tree <- read.tree("arbolito.newick")
d <- read.csv('genoma_genes.csv')
d <- d %>%
  mutate(Strain = stringr::str_replace_all(Strain, " ", "_")) %>%
  rename(label = Strain)

tree <- ggtree(tree)

p1 <- d %>%
  ggplot(aes(y = label, x = genoma)) +
  geom_col(fill='blue') +
  geom_text(aes(label = genoma)) +
  theme_classic() +
  theme(axis.title.y = element_blank())
p1
p1 %>% insert_left(tree)
