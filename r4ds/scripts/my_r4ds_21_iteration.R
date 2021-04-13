#' ---
#' title: "R for Data Science"
#' author: '@Haruo_Suzuki'
#' date: "`r Sys.Date()`"
#' output:
#'    html_document:
#'      toc: true
#' ---

#' # [21 Iteration](https://r4ds.had.co.nz/iteration.html)
#' # 17章　purrrでイテレーション
#' ## 21.1 Introduction
#' ## 17.1　はじめに
#' Functional programming (FP)
#' 
#' ### 21.1.1 Prerequisites
#' ### 17.1.1　用意するもの
library(tidyverse)

#' ## 21.2 For loops
#' ## 17.2　forループ
df <- tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)
#' compute the median of each column.
median(df$a)
median(df$b)
median(df$c)
median(df$d)
#' use a for loop:
output <- vector("double", ncol(df))  # 1. output
for (i in seq_along(df)) {            # 2. sequence
  output[[i]] <- median(df[[i]])      # 3. body
}
output

y <- vector("double", 0)
seq_along(y)
1:length(y)

#' ## 21.3 For loop variations
#' ## 17.3　forループのバリエーション
#' ### 21.3.1 Modifying an existing object
#' ### 17.3.1　既存オブジェクトの変更

df <- tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)
rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

df$a <- rescale01(df$a)
df$b <- rescale01(df$b)
df$c <- rescale01(df$c)
df$d <- rescale01(df$d)

#' To solve this with a for loop we again think about the three components:
  
for (i in seq_along(df)) {
  df[[i]] <- rescale01(df[[i]])
  }

#' ### 21.3.2 Looping patterns
#' ### 17.3.2　ループパターン

#' ### 21.3.3 Unknown output length
#' ### 17.3.3　出力長不明

means <- c(0, 1, 2)

output <- double()
for (i in seq_along(means)) {
  n <- sample(100, 1)
  output <- c(output, rnorm(n, means[[i]]))
}
str(output)

#' A better solution to save the results in a list, and then combine into a single vector after the loop is done:

out <- vector("list", length(means))
for (i in seq_along(means)) {
  n <- sample(100, 1)
  out[[i]] <- rnorm(n, means[[i]])
}
str(out)
str(unlist(out))

#' ### 21.3.4 Unknown sequence length
#' ### 17.3.4　シーケンス長不明
#' use a while loop to find how many tries it takes to get three heads in a row:
flip <- function() sample(c("T", "H"), 1)

flips <- 0
nheads <- 0

while (nheads < 3) {
  if (flip() == "H") {
    nheads <- nheads + 1
  } else {
    nheads <- 0
  }
  flips <- flips + 1
}
flips

#' ## 21.4 For loops vs. functionals
#' ## 17.4　forループと関数型
set.seed(123)
df <- tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)
df

output <- vector("double", length(df))
for (i in seq_along(df)) {
  output[[i]] <- mean(df[[i]])
}
output

col_summary <- function(df, fun) {
  out <- vector("double", length(df))
  for (i in seq_along(df)) {
    out[i] <- fun(df[[i]])
  }
  out
}
col_summary(df, median)
col_summary(df, mean)
col_summary(df, sd)

#' ## 21.5 The map functions
#' ## 17.5　マップ関数
#' use these functions to perform the same computations as the last for loop.
map_dbl(df, mean)
map_dbl(df, median)
map_dbl(df, sd)
#' use the pipe:
df %>% map_dbl(mean)
df %>% map_dbl(median)
df %>% map_dbl(sd)
#' There are a few differences between map_*() and col_summary():
#'
#' - map_*() uses … ([dot dot dot]) to pass along additional arguments to .f each time it’s called:
map_dbl(df, mean, trim = 0.5)
#' - The map functions also preserve names:
z <- list(x = 1:3, y = 4:5)
map_int(z, length)

#' ### 21.5.1 Shortcuts
#' ### 17.5.1　ショートカット

#' ### 21.5.2 Base R
#' ### 17.5.2　基本 R


#' ## 21.6 Dealing with failure
#' ## 17.6　失敗の処理

safe_log <- safely(log)
str(safe_log(10))
str(safe_log("a"))

x <- list(1, 10, "a")
y <- x %>% map(safely(log))
str(y)

y <- y %>% purrr::transpose()
str(y)

is_ok <- y$error %>% map_lgl(is_null)
x[!is_ok]
y$result[is_ok] %>% purrr::flatten_dbl()

#' Purrr provides two other useful adverbs:
#' - possibly()
x <- list(1, 10, "a")
x %>% map_dbl(possibly(log, NA_real_))
#' - quietly()
x <- list(1, -1)
x %>% map(quietly(log)) %>% str()

