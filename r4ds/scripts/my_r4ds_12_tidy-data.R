#' ---
#' title: "R for Data Science"
#' author: '@Haruo_Suzuki'
#' date: "`r Sys.Date()`"
#' output:
#'    html_document:
#'      toc: true
#' theme: united
#' ---

#' # [12 Tidy data](https://r4ds.had.co.nz/tidy-data.html)
#' # 9章　tidyrによるデータ整理
#' 

#' ## 12.1 Introduction
#' ## 9.1　はじめに
#' ### 12.1.1 Prerequisites
#' ### 9.1.1　準備するもの
library(tidyverse)

#' ## [12.2 Tidy data](https://r4ds.had.co.nz/tidy-data.html#tidy-data-1)
#' ## 9.2　整理データ
table1
table2
table3
table4a
table4b

#' ![](https://d33wubrfki0l68.cloudfront.net/6f1ddb544fc5c69a2478e444ab8112fb0eea23f8/91adc/images/tidy-1.png)

#' Figure 12.1: Following three rules makes a dataset tidy: variables are in columns, observations are in rows, and values are in cells.

# Compute rate per 10,000
table1 %>% 
  mutate(rate = cases / population * 10000)

# Compute cases per year
table1 %>% 
  count(year, wt = cases)

# Visualise changes over time
library(ggplot2)
ggplot(table1, aes(year, cases)) + 
  geom_line(aes(group = country), colour = "grey50") + 
  geom_point(aes(colour = country))

#' ## 12.3 Pivoting
#' ## 9.3　広げたり集めたり
#' ### 9.3.1　集める
#' ### 9.3.2　広げる
#' 
#' 







