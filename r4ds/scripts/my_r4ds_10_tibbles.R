# https://r4ds.had.co.nz/tibbles.html
# 10 Tibbles
# 7章　tibbleのtibble

### 10.1.1 Prerequisites
### 7.1.1　準備するもの
library(tidyverse)

## 10.2 Creating tibbles
## 7.2　tibbleを作る
as_tibble(iris)

tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

tb <- tibble(
  `:)` = "smile", 
  ` ` = "space",
  `2000` = "number"
)
tb

## 10.3 Tibbles vs. data.frame
## 7.3　tibbleとdata.frame
### 10.3.1 Printing
### 7.3.1　画面表示
tibble(
  a = lubridate::now() + runif(1e3) * 86400,
  b = lubridate::today() + runif(1e3) * 30,
  c = 1:1e3,
  d = runif(1e3),
  e = sample(letters, 1e3, replace = TRUE)
)

nycflights13::flights %>% 
  print(n = 10, width = Inf)

#options(tibble.print_min = Inf)
#options(tibble.width = Inf)
#package?tibble

nycflights13::flights %>% 
  View()

### 10.3.2 Subsetting
### 7.3.2　要素抽出
df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

# Extract by name
df$x
df[["x"]]

# Extract by position
df[[1]]

df %>% .$x
df %>% .[["x"]]

## 10.4 Interacting with older code
## 7.4　古いコードとの関わり
class(as.data.frame(tb))

