#' ---
#' title: "R for Data Science"
#' author: '@Haruo_Suzuki'
#' date: "`r Sys.Date()`"
#' output:
#'    html_document:
#'      toc: true
#' theme: united
#' ---

#' # [6 Workflow: scripts](https://r4ds.had.co.nz/workflow-scripts.html)
#' # 4章　ワークフロー：スクリプト
#' 
#' ![](https://d33wubrfki0l68.cloudfront.net/8a64bb047429d7ae0e2acae35c40e421e6439bf6/80e5d/diagrams/rstudio-editor.png)
#' 
#' ## 6.1 Running code
#' ## 4.1　コードを実行する
#' pressing Cmd/Ctrl + Enter
library(dplyr)
library(nycflights13)

not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))

not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay))

#' ## 6.2 RStudio diagnostics
#' ## 4.2　RStudioの診断
#x y <- 10
#3 == NA
#' The script editor will also highlight syntax errors with a red squiggly line and a cross in the sidebar:
#' 
#' ![](https://d33wubrfki0l68.cloudfront.net/2c70225e177adb09fd2c71641881d91a2a44b84f/1aee8/screenshots/rstudio-diagnostic.png)
#' 
#' Hover over the cross to see what the problem is:
#' 
#' ![](https://d33wubrfki0l68.cloudfront.net/3cb10a911ed68521d7fc9b1f7a8f40806c5cc640/f3daa/screenshots/rstudio-diagnostic-tip.png)
#' 
#' RStudio will also let you know about potential problems:
#' 
#' ![](https://d33wubrfki0l68.cloudfront.net/6f50e3e61d68a0e450e12904754e5b9cfa7ff275/54508/screenshots/rstudio-diagnostic-warn.png)
#' 




