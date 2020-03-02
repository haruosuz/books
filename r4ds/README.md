Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2020-03

----------
# [R for Data Science](http://r4ds.had.co.nz)

<img src="https://d33wubrfki0l68.cloudfront.net/b88ef926a004b0fce72b2526b0b5c4413666a4cb/24a30/cover.png" width=25%>

- Welcome
- [1 Introduction](#1-introduction)
- [3 Data visualisation](#3-data-visualisation)
- [4 Workflow: basics](#4-workflow-basics)
- [5 Data transformation](#5-data-transformation)
- [6 Workflow: scripts](#6-workflow-scripts)
- [7 Exploratory Data Analysis](#)
- [](#)
- [10 Tibbles](#)
- [11 Data import](#)
- [](#)
- [27 R Markdown](#27-r-markdown)
- [References](#references)

----------
# [1 Introduction](http://r4ds.had.co.nz/introduction.html)
# まえがき
## [1.4 Prerequisites](https://r4ds.had.co.nz/introduction.html#prerequisites)
### 1.4.1 R
### 1.4.2 RStudio
### [1.4.3 The tidyverse](https://r4ds.had.co.nz/introduction.html#the-tidyverse)
```
install.packages("tidyverse")
library(tidyverse)
```

### [1.4.4 Other packages](https://r4ds.had.co.nz/introduction.html#other-packages)
```
install.packages(c("nycflights13", "gapminder", "Lahman"))
```

----------
# [3 Data visualisation](https://r4ds.had.co.nz/data-visualisation.html)
# 1章　ggplot2によるデータ可視化
### [3.1.1 Prerequisites](https://r4ds.had.co.nz/data-visualisation.html#prerequisites-1)
```
install.packages("tidyverse")
library(tidyverse)
```

## [3.2 First steps](https://r4ds.had.co.nz/data-visualisation.html#first-steps)
```
mpg
```

### [3.2.2 Creating a ggplot](https://r4ds.had.co.nz/data-visualisation.html#creating-a-ggplot)
```
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```

<img src="https://d33wubrfki0l68.cloudfront.net/9f135433aca5356d04e503887ebab7d475a5f1cd/d33d1/visualize_files/figure-html/unnamed-chunk-4-1.png" width=50%>

## [3.3 Aesthetic mappings](https://r4ds.had.co.nz/data-visualisation.html#aesthetic-mappings)
```
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
```

<img src="https://d33wubrfki0l68.cloudfront.net/8343557caa1271090c9f8edc217c87f9aca285fc/1afc5/visualize_files/figure-html/unnamed-chunk-8-1.png" width=50%>

----------
# [4 Workflow: basics](https://r4ds.had.co.nz/workflow-basics.html#coding-basics)
# 2章　ワークフロー：基本
## 4.1 Coding basics

----------
# [5 Data transformation](https://r4ds.had.co.nz/transform.html)
# 3章　dplyrによるデータ変換
## 5.1 Introduction

how to transform your data using the `dplyr` package

### 5.1.1 Prerequisites
```
library(nycflights13)
library(tidyverse)
```

### 5.1.2 nycflights13
```
flights
#View(flights) # To see the whole dataset
```

----------
# [6 Workflow: scripts](https://r4ds.had.co.nz/workflow-scripts.html)
# 4章　ワークフロー：スクリプト

<img src="https://d33wubrfki0l68.cloudfront.net/8a64bb047429d7ae0e2acae35c40e421e6439bf6/80e5d/diagrams/rstudio-editor.png" width=50%>

----------
# [7 Exploratory Data Analysis](https://r4ds.had.co.nz/exploratory-data-analysis.html)
# 5章　探索的データ分析

----------
# 

----------
# []()

----------
# [10 Tibbles](https://r4ds.had.co.nz/tibbles.html)
# 7章　tibbleのtibble

----------
# [11 Data import](https://r4ds.had.co.nz/data-import.html)
# 8章　readrによるデータインポート


----------
# []()



----------
# 






----------
# [27 R Markdown](https://r4ds.had.co.nz/r-markdown.html)

- https://rmarkdown.rstudio.com/
- https://rmarkdown.rstudio.com/lesson-1.html

----------
# References

## R for Data Science

2017/1/10
http://shop.oreilly.com/product/0636920034407.do
R for Data Science - O'Reilly Media

![](https://covers.oreillystatic.com/images/0636920034407/cat.gif)

https://www.safaribooksonline.com/library/view/r-for-data/9781491910382/

https://www.amazon.com/dp/1491910399

https://github.com/hadley/r4ds

## Rではじめるデータサイエンス

2017/10/25
https://www.oreilly.co.jp/books/9784873118147/
O'Reilly Japan - Rではじめるデータサイエンス
https://www.oreilly.co.jp/books/9784873118147/#toc
目次

![https://www.oreilly.co.jp/books/9784873118147/](https://www.oreilly.co.jp/books/images/picture978-4-87311-814-7.gif)

https://www.amazon.co.jp/dp/487311814X/

2019.12.28
https://miscellaneous.tokyo/blog/r-for-data-science/
Hadley Wickham, et al.：Ｒではじめるデータサイエンス | 書評と練習問題の解答例

Nov 12, 2019
https://github.com/wasabi1989/R_for_Data_Science_Answers
Rで始めるデータサイエンスの練習問題の解答
この本はRではじめるデータサイエンスの演習問題の回答を記載したものです。したがって、章立ては日本語版に準じています。Gitbook版はこちら。
https://sugiura.gitbook.io/r-for-data-science-answers/

5 Jan 2018
https://twitter.com/f_nisihara/status/949227695908335616
Fumiaki Nishihara（西原史暁） on Twitter: "R for Data Science という本は、R言語によるデータ分析の入門書です。R言語をやるならぜひ読んでみてください。英語原著はオンライン https://t.co/VKrLmmfFpS で無料で読めます。『Rではじめるデータサイエンス』というタイトルで和訳も出ています。"

2017/12/17
http://twosquirrel.mints.ne.jp/?p=21629
「Rではじめるデータサイエンス」を写経（２）dplyr

2017/12/15
http://twosquirrel.mints.ne.jp/?p=21626
「Rではじめるデータサイエンス」を写経（１）ggplot2

----------

