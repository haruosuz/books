# 7.2
# p.193
# Clear the decks
rm(list = ls())

# libraries I always use.
library(dplyr)
library(ggplot2)
library(ggfortify)

# get the data
soay <- read.csv('datasets-master/SoaySheepFitness.csv')

# check out the data
glimpse(soay)

# plot window
ggplot(soay, aes(x = body.size, y = fitness)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) +
  geom_smooth(span = 1, colour = "red", se = FALSE) +
  xlab("Body mass (kg)") + ylab("Lifetime fitness")

# 7.4.2
# p.202
soay.glm <- glm(fitness ~ body.size, data = soay, family = poisson)
?family
soay.glm <- glm(fitness ~ body.size, data = soay, family = poisson(link = log))
# 7.4.3
autoplot(soay.glm, smooth.colour = NA)

# 7.4.3
anova(soay.glm)
anova(soay.glm, test = "Chisq")
summary(soay.glm)

# 7.4.5
min.size <- min(soay$body.size)
max.size <- max(soay$body.size)
new.x <- expand.grid(body.size = seq(min.size, max.size, length.out = 1000) )
# generate fits and standard errors at new.x values.
new.y <- predict(object=soay.glm, newdata=new.x, se.fit = TRUE)
new.y <- data.frame(new.y)
head(new.y)
# housekeeping to bring new.x and new.y together
addThese <- data.frame(new.x, new.y)

addThese <- rename(addThese, fitness = fit)

addThese <- mutate(addThese, 
                   lwr = fitness - 1.96 * se.fit,
                   upr = fitness + 1.96 * se.fit)

# check it!
head(addThese)

# p.212
addThese <- data.frame(new.x, new.y)
addThese <- mutate(addThese, 
                   fitness = exp(fit),
                   lwr = exp(fit - 1.96 * se.fit),
                   upr = exp(fit + 1.96 * se.fit))

# check it!
head(addThese)

# new the plot on the correct scale
ggplot(soay, aes(x = body.size, y = fitness)) + 
  geom_point(size = 3, alpha = 0.5) + 
  geom_smooth(data = addThese, aes(ymin = lwr, ymax = upr), stat = 'identity') +
  theme_bw()


