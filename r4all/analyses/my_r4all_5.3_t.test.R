# p.126
# 5.3

# Clear the decks
rm(list = ls())

# libraries I always use.
library(tidyverse)

# get the data
ozone <- read.csv('datasets-master/ozone.csv')

# check out the data
glimpse(ozone)

# 5.3.2
ggplot(ozone, aes(x = Ozone)) + geom_histogram(binwidth = 10) + 
  facet_wrap(~ Garden.location, ncol = 1) + theme_bw()

ozone %>% group_by(Garden.location) %>% summarise(mean.Ozone = mean(Ozone), sd.Ozone = sd(Ozone))

# 5.3.3
t.test(Ozone ~ Garden.location, data = ozone)
var.test(Ozone ~ Garden.location, data = ozone)



