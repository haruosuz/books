# https://www.yodosha.co.jp/yodobook/book/9784758120951/
# 第1章 Rと仲よくなろう
## 1.1.はじめてみる
## 1.2.まずは R をインストールする
## 1.3.RStudio をインストールする
## 1.4.どこからはじめるか
# p.26
1+1
## 1.5.とりあえずデカい電卓として使ってみよう
# p.27
2 * 4
3/8
11.75 - 4.813
10^2
log(10)
log10(10)
sin(2 * pi)
7 < 10
### 1.5.1
1:10
### 1.5.2
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 0.5)
x <- seq(from = 1, to = 10, by = 0.5)
x
y <- seq(from = 101, to = 110, by = 0.5)
x + y
# p.33
## 1.6.スクリプトを書いてみる
### 1.6.1
# Clear R's brain
rm(list = ls())
## 1.7.総まとめ(ここまでの)
## 1.8.大事なのはパッケージ
#install.packages("tidyverse")
### 1.8.1
# p.41
# make these packages and their associated functions
# available to use in this script
library(dplyr)
library(ggplot2)
#library(tidyverse)
## 1.9.いつでもヘルプ
?read.csv
## 1.10.本格的な例(ちょっとだけ)
## 1.11.最初のうち(そして今後も)うまくやっていくコツ
## 付録1a.課題の解答例
# p.49
rm(list = ls())
library(ggplot2)

# Exercise 1
# Plot a grah with x^2 on the y-axis and x on the x-axis.
x <- seq(-10, 10, 0.1)
y <- x^2
qplot(x, y, geom="line")

# Exercise 2
# Plot a grah with sine on the y-axis and x on the x-axis.
x <- seq(0, 8*pi, 0.1)
y <- sin(x)
qplot(x, y, geom="line")

# Exercise 3
# Plot a histogram of 1000 random normal deviates.
x <- rnorm(1000)
qplot(x)

## 付録1b.ファイルの拡張子と OS による違い
