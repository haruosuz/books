# p.132
# 5.5
# 5.5.1

# Clear the decks
rm(list = ls())

# libraries I always use.
library(tidyverse)

# get the data
plant_gr <- read.csv('datasets-master/plant.growth.rate.csv')

# check out the data
glimpse(plant_gr)

ggplot(plant_gr, aes(x = soil.moisture.content, y = plant.growth.rate)) + 
  geom_point() + 
  ylab("Plant Growth Rate (mm/week)") + 
  theme_bw()

# 5.5.3
model_pgr <- lm(plant.growth.rate ~ soil.moisture.content, data = plant_gr)

# 5.5.4
#plot(model_pgr)
#install.packages("ggfortify")
library(ggfortify)
autoplot(model_pgr, smooth.colour = NA)

# 5.5.5
anova(model_pgr)
summary(model_pgr)

# 5.5.6
ggplot(plant_gr, aes(x = soil.moisture.content, y = plant.growth.rate)) + 
  geom_point() + 
  geom_smooth(method = 'lm') + 
  ylab("Plant Growth Rate (mm/week)") + 
  theme_bw()




