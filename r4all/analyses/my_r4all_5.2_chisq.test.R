# 5.2
# p.120

# Clear the decks
rm(list = ls())

# libraries I always use.
library(tidyverse)

# get the data
lady <- read.csv('datasets-master/ladybirds_morph_colour.csv')

# check out the data
glimpse(lady)

# 5.2.2
totals <- lady %>% group_by(Habitat, morph_colour) %>% summarize(total.number = sum(number))
# 5.2.4
ggplot(totals, aes(x = Habitat, y = total.number, fill = morph_colour)) + 
  geom_bar(stat = 'identity', position = 'dodge') + 
  scale_fill_manual(values = c(black = "black", red = "red"))

# 5.2.6
lady.mat <- xtabs(number ~ Habitat + morph_colour, data = lady)
chisq.test(lady.mat)
lady.chi <- chisq.test(lady.mat)
names(lady.chi)
lady.chi$expected


