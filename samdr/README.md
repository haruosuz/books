Haruo Suzuki (haruo[at]g-language[dot]org)   
Last Update: 2019-05

----------

# Statistical Analysis of Microbiome Data with R
**Rを用いたマイクロバイオーム・データの統計解析**
著者: Yinglin Xia, Jun Sun, Ding-Geng Chen

![](https://images.springer.com/sgw/books/medium/9789811315336.jpg)

----------

[Statistical Analysis of Microbiome Data with R | SpringerLink](https://link.springer.com/book/10.1007/978-981-13-1534-3)

https://www.kinokuniya.co.jp/f/dsg-02-9789811315336
Statistical Analysis of Microbiome Data with R (Icsa Book Series in Statistics) / Xia, Yinglin/ Sun, Jun/ Chen, Ding-geng - 紀伊國屋書店ウェブストア
マイクロバイオーム・データのＲ統計解析

----------

# Table of Contents
- [1 Bioinformatic Analysis of Microbiome Data](#chapter-1-bioinformatic-analysis-of-microbiome-data)
- [2 What Are Microbiome Data?](#chapter-2-what-are-microbiome-data)
- [3 Introductory Overview of Statistical Analysis of Microbiome Data](#chapter-3-introductory-overview-of-statistical-analysis-of-microbiome-data)
- [4 Introduction to R, RStudio and ggplot2](#chapter-4-introduction-to-r-rstudio-and-ggplot2)
- [5 Power and Sample Size Calculations for Microbiome Data](#chapter-5-power-and-sample-size-calculations-for-microbiome-data)
- [6 Community Diversity Measures and Calculations](#chapter-6-community-diversity-measures-and-calculations)
- [7 Exploratory Analysis of Microbiome Data and Beyond](#chapter-7-exploratory-analysis-of-microbiome-data-and-beyond)
- [8 Univariate Community Analysis](#chapter-8-univariate-community-analysis)
- [9 Multivariate Community Analysis](#chapter-9-multivariate-community-analysis)
- []()
- []()

----------

# [Chapter 1 Bioinformatic Analysis of Microbiome Data](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_1)
第1章　マイクロバイオーム・データのバイオインフォマティクス解析

## 1.1 Introduction to Microbiome Study

### 1.1.1 What Is the Human Microbiome?

- https://ja.wikipedia.org/wiki/ヒトマイクロバイオーム

### 1.1.2 Microbiome Research and DNA Sequencing

## 1.2 Introduction to Phylogenetics
系統学入門

[Fig. 1.1](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA5&dq=%22Fig.+1.1+Hierarchical+organization+of+taxonomic+levels+used+for+classifying+organisms%22&hl=ja&sa=X&ved=0ahUKEwju3be7ofngAhVJUd4KHUZdAbAQ6AEIKTAA#v=onepage&q=%22Fig.%201.1%20Hierarchical%20organization%20of%20taxonomic%20levels%20used%20for%20classifying%20organisms%22&f=false)
[生物の分類](https://ja.wikipedia.org/wiki/生物の分類)の[階級](https://ja.wikipedia.org/wiki/階級_%28生物学%29)

## 1.3 16S rRNA Sequencing Approach

[Fig. 1.2](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA6&lpg=PA6&dq=%22Fig.+1.2+Summary+of+bioinformatic+methods+for+16S+rRNA+and+shotgun+metagenomics%22&source=bl&ots=2LO-UF1meL&sig=ACfU3U0vPkOPsHWCo21hEjJ0CLqQkAHfKw&hl=ja&sa=X&ved=2ahUKEwi9gL-_o_ngAhVayYsBHdDfDJsQ6AEwAHoECAEQAQ#v=onepage&q=%22Fig.%201.2%20Summary%20of%20bioinformatic%20methods%20for%2016S%20rRNA%20and%20shotgun%20metagenomics%22&f=false)
16S rRNAとショットガン・メタゲノミクスのバイオインフォマティックス手法のまとめ

- https://ja.wikipedia.org/wiki/DNAシークエンシング

### 1.3.1 The Advantages of 16S rRNA Sequencing

### 1.3.2 Bioinformatic Analysis of 16S rRNA Sequencing Data
16S rRNA遺伝子配列データのバイオインフォマティクス解析

#### 1.3.2.1 Processing of Samples, DNA and Library
サンプリング  
DNA抽出  
ライブラリー調製  

#### 1.3.2.2 DNA Sequencing and Quality Checking
DNAシークエンシングとクオリティ・チェック  

#### 1.3.2.3 Cluster 16S rRNA Sequences into OTUs
16S rRNA配列群を OTU (Operational Taxonomic Unit) にクラスタリング

- https://www.yodosha.co.jp/jikkenigaku/keyword/2390.html
operational taxonomic unit：バイオキーワード集｜実験医学online：羊土社

配列同定の2つのアプローチ：phylotypeベースとOTUベースの方法  
OTUの定義  
分析単位としてOTUを使用する理由  
OTUを得るためのクラスタリング  

#### 1.3.2.4 Limitations of 16S rRNA Sequencing Approach

## 1.4 Shotgun Metagenomic Sequencing Approach
### 1.4.1 Definition of Metagenomics

- https://ja.wikipedia.org/wiki/メタゲノミクス

### 1.4.2 Advantages of Shotgun Metagenomic Sequencing
### 1.4.3 Bioinformatic Analysis of Shotgun Metagenomic Data
#### 1.4.3.1 Processing of Samples, DNA and Library
サンプリング  
DNA抽出  

#### 1.4.3.2 Quality Checking
#### 1.4.3.3 Assembly
#### 1.4.3.4 Binning
#### 1.4.3.5 Annotation
ゲノムとメタゲノムの機能アノテーション  
遺伝子予測と機能アノテーション  

#### 1.4.3.6 Challenges of Analyzing Shotgun Metagenomic Data

## 1.5 Bioinformatics Data Analysis Tools
### 1.5.1 QIIME
http://qiime.org/
Quantitative Insights Into Microbial Ecology

![](http://qiime.org/home_static/images/qiime_logo_large.png)

- 2018年01月09日に投稿
https://qiita.com/HiguchiRyusuke/items/bd2423ba4af8085f6351
QIIME 2 でアンプリコンシーケンスを解析 - Qiita
- 2018年01月22日に更新
https://qiita.com/HiguchiRyusuke/items/90ca05c60ab8210c2d7a
Qiime 2 解析の始め方 - Qiita
- https://staffblog.amelieff.jp/entry/2017/12/01/154644
QIIME2のはなし。 - アメリエフのブログ

### 1.5.2 mothur
https://www.mothur.org/

- https://galaxyproject.github.io/training-material/topics/metagenomics/tutorials/mothur-miseq-sop/tutorial.html
16S Microbial Analysis with mothur

### 1.5.3 Analyzing 16S rRNA Sequence Data Using QIIME and Mothur

Step 1
クオリティ・コントロールとクオリティ・フィルタリング。

Step 2
OTUクラスタリングと代表配列のアサイン。

Step 3
OTUテーブルまたは分類群テーブルの作成。

- https://www.pediatricsurgery.site/entry/2017/11/19/200241
mothur開発者によるmothurとQIIMEの比較 - Note of Pediatric Surgery

- https://bi.biopapyrus.jp/rnaseq/qc/
クオリティコントロール | RNA-Seq リードのクオリティチェック

## 1.6 Summary

----------
# [Chapter 2 What Are Microbiome Data?](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_2)
第2章　マイクロバイオーム・データ

## 2.1 Microbiome Data
## 2.2 Microbiome Data Structure
### 2.2.1 Microbiome Data Are Structured as a Phylogenetic Tree
系統樹

### 2.2.2 Feature-by-Sample Contingency Table

[Table 2.1](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA31&lpg=PA31&dq=%22Table+2.1+Feature-by-sample+contingency+table+used+in+microbiome,+genomics,+and+other+high-throughput+data+studies%22&source=bl&ots=2LO-ZGZofE&sig=ACfU3U3MWOKRhmIRy7HAZGh83Ra_c6ipPw&hl=ja&sa=X&ved=2ahUKEwjY3-SfgYjhAhUK97wKHTgbBRgQ6AEwAHoECAAQAQ#v=onepage&q=%22Table%202.1%20Feature-by-sample%20contingency%20table%20used%20in%20microbiome%2C%20genomics%2C%20and%20other%20high-throughput%20data%20studies%22&f=false)
マイクロバイオーム、ゲノミクス、他のハイスループット・データ研究で使用される分割表の行（特徴）と列（サンプル）

- https://www.yodosha.co.jp/jikkenigaku/keyword/171.html
ハイスループット：バイオキーワード集｜実験医学online：羊土社

### 2.2.3 OTU Table

Table 2.2-2.5は、著者らの論文（[Jin et al. 2015](https://www.ncbi.nlm.nih.gov/pubmed/26046242)）のデータセットから抽出。

[Table 2.2](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA32&lpg=PA32&dq=%22Table+2.2+An+example+of+OTU+table+from+16S+rRNA+sequencing%22&source=bl&ots=2LO-ZGZmeG&sig=ACfU3U0PakxHkCzUkHgArKlsJArZ2RhV9w&hl=ja&sa=X&ved=2ahUKEwjL89a8gIjhAhVDu7wKHfKxBugQ6AEwAHoECAEQAQ#v=onepage&q=%22Table%202.2%20An%20example%20of%20OTU%20table%20from%2016S%20rRNA%20sequencing%22&f=false)
16S rRNA解析で得られたOTUテーブルの例。細菌10種（行）の4サンプル（列）における個数

[Table 2.3](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA33&lpg=PA33&dq=%22Table+2.3+Another+version+of+OTU+table+called+sequencing+OTU+table%22&source=bl&ots=2LO-ZGZljJ&sig=ACfU3U258RtRhlzttNMnCwMcBKZg1AKbaw&hl=ja&sa=X&ved=2ahUKEwj4hqamgIjhAhUMbbwKHYYBBUIQ6AEwAHoECAEQAQ#v=onepage&q=%22Table%202.3%20Another%20version%20of%20OTU%20table%20called%20sequencing%20OTU%20table%22&f=false)
OTUテーブルの他のバージョン

- https://www.drive5.com/usearch/manual/otu_table.html

### 2.2.4 Taxa Count Table

[Table 2.4](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA34&lpg=PA34&dq=%22Table+2.4+An+example+of+taxa+table+from+16S+rRNA+sequencing%22&source=bl&ots=2LO-ZGZngL&sig=ACfU3U2TSEkvH087T_Hilix9BNcML3PU2Q&hl=ja&sa=X&ved=2ahUKEwi88vX3gIjhAhWBybwKHbdUClAQ6AEwAHoECAEQAQ#v=onepage&q=%22Table%202.4%20An%20example%20of%20taxa%20table%20from%2016S%20rRNA%20sequencing%22&f=false)
16S rRNA解析で得られた分類群テーブル（カウント）の例。細菌10属（行）の各サンプル（列）におけるリード数

### 2.2.5 Taxa Percent Table

[Table 2.5](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA35&lpg=PA35&dq=%22Table+2.5+An+example+of+taxa+percent+table+from+16S+rRNA+sequencing%22&source=bl&ots=2LO-ZGZnkH&sig=ACfU3U3m9w82nWU3aUfyG6uSm2io3pUTLQ&hl=ja&sa=X&ved=2ahUKEwjoxrqJgYjhAhWGxrwKHU7FBeoQ6AEwAHoECAAQAQ#v=onepage&q=%22Table%202.5%20An%20example%20of%20taxa%20percent%20table%20from%2016S%20rRNA%20sequencing%22&f=false)
16S rRNA解析で得られた分類群テーブル（パーセント）の例。

### 2.3.1 Microbiome Data Are Compositional

https://ci.nii.ac.jp/naid/110004705313
compositional data
生物の群集組成などで利用される組成データは変数の総量が一定であるために定数和制約を受ける．

ライブラリーのサイズ

第10章を参照。

### 2.3.2 Microbiome Data Are High Dimensional and Underdetermined
マイクロバイオーム・データは高次元で劣決定系

第3章を参照。

### 2.3.3 Microbiome Data Are Over-Dispersed
過分散（ばらつきが大きい）

https://ja.wikipedia.org/wiki/多項式回帰
ポアソンモデル

第11章を参照。

### 2.3.4 Microbiome Data Are Often Sparse with Many Zeros
スパース性（多くの分類群の存在量がゼロ）
sampling zeros & structural zeros

## 2.4 An Example of Over-Dispersed and Zero-Inflated Microbiome Data
過分散でゼロ過剰なマイクロバイオームデータの例

[Table 2.6](https://books.google.co.jp/books?id=CIBxDwAAQBAJ&pg=PA37&lpg=PA37&dq=%22Table+2.6+Distribution+of+species+(OTUs)%22&source=bl&ots=2LO--F0oiL&sig=ACfU3U3KtIT4122NQY07U84UC9smoCCJUg&hl=ja&sa=X&ved=2ahUKEwi8q_Ku0I3hAhVgwIsBHZ4xAaoQ6AEwAHoECAAQAQ#v=onepage&q=%22Table%202.6%20Distribution%20of%20species%20(OTUs)%22&f=false)
分類群（OTU）の分布。
過分散でゼロ過剰な分類群（OTU）存在量データの例（[Romero et al. 2014](https://www.ncbi.nlm.nih.gov/pubmed/24484853)）。

## 2.5 Challenges of Modeling Microbiome Data

## 2.6 Summary

----------
# [Chapter 3 Introductory Overview of Statistical Analysis of Microbiome Data](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_3)
第3章　マイクロバイオーム・データの統計解析の概要

## 
### 
####  


## 3.3 Newly Developed Multivariate Statistical Methods
### 3.3.1 Dirichlet-Multinomial Model
ディリクレ多項分布モデル

- https://ja.wikipedia.org/wiki/ディリクレ分布

### 3.3.2 UniFrac Distance Metric Family

rarefaction

### 3.3.3 Multivariate Bayesian Models
多変量ベイズモデル

*Multivariate Bayesian Mixed-Effects Model*
多変量ベイズ混合効果モデル

*Multivariate Bayesian Graphical Compositional Regression*

*Bayesian Variable Selection for Multivariate Zero-Inflated Models*
多変量ゼロ過剰モデルのためのベイズ変数選択

### 3.3.4 Phylogenetic LASSO and Microbiome

## 3.4 Compositional Analysis of Microbiome Data

## 3.5 Longitudinal Data Analysis and Causal Inference in Microbiome Studies
マイクロバイオーム研究における縦断的データ解析と因果推論

### 3.5.5 Meta-analysis of Microbiome Data
マイクロバイオーム・データのメタアナリシス

https://github.com/haruosuz/microbe/blob/master/references/README.microbiome.md#meta-analysis

https://www.biorxiv.org/content/10.1101/294678v1
metamicrobiomeR: an R package for analysis of microbiome relative abundance data using zero-inflated beta GAMLSS and meta-analysis across studies using random effect models | bioRxiv
https://github.com/nhanhocu/metamicrobiomeR

----------
# [Chapter 4 Introduction to R, RStudio and ggplot2](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_4)
第4章　R、RStudio、ggplot2入門

## 4.1 Introduction to R and RStudio
### 4.1.1 Installing R, RStudio, and R Packages

[Bioconductor - ALDEx2](https://bioconductor.org/packages/release/bioc/html/ALDEx2.html)

To install this package, start R (version "3.5") and enter:
```
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("ALDEx2", version = "3.8")
```

### 4.1.2 Set Working Directory in R

### 4.1.3 Data Analysis Through RStudio
#### 4.1.3.1 Basic Features of RStudio
#### 4.1.3.2 Illustrating Data Analysis with RStudio

### 4.1.4 Data Import and Export
#### 4.1.4.1 Using read.table()

#### 4.1.4.2 Using read.delim()

#### 4.1.4.3 Using read.csv() and read.csv2()

#### 4.1.4.4 Using the gdata Package

#### 4.1.4.5 Using the XLConnect Package

#### 4.1.4.6 Using write.table() to Export Data

### 4.1.5 Basic Data Manipulation

**Structure of Data Frame**

**Create Data Frames**

----------
# [Chapter 5 Power and Sample Size Calculations for Microbiome Data](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_5)
第5章　マイクロバイオーム・データの検定力とサンプルサイズの計算

----------
# [Chapter 6 Community Diversity Measures and Calculations](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_6)
第6章　群集の多様性解析

## 6.1 Vdr−/− Mice Data Set
マウスの腸内マイクロバイオーム・データ（[Jin et al. 2015](https://www.ncbi.nlm.nih.gov/pubmed/26046242)）は、454 pyrosequencing法で、ビタミンD受容体（vitamin D receptor; VDR）ノックアウト（Vdr−/−）マウスと野生型（WT）マウスの糞便と盲腸便から得られた。

## 6.2 Introduction to Community Diversities

----------
# [Chapter 7 Exploratory Analysis of Microbiome Data and Beyond](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_7)
第7章　マイクロバイオームの探索的データ解析

----------
# [Chapter 8 Univariate Community Analysis](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_8)
第8章　単変量群集解析

----------
# [Chapter 9 Multivariate Community Analysis](https://link.springer.com/chapter/10.1007/978-981-13-1534-3_9)
第9章　多変量群集解析

### 9.5.2 Breast Milk Data Set

### 9.5.3 Comparing Microbiome Communities Using the GUniFrac Package

**Step 1: Load and Read OTU Table with Appropriate Formats**

td_OTU_tag_mapped_lineage.txt

**Step 2: Use Rarefaction to Normalize the Sample OTU Counts to a Standard Sequencing Depth**

rarefy 

**Step 3: Read Phylogenetic Tree**

----------
# References

https://www.ncbi.nlm.nih.gov/pubmed/26046242
Clin Ther. 2015 May 1;37(5):996-1009.e7. doi: 10.1016/j.clinthera.2015.04.004.
Lack of Vitamin D Receptor Causes Dysbiosis and Changes the Functions of the Murine Intestinal Microbiome.
Jin D1, Wu S1, Zhang YG1, Lu R1, Xia Y2, Dong H3, Sun J4.

https://ja.wikipedia.org/wiki/DNAシークエンシング

----------
# memo

https://www.youtube.com/watch?v=6564K4-_DBI&list=PLOPiWVjg6aTzsA53N19YqJQeZpSCH9QPc
Microbiome Discovery 1: Intro to the Microbiome - YouTube

https://galaxyproject.github.io/training-material/
Galaxy Training!
Metagenomics
https://galaxyproject.github.io/training-material/topics/metagenomics/

2018年12月06日に更新
https://qiita.com/petadimensionlab/items/a51b4e42b2b886160b9b
細菌叢解析ツールの共有〜Dockerコンテナで幸せになる方法①〜 - Qiita

https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2017/1708MetagenomeMori.pdf
メタゲノム解析(2017NGSハンズオン講習会-2017年8月31日)
森 宙史 (Hiroshi Mori), Ph.D.

2015 年 29 巻 3 号 p. 135-144
https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_article/-char/ja/
進化する次世代シーケンサーによる腸内細菌叢の解析
https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_pdf

----------


https://docs.qiime2.org/2019.1/tutorials/moving-pictures/#alpha-and-beta-diversity-analysis
Alpha and beta diversity analysis

An important parameter that needs to be provided to this script is --p-sampling-depth, which is the even sampling (i.e. rarefaction) depth. Because most diversity metrics are sensitive to different sampling depths across different samples, this script will randomly subsample the counts from each sample to the value provided for this parameter. 


----------

## 
### 
####  

[]()  
[]()  

