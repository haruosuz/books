# p.153
# 6.2
# 6.2.1
# Clear the decks
rm(list = ls())

# libraries I always use.
library(dplyr)
library(ggplot2)
library(ggfortify)

# get the data
growth.moo <- read.csv('datasets-master/growth.csv')

# check out the data
glimpse(growth.moo)
levels(growth.moo$diet)
levels(growth.moo$supplement)

# relevel the supplement column
growth.moo <- mutate(growth.moo, supplement = relevel(supplement, ref="control"))
# check it worked
levels(growth.moo$supplement)

# 6.2.2
# calculate mean and sd of gain for all 12 combinations
sumMoo <- growth.moo %>% group_by(diet, supplement) %>% summarise(meanGrow = mean(gain))
sumMoo

# 6.2.3
ggplot(sumMoo, aes(x = supplement, y = meanGrow)) + 
  geom_point() + 
  theme_bw()

ggplot(sumMoo, aes(x = supplement, y = meanGrow, colour = diet, group = diet)) + 
  geom_point() + 
  geom_line() +
  theme_bw()

# 6.2.5
model_cow <- lm(gain ~ diet * supplement, data = growth.moo)
autoplot(model_cow, smooth.colour = NA)

# 6.2.7
anova(model_cow)
summary(model_cow)

# 6.2.8
# calculate mean and sd of gain for all 12 combinations
sumMoo <- growth.moo %>% group_by(diet, supplement) %>% 
  summarise(meanGrow = mean(gain),
            seGrow = sd(gain)/sqrt(n())
            )

ggplot(sumMoo, aes(x = supplement, y = meanGrow, colour = diet, group = diet)) + 
  geom_point() + 
  geom_line() +
  geom_errorbar(aes(ymin = meanGrow - seGrow,
                    ymax = meanGrow + seGrow), width = 0.1) +
  theme_bw()



