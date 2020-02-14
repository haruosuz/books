# p.166
# 6.3
# 6.3.1
# Clear the decks
rm(list = ls())

# libraries I always use.
library(dplyr)
library(ggplot2)
library(ggfortify)

# get the data
limp <- read.csv('datasets-master/limpet.csv')

# check out the data
glimpse(limp)

# 6.3.2
# plot window
ggplot(limp, aes(x = DENSITY, y = EGGS, colour = SEASON)) + 
  geom_point() + 
  scale_color_manual(values = c(spring = "green", summer = "red")) +
  theme_bw()

# p.171
# 6.3.4
limp.mod <- lm(EGGS ~ DENSITY * SEASON, data = limp)
names(limp.mod)

# 6.3.5
autoplot(limp.mod, smooth.colour = NA)

# 6.3.6
anova(limp.mod)

# 6.3.7
summary(limp.mod)

# 6.3.8
expand.grid(FIRST = c("A", "B"), SECOND = c(1, 2))

predict(limp.mod)

# make some new DENSITY values at which we request predictions
new.x <- expand.grid(DENSITY = seq(from = 8, to = 45, length.out = 10) )

new.x <- expand.grid(DENSITY = seq(from = 8, to = 45, length.out = 10),
                     SEASON = levels(limp$SEASON) )
head(new.x)

# generate fits and confidence interval at new.x values.
?predict.lm
new.y <- predict(object=limp.mod, newdata=new.x, interval = 'confidence')
head(new.y)

# housekeeping to bring new.x and new.y together note that we
# rename fit to be EGGS matching the original data
addThese <- data.frame(new.x, new.y)
addThese <- rename(addThese, EGGS = fit)
# check it!
head(addThese)

# new.x with DENSITY set to mean
new.x <- expand.grid(DENSITY = mean(limp$DENSITY),
                     SEASON = levels(limp$SEASON) )
# predictions
predEgg <- predict(object=limp.mod, newdata=new.x)
# housekeeping
EggAtMeanDens <- data.frame(new.x, predEgg)
EggAtMeanDens

# p.183
# 6.3.9
ggplot(limp, aes(x = DENSITY, y = EGGS, colour = SEASON)) + 
  geom_point(size = 5) + 
  geom_smooth(data = addThese, aes(ymin = lwr, ymax = upr, fill = SEASON), stat = 'identity') +
  scale_color_manual(values = c(spring = "green", summer = "red")) +
  scale_fill_manual(values = c(spring = "green", summer = "red")) +
  theme_bw()



