#' ---
#' title: "R for Data Science"
#' author: '@Haruo_Suzuki'
#' date: "`r Sys.Date()`"
#' output:
#'    html_document:
#'      toc: true
#' ---

#' # [19 Functions](https://r4ds.had.co.nz/functions.html)
#' # 15章　関数
#' ## 19.1 Introduction
#' ## 15.1　はじめに
#' ### 19.1.1 Prerequisites
#' ### 15.1.1　用意するもの
#' ## 19.2 When should you write a function?
#' ## 15.2　関数を書くべきとき
#' 
#' 

#' ## 
#' ## 

#' ### 19.5.3 Dot-dot-dot (…)
#' ### 15.5.3　3ドット（ ...）
#' Many functions in R take an arbitrary number of inputs:
sum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
stringr::str_c("a", "b", "c", "d", "e", "f")

#' It’s useful because you can then send those ... on to another function. 

commas <- function(...) stringr::str_c(..., collapse = ", ")
commas(letters[1:10])

rule <- function(..., pad = "-") {
  title <- paste0(...)
  width <- getOption("width") - nchar(title) - 5
  cat(title, " ", stringr::str_dup(pad, width), "\n", sep = "")
}
rule("Important output")




