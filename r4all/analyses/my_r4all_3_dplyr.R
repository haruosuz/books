# 3
# p.82
library(dplyr)
library(ggplot2)
rm(list = ls())
compensation <- read.csv("datasets-master/compensation.csv")
glimpse(compensation)
summary(compensation)
# p.84
# 3.3.1
select(compensation, Fruit) # use the Fruit column
select(compensation, -Fruit) # that is a minus sign
# 3.3.2
slice(compensation, 2)
slice(compensation, 2:10)
slice(compensation, c(2, 3, 10))
# 3.3.3
with(compensation, Fruit > 80)
filter(compensation, Fruit > 80)
filter(compensation, Fruit > 80 | Fruit < 20)
# 3.3.4
lo_hi_fruit <- filter(compensation, Fruit > 80 | Fruit < 20)
lo_hi_fruit
# 3.3.5
# p.90
# 3.4
head(compensation)
compensation <- mutate(compensation, logFruit = log(Fruit))
head(compensation)
# p.92
# 3.5
arrange(compensation, Fruit)
# 3.6
# p.93
compensation %>% filter(Fruit > 80) %>% select(Root)
# 3.7.2
# p.96
mean.fruit <- summarize(
  group_by(compensation, Grazing),
          meanFruit = mean(Fruit))
# 3.7.3
compensation %>% group_by(Grazing) %>% summarise(meanFruit = mean(Fruit))
# 3.7.4
compensation %>% group_by(Grazing) %>% summarise(meanFruit = mean(Fruit), sdFruit = sd(Fruit))
# p.99
subset(compensation, Fruit > 80) # filter(compensation, Fruit > 80)
transform(compensation, logFruit = log(Fruit)) # mutate(compensation, logFruit = log(Fruit))
aggregate(Fruit ~ Grazing, data = compensation, FUN = mean)
tapply(compensation$Fruit, list(compensation$Grazing), mean)
# p.100
compensation_mean_centred <- compensation %>% 
  group_by(Grazing) %>% mutate(Fruit_minus_mean = Fruit - mean(Fruit))

summarize(group_by(compensation_mean_centred, Grazing), mean(Fruit_minus_mean))

library(broom)
compensation_lms <- compensation %>% group_by(Grazing) %>% do(tidy(lm(Fruit ~ Root, data=.)))




