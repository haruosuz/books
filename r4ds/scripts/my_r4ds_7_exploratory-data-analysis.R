# https://www.oreilly.co.jp/books/9784873118147/#toc
# https://r4ds.had.co.nz/exploratory-data-analysis.html
# 7 Exploratory Data Analysis
# 5章　探索的データ分析

### 7.1.1 Prerequisites
### 5.1.1　準備するもの
library(tidyverse)

## 7.3 Variation
## 5.3　変動

### 7.3.1 Visualising distributions
### 5.3.1　分布の可視化

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

diamonds %>% 
  count(cut)

ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

diamonds %>% 
  count(cut_width(carat, 0.5))

smaller <- diamonds %>% 
  filter(carat < 3)

ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.1)

ggplot(data = smaller, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)

### 7.3.2 Typical values
### 5.3.2　典型値

ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.01)

ggplot(data = faithful, mapping = aes(x = eruptions)) + 
  geom_histogram(binwidth = 0.25)

### 7.3.3 Unusual values
### 5.3.3　異常値

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))

unusual <- diamonds %>% 
  filter(y < 3 | y > 20) %>% 
  select(price, x, y, z) %>%
  arrange(y)
unusual

## 7.4 Missing values
## 5.4　欠損値
## 5.5　共変動
### 5.5.1　カテゴリ変数と連続変数

### 5.5.2　2つのカテゴリ変数

### 7.5.2 Two categorical variables
### 5.5.3　2つの連続変数
ggplot(data = diamonds) +
  geom_count(mapping = aes(x = cut, y = color))

diamonds %>% 
  count(color, cut)

diamonds %>% 
  count(color, cut) %>%  
  ggplot(mapping = aes(x = color, y = cut)) +
  geom_tile(mapping = aes(fill = n))

## 5.6　パターンとモデル



### 


