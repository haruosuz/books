Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2020-01-03

----------
# [R for Data Science](http://r4ds.had.co.nz)

![](https://covers.oreillystatic.com/images/0636920034407/cat.gif)

- Welcome
- [1 Introduction](#1-introduction)
- 3 Data visualisation
- 5 Data transformation
- [21 Iteration](#21-iteration)

----------
# [1 Introduction](http://r4ds.had.co.nz/introduction.html)
## [1.4 Prerequisites](https://r4ds.had.co.nz/introduction.html#prerequisites)

----------
# [3 Data visualisation](https://r4ds.had.co.nz/data-visualisation.html)
### [3.1.1 Prerequisites](https://r4ds.had.co.nz/data-visualisation.html#prerequisites-1)
```
install.packages("tidyverse")
library(tidyverse)
```

## [3.2 First steps](https://r4ds.had.co.nz/data-visualisation.html#first-steps)
```
mpg

### 3.2.2 Creating a ggplot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```

----------
# [5 Data transformation](https://r4ds.had.co.nz/transform.html)

----------
# []()

----------
# 

----------
# [7 Exploratory Data Analysis](https://r4ds.had.co.nz/exploratory-data-analysis.html)
探索的データ分析

## 7.3 Variation

### 7.3.1 Visualising distributions

```
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


```

----------
# 

----------
# [21 Iteration](https://r4ds.had.co.nz/iteration.html)

## 21.1 Introduction

## 21.2 For loops

Every for loop has three components:


----------
# References

## R for Data Science

http://shop.oreilly.com/product/0636920034407.do
R for Data Science - O'Reilly Media

- https://www.safaribooksonline.com/library/view/r-for-data/9781491910382/
- https://www.amazon.com/dp/1491910399
- https://github.com/hadley/r4ds

## Rではじめるデータサイエンス

https://www.oreilly.co.jp/books/9784873118147/#toc
O'Reilly Japan - Rではじめるデータサイエンス
目次

![](https://www.oreilly.co.jp/books/images/picture978-4-87311-814-7.gif)

https://www.amazon.co.jp/dp/487311814X/

5 Jan 2018
https://twitter.com/f_nisihara/status/949227695908335616
Fumiaki Nishihara（西原史暁） on Twitter: "R for Data Science という本は、R言語によるデータ分析の入門書です。R言語をやるならぜひ読んでみてください。英語原著はオンライン https://t.co/VKrLmmfFpS で無料で読めます。『Rではじめるデータサイエンス』というタイトルで和訳も出ています。"

2017/12/17
http://twosquirrel.mints.ne.jp/?p=21629
「Rではじめるデータサイエンス」を写経（２）dplyr

2017/12/15
http://twosquirrel.mints.ne.jp/?p=21626
「Rではじめるデータサイエンス」を写経（１）ggplot2

2017/10/25
https://www.oreilly.co.jp/books/9784873118147/

----------

