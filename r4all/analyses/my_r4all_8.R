# p.226
# 8.2

# Clear the decks
rm(list = ls())

# libraries I always use.
library(dplyr)
library(ggplot2)
library(gridExtra)

# get the data
compensation <- read.csv('datasets-master/compensation.csv')

# check out the data
glimpse(compensation)

# 8.2.1
# BASE scatterplot
eg_scatter <- ggplot(data = compensation, aes(x = Root, y = Fruit)) + geom_point()
eg_box <- ggplot(data = compensation, aes(x = Grazing, y = Fruit)) + geom_boxplot()
eg_scatter + theme_bw()
grid.arrange(eg_scatter, eg_box, nrow = 1)

# 8.4
eg_scatter + xlab("Root Biomass") + ylab("Fruit Production")
eg_scatter + ggtitle("My SUPERB title")
eg_scatter + labs(title = "My useless title", x = "Root Biomass", y = "Fruit Production")
eg_scatter + xlim(0, 20) + ylim(0, 140)

# 8.4.1
eg_scatter + annotate("text", x = c(6,8), y = c(105,25), 
                      label = c("Text up here...", "...and text down here"))

# 8.5
eg_scatter + scale_x_continuous(limits = c(4,11), breaks = 4:11)

ggplot(data = compensation, aes(x = Root, y = Fruit, colour = Grazing)) + geom_point() + 
  scale_colour_manual(values = c(Grazed = "brown", Ungrazed = "green"))

eg_box + scale_y_continuous(breaks = seq(from = 10, to = 150, by = 20), trans = "log10")

# 8.6
# 8.6.1
eg_scatter + 
  theme(
  panel.background = element_rect(fill = NA, colour = "black"),
  panel.grid.minor = element_blank(),
  panel.grid.major = element_line(colour = "lightblue")
  )

# 8.6.2
eg_box + 
  theme(
    axis.title.x = element_text(colour = "cornflowerblue", size = rel(2)),
    axis.text.x = element_text(angle = 45, size = 13, vjust = 0.5))

# 8.6.3
eg_box + scale_x_discrete(limits = c("Ungrazed", "Grazed"), labels = c("Control", "Grazed"))

# 8.6.3
ggplot(compensation, aes(x = Root, y = Fruit, colour = Grazing)) + geom_point() + 
  theme(legend.key = element_rect(fill = NA))

?element_blank

ggplot(compensation, aes(x = Root, y = Fruit, colour = Grazing)) + geom_point() + 
  theme(legend.position = "none")

?theme



