# https://r4ds.had.co.nz/transform.html
# 5 Data transformation
# 3章　dplyrによるデータ変換

## 5.1 Introduction
### 5.1.1 Prerequisites
library(nycflights13)
library(tidyverse)
### 5.1.2 nycflights13
flights
#View(flights) # To see the whole dataset

## 5.2 Filter rows with filter()
## 3.2　filter()で行にフィルタにかける
filter(flights, month == 1, day == 1)
jan1 <- filter(flights, month == 1, day == 1)
(dec25 <- filter(flights, month == 12, day == 25))

## 5.3 Arrange rows with arrange()
arrange(flights, year, month, day)
arrange(flights, desc(dep_delay))

df <- tibble(x = c(5, 2, NA))
arrange(df, x)
arrange(df, desc(x))

## 5.4 Select columns with select()
# Select columns by name
select(flights, year, month, day)
# Select all columns between year and day (inclusive)
select(flights, year:day)
# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))
#?select
rename(flights, tail_num = tailnum)
select(flights, time_hour, air_time, everything())

## 5.5 Add new variables with mutate()
flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60
)
# Note that you can refer to columns that you’ve just created:
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)
# If you only want to keep the new variables, use transmute():
transmute(flights,
          gain = dep_delay - arr_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)
### 5.5.1 Useful creation functions
transmute(flights,
          dep_time,
          hour = dep_time %/% 100,
          minute = dep_time %% 100
)

(x <- 1:10)
lag(x)
lead(x)
# ???????

## 5.6 Grouped summaries with summarise()
summarise(flights, delay = mean(dep_delay, na.rm = TRUE))

by_day <- group_by(flights, year, month, day)
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))

### 5.6.1 Combining multiple operations with the pipe
by_dest <- group_by(flights, dest)
delay <- summarise(by_dest,
                   count = n(),
                   dist = mean(distance, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE)
)
delay <- filter(delay, count > 20, dest != "HNL")

# It looks like delays increase with distance up to ~750 miles 
# and then decrease. Maybe as flights get longer there's more 
# ability to make up delays in the air?
ggplot(data = delay, mapping = aes(x = dist, y = delay)) +
  geom_point(aes(size = count), alpha = 1/3) +
  geom_smooth(se = FALSE)

# There’s another way to tackle the same problem with the pipe, %>%:
delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>% 
  filter(count > 20, dest != "HNL")


### 





