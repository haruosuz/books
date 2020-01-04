Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2020-01

----------
# [R for Data Science](http://r4ds.had.co.nz)

![](https://covers.oreillystatic.com/images/0636920034407/cat.gif)

- Welcome
- [1](#1) Introduction
- [3](#3) Data visualisation
- [5](#5) Data transformation
- [6](#6) Workflow: scripts
- [](#)
- [27](#27) R Markdown

----------
# [1 Introduction](http://r4ds.had.co.nz/introduction.html)
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
# [5 Data transformation](https://r4ds.had.co.nz/transform.html)

----------
# [6 Workflow: scripts](https://r4ds.had.co.nz/workflow-scripts.html)

<img src="https://d33wubrfki0l68.cloudfront.net/8a64bb047429d7ae0e2acae35c40e421e6439bf6/80e5d/diagrams/rstudio-editor.png" width=50%>

----------
# 

----------
# [27 R Markdown](https://r4ds.had.co.nz/r-markdown.html)

- https://rmarkdown.rstudio.com/
- https://rmarkdown.rstudio.com/lesson-1.html

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

