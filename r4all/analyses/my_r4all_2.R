# https://www.yodosha.co.jp/yodobook/book/9784758120951/
rm(list = ls())
# 第2章 データを読み込む
## 2.1.読み込むデータを用意する
# p.62
## 2.2.R にデータを読み込む
url <- "https://github.com/R4All/datasets/archive/master.zip"
filename <- basename(url)
#download.file(url = url, destfile = filename); unzip(zipfile = filename)
# p.66
### 2.2.3
#file.choose()
# p.67
compensation <- read.csv("datasets-master/compensation.csv")
## 2.3.読み込まれているのが自分のデータかどうか、ちゃんと確認する
names(compensation)
head(compensation)
dim(compensation)
str(compensation)
# p.69
# 2.3.1
# dplyr viewing of data
library(dplyr)

# glimpse and tbl_df
glimpse(compensation)
tbl_df(compensation)

## 2.4.ありがちなトラブル
## 2.5.まとめ
## 付録2.応用編―うまく整理されていないデータをどうにかするには


# p.73
nasty.format <- read.csv("datasets-master/nasty format.csv")
str(nasty.format)

# p.74
library(dplyr)
nasty.format <- filter(nasty.format, Bottle != "")
glimpse(nasty.format)

# p.75
library(tidyr)
tidy_data <- gather(nasty.format, Date, Abundance, 4:11)
glimpse(tidy_data)

# p.76
library(stringr)
#tidy_data <- mutate(tidy_data, Date = substr(Date, 2, 20))
tidy_data <- mutate(tidy_data, Date = str_sub(Date, 2, 20))
unique(tidy_data$Date)
# p.77
library(lubridate)
tidy_data <- mutate(tidy_data, Date = dmy(Date))
glimpse(tidy_data)
str(tidy_data)
#
library(ggplot2)
ggplot(tidy_data, aes(x = Date, y = Abundance)) + 
  geom_point() + facet_wrap(~Bottle) +
  theme(axis.text.x = element_text(angle = 90)) # p.236



