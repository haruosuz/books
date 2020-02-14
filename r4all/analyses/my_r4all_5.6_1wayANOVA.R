# p.141
# 5.6
# 5.6.1
# Clear the decks
rm(list = ls())

# libraries I always use.
library(dplyr)
library(ggplot2)
library(ggfortify)

# get the data
daphnia <- read.csv('datasets-master/Daphniagrowth.csv')

# check out the data
glimpse(daphnia)

ggplot(daphnia, aes(x = parasite, y = growth.rate)) + 
  geom_boxplot() + 
  theme_bw() + 
  coord_flip()

# 5.6.2
model_grow <- lm(growth.rate ~ parasite, data = daphnia)

# 5.6.3
autoplot(model_grow, smooth.colour = NA)

# 5.6.4
anova(model_grow)

# 5.6.5
?contr.treatment
summary(model_grow)
# get the mean growth rates
sumDat <- daphnia %>% group_by(parasite) %>% summarise(meanGR = mean(growth.rate))
sumDat




