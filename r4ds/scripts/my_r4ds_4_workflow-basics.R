#' ---
#' title: "R for Data Science"
#' author: '@Haruo_Suzuki'
#' date: "`r Sys.Date()`"
#' output:
#'    html_document:
#'      toc: true
#' theme: united
#' ---

#' # [4 Workflow: basics](https://r4ds.had.co.nz/workflow-basics.html)
#' # 2章　ワークフロー：基本
#' ## 4.1 Coding basics
#' ## 2.1　コーディングの基本
#' You can use R as a calculator:
1 / 200 * 30
(59 + 73 + 2) / 3
sin(pi / 2)
#' You can create new objects with <-:
x <- 3 * 4

#' ## 4.2 What’s in a name?
#' ## 2.2　名前の中には何がある?
x

#' Make another assignment:
this_is_a_really_long_name <- 2.5

#' Make yet another assignment:
r_rocks <- 2 ^ 3
#' Let’s try to inspect it:
#r_rock
#R_rocks
r_rocks

#' ## 4.3 Calling functions
#' ## 2.3　関数呼び出し
seq(1, 10)
x <- "hello world"
x

y <- seq(1, 10, length.out = 5)
y

(y <- seq(1, 10, length.out = 5))

#' Now look at your environment in the upper right pane:
#' ![](https://d33wubrfki0l68.cloudfront.net/879c123dfbcc5fffd44d58b6da97f6cba58968c8/d96e4/screenshots/rstudio-env.png)

