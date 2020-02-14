# p.90
# my first dplyr script

# Clear R's brain
rm(list = ls())

# libraries I need (no need to install...)
library(dplyr)
library(ggplot2)

# get the data
compensation <- read.csv('datasets-master/compensation.csv')

# quick summary
summary(compensation)

# using dplyr; always takes and gives a data frame

# columns
select(compensation, Fruit) # gets the Fruit column
select(compensation, -Root) # take Root column out from data

# rows
slice(compensation, c(2, 3, 10)) # get 2nd, 3rd & 10th rows

# gets rows for each condition, and assigns to an object
lo_hi_fruit <- filter(compensation, Fruit > 80 | Fruit < 20)

# run this to see what the above line 'saved' for later use.
lo_hi_fruit


