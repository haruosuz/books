Last Update: 2019-12-30

----------

# Analysis of Phylogenetics and Evolution with R

![](https://static-content.springer.com/cover/book/978-1-4614-1743-9.jpg)

[Download Book (PDF, 2444 KB)](https://link.springer.com/content/pdf/10.1007%2F978-1-4614-1743-9.pdf)

http://link.springer.com/book/10.1007%2F978-1-4614-1743-9
Analysis of Phylogenetics and Evolution with R - Springer
2012

http://ape-package.ird.fr/APER.html
Analysis of Phylogenetics and Evolution with R
Second Edition — 2012

	 # wget http://ape-package.ird.fr/APER/APER2/APER2_Online_Material.tar.gz
	curl -O http://ape-package.ird.fr/APER/APER2/APER2_Online_Material.tar.gz
	tar xvzf APER2_Online_Material.tar.gz 

----------

# Table of Content

- [1 Introduction](#1-introduction)
- [2 First Steps in R for Phylogeneticists](#2-first-steps-in-r-for-phylogeneticists)
- [3 Phylogenetic Data in R](#3-phylogenetic-data-in-r)
- [4 Plotting Phylogenies]()
- [5 Phylogeny Estimation](#5-phylogeny-estimation)
- [6 Analysis of Macroevolution with Phylogenies]
- [7 Simulating Phylogenies and Evolutionary Data]
- [8 Developing and Implementing Phylogenetic Methods in R]
- [A Short Course on Regular Expressions]
- []()

----------

# 1 Introduction

[R の起動と終了](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/02.html)  

![](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/image/windows.gif)

![http://cse.naro.affrc.go.jp/takezawa/r-tips/r/02.html](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/image/Mac.gif)

Rを終了:  

    quit()

## 1.2 Notations
記法

	x <- 1
	x

	mean(x) # get the mean of x

### 1.3.1 Installations

[パッケージ | RのパッケージをCRANからインストールする方法と利用方法](http://stat.biopapyrus.net/r/package-function.html)

	install.packages("ape")

[Table 1.1. R packages used for evolutionary analyses](https://books.google.co.jp/books?id=FsScWggkW_cC&pg=PA6&dq=%22R+packages+used+for+evolutionary+analyses%22&hl=ja&sa=X&ved=0ahUKEwi187Cf8KjUAhUJyrwKHbXgCJsQ6AEIJzAA#v=onepage&q=%22R%20packages%20used%20for%20evolutionary%20analyses%22&f=false)

	library(ape)
	library(ade4)
	library(seqinr)

	update.packages()

----------

# 2 First Steps in R for Phylogeneticists

## 2.1 The Command Line Interface
command line interface (CLI)
コマンド・ライン・インターフェース

*objects, attributes, functions, operators*

[03. 簡単な計算](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/03.html)  

[05. オブジェクトと代入（付値）](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/05.html)

	2+7
	x <- 2 + 7
	x

[統計処理ソフト R 入門 講習会資料](http://182.48.59.120/doc/r-intro-lecture)
現在の環境に存在するオブジェクトの一覧を得るには ls() 関数を使います。
また，str()関数がオブジェクトを短い文字列で要約したものを返してくれる

	ls()
	n <- 5
	ls()
	x <- "acgt"
	ls()

	str(n)
	str(x)

	ls.str()

	ls()
	rm(n)
	ls()

[12. ベクトルの作成](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/12.html)

[ベクトル | Rのベクトルの取り扱い方（結合や集合演算など）](http://stat.biopapyrus.net/vector/vector.html)  

関数 `c()`

	x <- c(2, 6.6, 9.6)
	x
	y <- 2.2:6
	y
	c(x, y)
	1:10
	5:-5

[Rにて、直前の計算結果がほしい](http://jinya.seesaa.net/article/318624255.html)
[.Last.valueの話](http://uribo.hatenablog.com/entry/2016/01/11/145602)

	x <- .Last.value
	x

## 2.2 The Help System
[ヘルプ](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/07.html)

	help("ls")
	?ls
	?"+"
	help.search("tree")
	help.start()

## 2.3 The Data Structures

- [09. データの型](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/09.html)
- [25. データ型とデータ構造](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/25.html)
- [データ型 | 実数,複素数,文字列などのデータ型](http://stat.biopapyrus.net/r/data-type.html)
- [オブジェクト型 | Rのリスト、データフレーム、行列、配列など](http://stat.biopapyrus.net/r/objecttype.html)
- [Rのオブジェクト](http://www.slideshare.net/dritoshi/r-14844056)

![http://www.slideshare.net/dritoshi/r-14844056](http://image.slidesharecdn.com/20120906biochack2012rlanguageobjitoshi-121022234244-phpapp01/95/r-11-638.jpg?cb=1350949412)

### 2.3.1 Vector
[16. 種々のベクトル](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/16.html)

[7. ベクトルデータの操作 - 統計ソフトRの使い方](https://sites.google.com/site/webtextofr/edit)
４つのタイプのデータ：数値型，文字列型，因子型，論理値型

	x <- 1:5
	mode(x)
	length(x)
	# Logical vectors
	y <- c(FALSE, TRUE)
	y
	mode(y)
	length(y)
	1>0
	x >= 3
	# character 
	z <- c("order", "family", "genus", "species")
	mode(z)
	length(z)
	z

[13. ベクトル要素へのアクセス](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/13.html)

	# numeric indexing
	z[1:2]
	i <- c(1, 3)
	z[i]
	# repeat
	z[c(1, 1, 1)]
	z[c(1, 1, 1, 4)]
	# negative, removed:
	z[-1]
	j <- -c(1, 4)
	z[j]

	z[5]
	z[-5]
	# change
	x[c(1, 4)] <- 10
	x
	# logical indexing
	z[c(TRUE, FALSE)]
	z[c(TRUE, FALSE, TRUE, FALSE)]

	x >= 5
	x[x >= 5]
	which(x >= 5)
	# indexing system with names

### 2.3.2 Factor
因子ベクトル

http://www.okadajp.org/RWiki/?因子Tips大全

[第８０回　因子ベクトルのあれこれ - Rを通じて統計学を学ぶ備忘録ブログ](http://sugisugirrr.hatenablog.com/entry/2016/08/20/190143)

	# function factor
	f <- c("Male", "Male", "Male")
	f
	f <- factor(f)
	f
	# option levels
	ff <- factor(f, levels = c("Male", "Female"))
	ff
	# function table:
	table(f)
	table(ff)

    #read.table( as.is = TRUE )

### 2.3.3 Matrix
[行列 | Rにおける行列型の取り扱い](http://stat.biopapyrus.net/vector/matrix.html)

	matrix(1:9, 3, 3)
	x <- 1:9
	dim(x) <- c(3, 3)
	x

	x[3, 2]
	x[3, ] # extract the 3rd row
	x[, 2] # extract the 2nd column

	x[3, 2, drop = FALSE]
	x[3, , drop = FALSE]
	x[, 2, drop = FALSE]

	rownames(x) <- c("A", "B", "C")
	colnames(x) <- c("v1", "v2", "v3")
	x

	x[, "v1"]
	x["A", ]
	x[c("A", "C"), ]

### 2.3.4 Data Frame
[データフレーム | 行列と同じく2次元配置で列の取り扱いが柔軟](http://stat.biopapyrus.net/vector/dataframe.html)

	# function read.table
	# function data.frame
    #z <- c("order", "family", "genus", "species")
	DF <- data.frame(z, y = 0:3, 4:1)
	DF
	rownames(DF)
	colnames(DF)
	
	# recycled
	data.frame(1:4, 9:10)
	> data.frame(1:4, 9:11)
	Error in data.frame(1:4, 9:11) :
	     arguments imply differing number of rows: 4, 3
	
	# operator $
	DF$y
	DF$y <- NULL
	colnames(DF)

### 2.3.5 List
[リスト](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/23.html)

	# function list:
	L <- list(z = z, 1:2, DF)
	L
	length(L)
	names(L)
	# element
	L[[1]]
	L$z
	# [[ and [:
	str(L[[1]])
	str(L[1])

## 2.4 Creating Graphics
[グラフの保存 | R言語で描かれた画像を保存する](https://stat.biopapyrus.net/graph/imagedevice.html)

[47. 作図の準備](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/47.html)

	postscript("plot.eps")
	dev.off()

    ?dev.copy # dev.copy2eps # dev.copy2pdf # dev.print

## 2.5 Saving and Restoring R Data
[45. ファイルへのデータ出力](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/45.html)

    ?write
    ?write.table

    #x <- 1:5; y <- c(FALSE, TRUE); z <- c("order", "family", "genus", "species")
	save(x, y, z, file = "xyz.RData")

	load("xyz.RData")

    save.image()
    #system('ls -a | grep ".RData"')

    #history(); savehistory(); loadhistory()

## 2.6 Using R Functions
## 2.7 Repeating Commands

    ?source

### 2.7.1 Loops
[30. 繰り返し文](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/30.html)  
for による繰り返し

	for (i in 1:5) print("done")

### 2.7.2 Apply-Like Functions

    ?rapply # how = "replace"
    ?by
    ?aggregate

	replicate(4, rnorm(1))
	replicate(5, rpois(3, 10))

- [24. apply() ファミリー](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/24.html)
- [apply系関数の使い方](http://takenaka-akio.org/doc/r_auto/chapter_07_apply.html)
- [applyファミリー | apply,sapply,lapplyの使い方とその例](https://stat.biopapyrus.net/r/apply.html)

## 2.8 Exercises

----------

# 3 Phylogenetic Data in R
## 3.1 Phylogenetic Data as R Objects
### 3.1.1 Trees
The Class "phylo" (ape)

The Class "phylo4" (phylobase)

The Class "matching" (ape)

The Class "treeshape" (apTreeshape)

The Class "haploNet" (pegas)

### 3.1.2 Networks
### 3.1.3 Splits

    library(phangorn)
    designSplits(4)

### 3.1.4 Molecular Sequences
分子配列

The Class "DNAbin" (ape)

Fig. 3.1. Principles of the binary coding system used in "DNAbin". Each bit of the byte gives information in the form of a Yes / No answer

Table 3.1. The bit-level coding scheme for nucleotides used in "DNAbin"

The Class "haplotype" (pegas)

The Class "alignment" (seqinr)

The Class "phyDat" (phangorn)

### 3.1.5 Allelic Data
対立形質データ

The Class "loci" (pegas)

The Class "genind" (adegenet)

The Classes "SNPbin" and "genlight" (adegenet)

### 3.1.6 Phenotypic Data
表現型データ

## 3.2 Reading Phylogenetic Data
系統学的データの読み込み

### 3.2.1 Phylogenies

	tr <- read.tree()
	# 1: (a:1,b:1);
	# 2:
	ls()

	a <- "(a:1,b:1);"
	tr <- read.tree(text = a)

### 3.2.2 Molecular Sequences
分子配列

## 3.3 Writing Data

	tr <- read.tree(text = "(a:1,b:1);")
 	write.tree(tr)
	x <- write.tree(tr)
	x

	write.tree(tr, file = "treefile.tre")

	write.nexus(tr)

## 3.4 Manipulating Data
### 3.4.1 Basic Tree Manipulation

drop.tip

	tr <- read.tree(text = "((a:1,b:1):1,(c:1,d:1):1);")
	write.tree(drop.tip(tr, c("a", "b")))
	write.tree(drop.tip(tr, 1:2)) # same as above
	write.tree(drop.tip(tr, 3:4, trim.internal = FALSE))

    plot(drop.tip(tr, c("a", "b")))



### 3.4.6 Manipulating Lists of Trees


## 3.5 Converting Objects

[Table 3.3. Conversion among the different classes of tree objects in R (x is the object of the original class)](https://books.google.co.jp/books?id=FsScWggkW_cC&pg=PA61&dq=%22Conversion+among+the+different+classes+of+tree+objects+in+R+(x+is+the+object+of+the+original+class)%22&hl=ja&sa=X&ved=0ahUKEwjD2Ym48KjUAhWLXbwKHchXCp4Q6AEIKTAA#v=onepage&q=%22Conversion%20among%20the%20different%20classes%20of%20tree%20objects%20in%20R%20(x%20is%20the%20object%20of%20the%20original%20class)%22&f=false)

[Table 3.4. Conversion among the different classes of DNA, allelic, and standard objects in R (x is the object of the original class)](https://books.google.co.jp/books?id=FsScWggkW_cC&pg=PA62&dq=%22Conversion+among+the+different+classes+of+DNA,+allelic,+and+standard+objects+in+R+(x+is+the+object+of+the+original+class)%22&hl=ja&sa=X&ved=0ahUKEwjHpv7H8KjUAhXCgbwKHVkgCZ0Q6AEIJzAA#v=onepage&q=%22Conversion%20among%20the%20different%20classes%20of%20DNA%2C%20allelic%2C%20and%20standard%20objects%20in%20R%20(x%20is%20the%20object%20of%20the%20original%20class)%22&f=false)

    x <- woodmouse
    as.character(x)

as.alignment(x)


## 3.7 Sequence Alignment

    library(ape)
    clustal()
    data(woodmouse)
    clustal(woodmouse, pw.gapopen = 1, pw.gapext = 1)

Fig. 3.8. Plot of the fifty first sites of the woodmouse data displaying the guanine and the missing data

	x <- woodmouse[, 1:50]
	image(x, c("g", "n"), c("black", "grey"))
	grid(ncol(x), nrow(x), col = "lightgrey")

    ?del.gaps


## 3.8 Case Studies
### 3.8.1 Sylvia Warblers

	x <- paste("AJ5345", 26:49, sep = "")
	x <- c("Z73494", x)
	x

	sylvia.seq <- read.GenBank(x)
	sylvia.seq
	sylvia.clus <- clustal(sylvia.seq)
	image(sylvia.clus)


    > install.packages("phyloch")
    Warning message:
    package ‘phyloch’ is not available (for R version 3.3.3) 


	library(phyloch)
	sylvia.maff <- mafft(sylvia.seq)



----------
# 

## 4.1 Simple Tree Drawing


Table 4.1. The options of plot.phylo. The values marked with (d) are the default ones


### 4.2.2 Cophylogenetic Plot


    example(cophyloplot)

Fig. 4.21. Cophylogeny of six spexies of Chaetodipus and their parasites Fahren- holzia [184]




----------

# 5 Phylogeny Estimation
## 5.1 Distance Methods
### 5.1.1 Calculating Distances
### 5.1.2 Exploring and Assessing Distances




	x <- woodmouse

   djc69 <- dist.dna(x, "JC69")
   dk81 <- dist.dna(x, "K81")
   plot(djc69, dk81)
   abline(b = 1, a = 0)


----------


https://www.ncbi.nlm.nih.gov/pubmed/30016406
Bioinformatics. 2019 Feb 1;35(3):526-528. doi: 10.1093/bioinformatics/bty633.
ape 5.0: an environment for modern phylogenetics and evolutionary analyses in R.
Paradis E1, Schliep K2.

https://www.ncbi.nlm.nih.gov/pubmed/14734327
Bioinformatics. 2004 Jan 22;20(2):289-90.
APE: Analyses of Phylogenetics and Evolution in R language.
Paradis E1, Claude J, Strimmer K.



----------


