# 4
# p.105
# 4.2.1
# libraries I need (no need to install...)
library(dplyr)
library(ggplot2)

# clear the decks
rm(list = ls())

# get the data
compensation <- read.csv('datasets-master/compensation.csv')

# check out the data
glimpse(compensation)

# make my first ggplot picture
ggplot(compensation, aes(x = Root, y = Fruit)) + 
  geom_point()

# 4.2.3
ggplot(compensation, aes(x = Root, y = Fruit, colour = Grazing, shape = Grazing)) + 
  geom_point(size = 5) + 
  xlab("Root Biomass") + 
  ylab("Fruit Production") + 
  theme_bw()

# 4.3
# Beyond bar and line graphs: time for a new data presentation paradigm. https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002128
ggplot(compensation, aes(x = Grazing, y = Fruit)) + 
  geom_boxplot() + 
  geom_point(size = 4, colour = 'lightgrey', alpha = 0.5) + 
  xlab("Grazing treatment") + 
  ylab("Fruit Production") + 
  theme_bw()

# 4.4
# p.113
ggplot(compensation, aes(x = Fruit)) + geom_histogram(bins = 10)
ggplot(compensation, aes(x = Fruit)) + geom_histogram(binwidth = 15)
ggplot(compensation, aes(x = Fruit)) + geom_histogram(binwidth = 15) + facet_wrap(~Grazing)
# 4.5
ggsave("ThatCoolHistogtramOfFruit.png")