#' ## 21.7 Mapping over multiple arguments
#' ## 17.7　複数引数へのマップ
mu <- list(5, 10, -3)
mu %>% 
  map(rnorm, n = 5) %>% 
  str()

#' iterate over the indices and index into vectors of means and sds:
sigma <- list(1, 5, 10)
seq_along(mu) %>% 
  map(~rnorm(5, mu[[.]], sigma[[.]])) %>% 
  str()

#' use map2() which iterates over two vectors in parallel:
map2(mu, sigma, rnorm, n = 5) %>% str()

#' map2() generates this series of function calls:
#' ![](https://d33wubrfki0l68.cloudfront.net/68a21c4a103426c3b311c9dcfad8fe379d4892f1/55c9d/diagrams/lists-map2.png)

#' purrr provides pmap() which takes a list of arguments.
n <- list(1, 3, 5)
args1 <- list(n, mu, sigma)
args1 %>%
  pmap(rnorm) %>% 
  str()

#' ![](https://d33wubrfki0l68.cloudfront.net/88993b07b533d99ca08ce805d0a25e909745b03c/b6d84/diagrams/lists-pmap-unnamed.png)
args2 <- list(mean = mu, sd = sigma, n = n)
args2 %>% 
  pmap(rnorm) %>% 
  str()

#' ![](https://d33wubrfki0l68.cloudfront.net/6da05576a8c55e4ee1ecb2e2c5c9a35e710abacd/b9ea6/diagrams/lists-pmap-named.png)

params <- tribble(
  ~mean, ~sd, ~n,
  5, 1, 1,
  10, 5, 3,
  -3, 10, 5
)
params %>% 
  pmap(rnorm)

#' ### 21.7.1 Invoking different functions
#' ### 17.7.1　さまざまな関数を呼び出す
f <- c("runif", "rnorm", "rpois")
param <- list(
  list(min = -1, max = 1), 
  list(sd = 5), 
  list(lambda = 10)
)
invoke_map(f, param, n = 5) %>% str()

#' ![](https://d33wubrfki0l68.cloudfront.net/46ce0bbefff56809de8d5276120031a21e1bbbf1/753f2/diagrams/lists-invoke.png)

sim <- tribble(
  ~f,      ~params,
  "runif", list(min = -1, max = 1),
  "rnorm", list(sd = 5),
  "rpois", list(lambda = 10)
)
sim %>% 
  mutate(sim = invoke_map(f, params, n = 10))

#' ## 21.8 Walk
#' ## 17.8　ウォーク

x <- list(1, "a", 3)

x %>% 
  walk(print)

#' use pwalk() to save each file to the corresponding location on disk:

library(ggplot2)
plots <- mtcars %>% 
  split(.$cyl) %>% 
  map(~ggplot(., aes(mpg, wt)) + geom_point())
paths <- stringr::str_c(names(plots), ".pdf")

pwalk(list(paths, plots), ggsave, path = tempdir())

#' ## 21.9 Other patterns of for loops 
#' ## 17.9　forループの他のパターン

#' ### 21.9.1 Predicate functions
#' ### 17.9.1　述語関数

#' 
iris %>% 
  keep(is.factor) %>% 
  str()

iris %>% 
  discard(is.factor) %>% 
  str()

#' 
x <- list(1:5, letters, list(10))

x %>% 
  some(is_character)

x %>% 
  every(is_vector)

#' 
x <- sample(10)
x

x %>% 
  detect(~ . > 5)

x %>% 
  detect_index(~ . > 5)

#' 
x %>% head_while(~ . > 5)
#' Error: Predicate functions must return a single `TRUE` or `FALSE`, not a logical vector of length 5
#' Run `rlang::last_error()` to see where the error occurred.
x %>% tail_while(~ . > 5)
#' Error: Predicate functions must return a single `TRUE` or `FALSE`, not a logical vector of length 26
#' Run `rlang::last_error()` to see where the error occurred.
#' 
#' ### 21.9.2 Reduce and accumulate
#' ### 17.9.2　reduceとaccumulate

dfs <- list(
  age = tibble(name = "John", age = 30),
  sex = tibble(name = c("John", "Mary"), sex = c("M", "F")),
  trt = tibble(name = "Mary", treatment = "A")
)

dfs %>% reduce(full_join)

#' you have a list of vectors, and want to find the intersection:
  
vs <- list(
  c(1, 3, 5, 6, 10),
  c(1, 2, 3, 7, 8, 10),
  c(1, 2, 3, 4, 8, 9, 10)
)

vs %>% reduce(intersect)

#'implement a cumulative sum:
x <- sample(10)
x
x %>% accumulate(`+`)



