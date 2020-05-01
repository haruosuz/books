Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2020-05-01

----------

# Building bioinformatics solutions : with Perl, R, and SQL

![](http://www.oxfordscholarship.com/view/covers/9780199658558.jpg)

- [Companion website](http://bixsolutions.net)
- [GitHub repository](https://github.com/dazoakley/bbs-v2)
- Oxford University Press [Paperback](https://global.oup.com/academic/product/building-bioinformatics-solutions-9780199658565?cc=jp&lang=en&) | [Hardback](https://global.oup.com/academic/product/building-bioinformatics-solutions-9780199658558?cc=jp&lang=en&) | [Chapter 1](http://fdslive.oup.com/www.oup.com/academic/pdf/13/9780199658558_chapter1.pdf)
- [Oxford Scholarship](http://www.oxfordscholarship.com/view/10.1093/acprof:oso/9780199658558.001.0001/acprof-9780199658558)
- [Scholars Portal Books](https://books1.scholarsportal.info/viewdoc.html?id=650662)
- [Amazon.co.jp](http://www.amazon.co.jp/dp/0199658560) | [Amazon.com](http://www.amazon.com/dp/0199658560)
- [Google ブックス](https://books.google.co.jp/books?id=vkueAgAAQBAJ&hl=ja&source=gbs_navlinks_s)
- 2010 [Let's Do Bioinformatics | Building Bioinformatics Solutions](http://bioinformatics.risha.me/tag/building-bioinformatics-solutions/)
- [Building Bioinformatics Solutions: With Perl, R and MySQL by Conrad Bessant — Reviews, Discussion, Bookclubs, Lists](http://www.goodreads.com/book/show/5148881-building-bioinformatics-solutions)

----------

# Table of Contents

- [Chapter 1 Introduction](#chapter-1-introduction)
- Chapter 2 Building biological databases with SQL
- [Chapter 3 Beginning programming in Perl](#chapter-3-beginning-programming-in-perl)
- [Chapter 4 Analysis and visualisation of data using R](#chapter-4-analysis-and-visualisation-of-data-using-r)
- Chapter 5 Developing web resources
- Chapter 6 Software engineering for bioinformatics
- [Appendix A: Using command-line interfaces](#appendix-a-using-command-line-interfaces)
- Appendix B: Getting started with Apache HTTP Server
- Appendix C: Setting up a Linux virtual machine in Windows
- Index

----------

# CHAPTER 1 Introduction  
## 1.1 From data to knowledge: the aim of bioinformatics

- [生命情報学便覧](http://bio-info.biz)
- [bioinformatics | バイオインフォマティクス | 生物情報科学](https://bi.biopapyrus.jp)

## 1.2 Using this book
Chapter 2：[関係データベース管理システム](https://ja.wikipedia.org/wiki/関係データベース管理システム) [MySQL](https://ja.wikipedia.org/wiki/MySQL)  
Chapter 3：プログラミング言語 [Perl](https://ja.wikipedia.org/wiki/Perl)  
Chapter 4：統計解析向けの言語 [R言語](https://ja.wikipedia.org/wiki/R言語)  
Chapter 5：Perl, R, MySQLの統合  
Chapter 6：[ソフトウェア工学](https://ja.wikipedia.org/wiki/ソフトウェア工学)入門  

### 1.2.1 About the coverage of this book

### 1.2.2 Choice of tools
[LAMP (Linux+Apache+MySQL+PHP/Perl/Python)](https://ja.wikipedia.org/wiki/LAMP_%28ソフトウェアバンドル%29)  

### 1.2.3 Choice of operating system
### 1.2.4 www.bixsolutions.net
## 1.3 Principal applications of bioinformatics
バイオインフォマティクスの主な用途  

![http://www.metabolomics.bbsrc.ac.uk/background.htm](http://www.metabolomics.bbsrc.ac.uk/background_files/image038.gif)

### 1.3.1 Sequence analysis
配列解析  
ゲノム（[DNA塩基](https://www.ddbj.nig.ac.jp/ddbj/code.html#nucleotide-1)）やタンパク質（[アミノ酸](https://www.ddbj.nig.ac.jp/ddbj/code.html#amino-1)）のテキスト配列解析  

![https://www.arb-silva.de/documentation/sina-tutorial/](http://www.arb-silva.de/fileadmin/graphics_general/main/tutorial_aligner/aligner_basic01.png)  

- [配列解析基礎 Basic Sequence Analysis 坊農 秀雅](http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2014/20140905_2-1_bono.pdf)

### 1.3.2 Transcriptomics
[トランスクリプトミクス](https://ja.wikipedia.org/wiki/トランスクリプトーム)  

### 1.3.3 Proteomics
[プロテオミクス](https://ja.wikipedia.org/wiki/プロテオーム)  

### 1.3.4 Metabolomics
[メタボロミクス](https://ja.wikipedia.org/wiki/メタボロミクス)  

### 1.3.5 Systems biology
[システム生物学](https://ja.wikipedia.org/wiki/システム生物学)  

### 1.3.6 Literature mining
文献マイニング  

### 1.3.7 Structural biology
[構造生物学](https://ja.wikipedia.org/wiki/構造生物学)  

## 1.4 Building bioinformatics solutions
[**Fig. 1.1**](https://books.google.co.jp/books?id=40ueAgAAQBAJ&pg=PA9&lpg=PA9&dq=%22A+generic+bioinformatics+solution+showing+typical+components+that+may+be+used.%22&source=bl&ots=Qy0Qar0Crx&sig=8q_Jok_HZ-72xjALoBjcDvam_eE&hl=ja&sa=X&ved=0ahUKEwiZupzGq_fLAhWk3aYKHUI-CaQQ6AEIGzAA#v=onepage&q=%22A%20generic%20bioinformatics%20solution%20showing%20typical%20components%20that%20may%20be%20used.%22&f=false)

## 1.5 Publicly available bioinformatics resources
公的に利用可能なバイオインフォマティクスのリソース

米国 [National Centre for Biotechnology Information (NCBI)](http://www.ncbi.nlm.nih.gov)  
欧州 [European Bioinformatics Institute (EBI)](http://www.ebi.ac.uk)  
日本 [DNA Data Bank of Japan (DDBJ)](http://www.ddbj.nig.ac.jp/index-j.html)  

![http://www.quizbiology.com/2013/05/bioinformatics-mcq-quiz.html](http://lh5.ggpht.com/-RVDAcMLXpPQ/UaLVfpoguLI/AAAAAAAAGdw/n8DEk4aPAIg/Bioinformatics%252520Resources%25255B11%25255D.png)

### 1.5.1 Publicly available data
公的に利用可能なデータ  
[*Nucleic Acids Research*誌のデータベース集](http://www.oxfordjournals.org/our_journals/nar/database/c/)  

- [Integbio データベースカタログ](http://integbio.jp/dbcatalog/?lang=ja)  
- [統合TV | 生命科学系DB・ツール使い倒し系チャンネル](http://togotv.dbcls.jp/ja/)  

#### Genome sequences
[ゲノム](https://ja.wikipedia.org/wiki/ゲノム)配列  

[INSDC; International Nucleotide Sequence Database Collaboration](https://www.ddbj.nig.ac.jp/insdc-e.html)
[塩基配列データベース構築の国際協調](https://www.ddbj.nig.ac.jp/insdc.html)

<img src="https://www.ddbj.nig.ac.jp/images/center/insdc_shoukai.gif" alt="https://www.ddbj.nig.ac.jp/insdc.html" width=50%>

[ゲノム配列DBの使い方 統合TV(togotv)｜生命科学系DB・ツール使い倒し系チャンネル](http://togotv.dbcls.jp/ajacs2015018.html)

恐竜のDNA? [Putative dinosaur genomic DNA, partial sequence](http://www.ncbi.nlm.nih.gov/nuccore/U41319.1)  

二次データベース: [Ensembl](http://www.ensembl.org)

#### Protein sequences
タンパク質配列  

[Swiss-Prot - Wikipedia](https://ja.wikipedia.org/wiki/Swiss-Prot)  

[UniProt](http://www.uniprot.org)

<img src="http://www.uniprot.org/images/overview.png" alt="http://www.uniprot.org/help/about" width=50%>

[InterPro](http://www.ebi.ac.uk/interpro)  

#### Transcriptomic data
[トランスクリプトーム](https://ja.wikipedia.org/wiki/トランスクリプトーム)データ  
遺伝子発現データベース: [Array Express](http://www.ebi.ac.uk/arrayexpress)と[Gene Expression Omnibus (GEO)](http://www.ncbi.nlm.nih.gov/geo)  
この種のデータを扱うためのRパッケージを[Chapter 4](#chapter-4-analysis-and-visualisation-of-data-using-r)で見る。  

#### Protein expression data
[プロテオーム](https://ja.wikipedia.org/wiki/プロテオーム)データ  
タンパク質同定データベースと質量分析データ: [PRIDE](http://www.ebi.ac.uk/pride)と[PeptideAtlas](http://www.peptideatlas.org)  

#### Metabolomic data
[メタボローム](https://ja.wikipedia.org/wiki/メタボローム)データ  
[Human Metabolome Database](http://www.hmdb.ca)  
[Metlin](http://metlin.scripps.edu)  
[PubChem](http://pubchem.ncbi.nlm.nih.gov)  
[ChemSpider](http://www.chemspider.com)  
[MetaboLights](http://www.ebi.ac.uk/metabolights)  

- [メタボロミクス分野で利用されている主なデータベース](http://humanmetabolome.com/hmtcom/wp-content/uploads/downloads/2011/12/Chapter5.pdf)

#### Molecular structures
[分子構造](https://ja.wikipedia.org/wiki/分子構造)  
[蛋白質構造データバンク Protein Data Bank (PDB)](https://ja.wikipedia.org/wiki/蛋白質構造データバンク)  

#### Interactions and pathways
相互作用とパスウェイ  

![http://www.genome.jp/tools/kaas/](http://www.genome.jp/tools/kaas/img/kaas_t1.png)  
 
[KEGG (the Kyoto Encyclopedia of Genes and Genomes) Pathway](http://www.genome.ad.jp/kegg/pathway.html)  
[Reactome](http://www.reactome.org)  
[IntAct database of molecular interactions](http://www.ebi.ac.uk/intact)  
[BioModels](http://www.ebi.ac.uk/biomodels-main)  

#### Literature
文献  
[PubMed](http://www.pubmed.gov)  

[OMIM](http://www.ncbi.nlm.nih.gov/omim)  

- [統合TV | 生命科学系DB・ツール使い倒し系チャンネル | OMIMを使い倒す 家族性乳がんの関連遺伝子をさぐる 2017](http://togotv.dbcls.jp/ja/20170213.html)
- [PubMedで論文を検索する - 統合TV (togotv)(2012-08-30)](http://togotv.dbcls.jp/20120830.html)

#### Ontologies
[オントロジー](https://ja.wikipedia.org/wiki/オントロジー#.E6.83.85.E5.A0.B1.E7.A7.91.E5.AD.A6)  
[遺伝子オントロジー Gene Ontology (GO)](https://ja.wikipedia.org/wiki/遺伝子オントロジー)  
*controlled vocabularies*  
[Open Biomedical Ontologies Foundry](http://www.obofoundry.org)  

### 1.5.2 Publicly available analysis tools
公的に利用可能な解析ツール  
[EBI services](http://www.ebi.ac.uk/services)  
[NCBI resources](http://www.ncbi.nlm.nih.gov/guide/all/)  

[European Molecular Biology Open Software Suite—EMBOSS](http://emboss.sourceforge.net/)  

### 1.5.3 Publicly available workflow solutions
バイオインフォマティクス ワークフロー プラットフォーム  
[Taverna](http://www.taverna.org.uk)  
[Knime](http://www.knime.org)  
[Galaxy](https://usegalaxy.org)  

<img src="http://www.pitagora-galaxy.org/_/rsrc/1411111618710/about/about_galaxyflow.png" alt="http://www.pitagora-galaxy.org/about" width=50%>

- [Pitagora Galaxy](https://twitter.com/pitagora_meetup)  

## 1.6 Some computing practicalities
### 1.6.1 Hardware requirements

### 1.6.2 The command line
コマンドライン  
[Appendix A](https://github.com/haruosuz/books/tree/master/bbs#appendix-a-using-command-line-interfaces)  

- [UNIXコマンド入門 (一般ユーザー編) (全16回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_unix)
- [今さら聞けない！ターミナルの使い方【初心者向け】 | TechAcademyマガジン](http://techacademy.jp/magazine/5155)

### 1.6.3 Case sensitivity
大文字と小文字の区別  
'DNA.TXT' と 'dna.txt'  

### 1.6.4 Security, firewalls, and administration rights

## References

----------

# CHAPTER 2 Building biological databases with SQL

----------

# CHAPTER 3 Beginning programming in Perl  
[Perl](https://ja.wikipedia.org/wiki/Perl)プログラミング  

[*How Perl Saved the Human Genome Project*](http://www.foo.be/docs/tpj/issues/vol1_2/tpj0102-0001.html)  

- [Perl入門 (全19回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_perl)
- [統合TV | 【Perl】に関係する講習会資料・番組](http://togotv.dbcls.jp/ja/tags.html?tag=Perl)
- [とほほのperl入門（概要編）](http://www.tohoho-web.com/wwwperl1.htm)
- [Perl | テキスト処理を中心としたバイオインフォマティクス](http://bi.biopapyrus.net/perl/)

## 3.1 Downloading and installing Perl


### 3.1.1 Older versions of Perl on Mac OS
### 3.1.2 Older versions of Perl on Linux
### 3.1.3 Installing Perl on Windows
### 3.1.4 Compilers and other developer tools
### 3.1.5 Before getting started
#### Picking a text editor
#### The command line

## 3.2 Basic Perl syntax and logic

テキストエディタを開き、次のコードを入力し、ファイル名`hello_world.pl`で保存する:  


[ターミナル](http://techacademy.jp/magazine/5155)を開き、次のように入力する:  


    perl ~/Downloads/bbs-v2-master/chapter-3/section-3.2/01-hello_world.pl

[`hello_world.pl`](http://bixsolutions.net/files/hello_world.pl)  
[`01-hello_world.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/01-hello_world.pl)  
1行目：`#!`で始まる、[*shebang*](https://ja.wikipedia.org/wiki/シバン_%28Unix%29)は、スクリプトを実行するインタプリタを指定する  
2行目：`#`で始まる、コメント  
3行目：print文  
4行目：print文  

Perlで各行の終わりはセミコロン(`;`)で示す。

### 3.2.1 Scalar variables

`$`記号で始まる、スカラー変数  

#### Assigning values to scalar variables

等号(`=`)を使用して、変数に値を代入する。  

[`02-variable-assignment.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/02-variable-assignment.pl)  

#### Special attention for strings

引用符(`'`)とバックスラッシュ(`\`)  

Table 3.1  

#### Multiline strings

[`03-multiline-strings.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/03-multiline-strings.pl)  

Table 3.2  

Table 3.3  

- [ヒアドキュメント - サンプルコードによるPerl入門 - Perlプログラミングの基礎から応用まで](http://d.hatena.ne.jp/perlcodesample/20080619/1214053531)  

#### Some useful scalar operations

`chomp()`と`chop()`   

#### String substitution

[`04-string-substitution.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/04-string-substitution.pl)  


[`05-string-substitution2.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/05-string-substitution2.pl)  


逆相補鎖(reverse complement)に変換  

[`06-string-transliteration.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/06-string-transliteration.pl)  

#### Printing strings

[`07-printing-strings.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/07-printing-strings.pl)  

[`08-printing-strings2.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/08-printing-strings2.pl)  

### 3.2.2 Arrays

**Fig. 3.1**

#### Creating and assigning values to arrays

[`09-arrays.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/09-arrays.pl)  

#### Printing and retrieving data from arrays

[`10-printing-arrays.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/10-printing-arrays.pl)  

#### Special array operators

`pop(), push(), shift(), unshift(), split(), join(), scalar()`関数  



[`11-array-operators.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/11-array-operators.pl)  

### 3.2.3 Hashes

[**Fig. 3.2** A Perl hash containing five key/value pairs.](https://books.google.co.jp/books?id=Yi4UDAAAQBAJ&pg=PA89&lpg=PA89&dq=%22A+Perl+hash+containing+five+key/value+pairs%22&source=bl&ots=S_VPBLKi_1&sig=bp_s7SoxY5ue0mGUvFF2meboPaM&hl=ja&sa=X&ved=0ahUKEwj8--PVh8LMAhWBNJQKHf-ADhwQ6AEIHDAA#v=onepage&q=%22A%20Perl%20hash%20containing%20five%20key%2Fvalue%20pairs%22&f=false)
5つのキー/値のペアを含むPerlのハッシュ

[`12-hashes.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/12-hashes.pl)  

#### Getting data out of hashes

`keys`関数  


`values`関数  


### 3.2.4 Control structures and logic operators

#### IF, ELSIF, and ELSE conditionals

[`13-conditionals.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/13-conditionals.pl)  

**Table 3.4** 数値と文字列の比較演算子

#### More advanced conditionals

[`and, &&, or, ||`](http://www.envinfo.uee.kyoto-u.ac.jp/user/susaki/perl/condition.html#c)  

#### Creating loops with FOR, FOREACH, and WHILE
ループ  

[`14-loops.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/14-loops.pl)  




### 3.2.5 Writing interactive programs—I/O basics

[`15-revcom-dna.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/15-revcom-dna.pl)  

interactive input method:  

[`16-io-basics.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/16-io-basics.pl)  

#### Accepting command-line parameters

[`17-command-line-input.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/17-command-line-input.pl)  

    perl ~/Downloads/bbs-v2-master/chapter-3/section-3.2/17-command-line-input.pl ACTGGG DNA

[`revcomp.pl`](http://bixsolutions.net/files/revcomp.pl)  
[`18-string-revcom-with-command-line-input.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.2/18-string-revcom-with-command-line-input.pl)  

### 3.2.6 Some good coding practice

#### Use strict

グローバル変数とローカル変数



#### Warnings and diagnostics


#### Variable naming and commenting

◆ プログラム名：【悪い例】`test_script1.pl`　【良い例】`parse_blast_results.pl`  
◆ 変数名：【悪い例】`$a` or `$string1`　【良い例】`$dna`  
◆ `$something_ref`はリファレンス、`a_`は配列、`h_`はハッシュのリファレンス。`ah_`はハッシュの配列、`hh_`はハッシュのハッシュ。  

### 3.2.7 Summary

## 3.3 References

### 3.3.1 Multidimensional arrays

[`01-2d-arrays.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.3/01-2d-arrays.pl)  


### 3.3.2 Multidimensional hashes

[`02-multi-dimension-hashes.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.3/02-multi-dimension-hashes.pl)  

[`03-multi-dimension-hashes2.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.3/03-multi-dimension-hashes2.pl)  


### 3.3.3 Viewing data structures with Data::Dumper

[`04-data-dumper.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.3/04-data-dumper.pl)  

## 3.4 Subroutines and modules

サブルーチンを定義する基本構文:  


[`01-subroutines1.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.4/01-subroutines1.pl)  

[`02-subroutines2.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.4/02-subroutines2.pl)  

[**Fig. 3.3** A visual representation of a subroutine, and the concept of namespaces.](https://books.google.co.jp/books?id=Yi4UDAAAQBAJ&pg=PA115&lpg=PA115&dq=%22A+visual+representation+of+a+subroutine,+and+the+concept+of+namespaces.%22&source=bl&ots=S_VPBLKkW3&sig=r1qA9knUgzTCXVLdeZDefqzafBI&hl=ja&sa=X&ved=0ahUKEwiUsoKjiMLMAhWJNJQKHcw3CyMQ6AEIHDAA#v=onepage&q=%22A%20visual%20representation%20of%20a%20subroutine%2C%20and%20the%20concept%20of%20namespaces.%22&f=false)

### 3.4.1 Making a Perl module

[`MySubs.pm`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.4/MySubs.pm)  

[`03-using-mysubs.pl`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-3/section-3.4/03-using-mysubs.pl)  

## 3.5 Regular expressions

### 3.5.1 Defining regular expressions

----------

# CHAPTER 4 Analysis and visualisation of data using R  
Rを用いたデータの解析と可視化  

## 4.1 Introduction to R

- [R言語入門 (全13回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_r)
- [統合TV | 【R】に関係する講習会資料・番組](http://togotv.dbcls.jp/ja/tags.html?tag=R)
- [R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r.html)

### 4.1.1 Downloading and installing R
Rのダウンロードとインストール

- [Rのダウンロードとライブラリのインストール - 日経BigData](http://business.nikkeibp.co.jp/atclbdt/15/recipe/102500016/)

[R の起動と終了](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/02.html)  

![http://cse.naro.affrc.go.jp/takezawa/r-tips/r/02.html](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/image/Mac.gif)

終了


### 4.1.2 Basic R concepts and syntax
変数と代入  


`#`で始まる、コメント  


大文字と小文字の区別  

    Y
    SQRT

作業スペース *workspace*



関数の省略形を[ヘルプ](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/07.html)で確認


- [Rの初歩](https://oku.edu.mie-u.ac.jp/~okumura/stat/first.html)

### 4.1.3 Vectors and data frames
ベクトルとデータフレーム

- [さまざまなデータ列の生成](http://takenaka-akio.org/doc/r_auto/series.html)
- [ベクトル操作 | R言語でのベクトル,行列やリストの作り方と演算方法](http://stat.biopapyrus.net/vector/)

![https://en.wikipedia.org/wiki/Blood_test](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Vacutainer_blood_bottles.jpg/220px-Vacutainer_blood_bottles.jpg)

[**Table 4.1** Concentration of key metabolites in five patients.](https://github.com/dazoakley/bbs-v2/blob/master/chapter-4/blood.csv) 5人の患者の血中物質濃度。尿素(Urea)濃度は患者3で記録されていない

`c()`関数で[ベクトル](http://stat.biopapyrus.net/vector/vector.html)の作成  

    # convert from g/m^3 to g/cm^3 by multiplying by 10^-6

`data.frame`関数で[データフレーム](http://stat.biopapyrus.net/vector/dataframe.html)の作成  


- [Rでのデータの編集と演算](http://mjin.doshisha.ac.jp/R/Chap_03/03.html)
- [R言語プログラミング： データ入出力 - hamadakoichi blog](http://d.hatena.ne.jp/hamadakoichi/20100126/p1)

`edit()`関数でデータの編集


- [欠損値 | Rの非数値の取り扱い方,NULL,NA,NaN,Infの除外と置換](http://stat.biopapyrus.net/vector/nan.html)

`read.csv()`関数でカンマ区切り([CSV](https://ja.wikipedia.org/wiki/Comma-Separated_Values))ファイルを読み込む:  

    results <- read.csv("https://bixsolutions.net/files/blood.csv")

`summary()`関数でデータの要約


`[行番号,列番号]`でデータフレームの要素を抽出


### 4.1.4 The nature of experimental data

[**Fig. 4.2** Organisation of gene experimental data into a data matrix.](https://books.google.co.jp/books?id=40ueAgAAQBAJ&pg=PA166&dq=%22Organisation+of+gene+experimental+data+into+a+data+matrix%22&hl=ja&sa=X&ved=0ahUKEwjaztvm0rvMAhVCG5QKHXiCCp8Q6AEIHDAA#v=onepage&q=%22Organisation%20of%20gene%20experimental%20data%20into%20a%20data%20matrix%22&f=false)
遺伝子実験データ行列（サンプル x 遺伝子）  

![http://www.snubi.org/xperanto.html](http://www.snubi.org/~ys802/html/image/datastr.jpg)

[**Table 4.2** Web server statistics for a very basic web site](https://books.google.co.jp/books?id=40ueAgAAQBAJ&pg=PA167&lpg=PA167&dq=%22Web+server+statistics+for+a+very+basic+web+site%22&source=bl&ots=Qy1I7r2uoA&sig=HvgVSmF9OrLefgPXZ1HOza-TkYo&hl=ja&sa=X&ved=0ahUKEwias8D07KjMAhWKHZQKHSLZCI0Q6AEIHDAA#v=onepage&q=%22Web%20server%20statistics%20for%20a%20very%20basic%20web%20site%22&f=false)
Webサーバの統計情報

`matrix()`関数で行列の作成  


`%*%`演算子で行列の積


#### Matrices as images—and vice versa

[`image`関数](http://d.hatena.ne.jp/myopomme/20111214/1323865945)で行列を可視化


### 4.1.5 R modes, objects, lists, classes, and methods

data types (modes): numeric 実数, complex 複素数, logical 論理値, character 文字列, or raw

データ型の変換  


- [データの型](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/09.html)
- [データ型とデータ構造](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/25.html)
- [データ型 | 実数,複素数,文字列などのデータ型](http://stat.biopapyrus.net/r/data-type.html)
- [オブジェクト型 | Rのリスト、データフレーム、行列、配列など](http://stat.biopapyrus.net/r/objecttype.html)
- [Rのオブジェクト](http://www.slideshare.net/dritoshi/r-14844056)

![http://www.slideshare.net/dritoshi/r-14844056](http://image.slidesharecdn.com/20120906biochack2012rlanguageobjitoshi-121022234244-phpapp01/95/r-11-638.jpg?cb=1350949412)

#### Vectors
[ベクトル](http://stat.biopapyrus.net/vector/vector.html)の要素は全て同じ型（例えば、数値か文字列）でなければならない。

#### Matrices
[行列](http://stat.biopapyrus.net/vector/matrix.html)は、2次元以上で、異なるデータ型（例えば、数値と文字列）を混在させられない。

#### Factors
[因子ベクトル](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/16.html)でカテゴリデータを扱う。例えば、タンパク質の存在(protein presence)を`TRUE`と`FALSE`で表現する。

    proteinpresent <- c(TRUE, FALSE, TRUE)

`factor`関数で因子ベクトルを作成する。例えば、遺伝子の発現(expression)状態を`over, under, unchanged`で表現する。

    expression <- factor(c("over","under","unchanged","over"))
    expression

<img src="http://www.rcsb.org/pdb/images/1CF3_bio_r_500.jpg" alt="http://www.rcsb.org/pdb/explore/explore.do?structureId=1CF3" width=50%>

[RCSB PDB - 1CF3: GLUCOSE OXIDASE FROM APERGILLUS NIGER Structure Summary Page](http://www.rcsb.org/pdb/explore.do?structureId=1cf3)

[蛋白質構造データバンク Protein Data Bank (PDB)](https://ja.wikipedia.org/wiki/蛋白質構造データバンク)に登録されている[クロコウジカビ（学名 *Aspergillus niger*）](https://ja.wikipedia.org/wiki/コウジカビ)の[グルコースオキシダーゼ](https://ja.wikipedia.org/wiki/グルコースオキシダーゼ)

#### Lists
[リスト](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/23.html)は、異なるデータ型の列を含められる。

例えば、タンパク質の情報（名前:`"glucose oxidase"`、PDB登録番号:`"1CF3"`、式量:`63355`）をリストに格納する:  


リストの要素に名前を付けて、`$`記号でアクセスする。



`$`記号でリストに要素を追加する。例えば、[Gene Ontology (GO)](https://ja.wikipedia.org/wiki/遺伝子オントロジー) IDsのベクトル`x`を作成し、リスト`protein`に追加する。




<img src="http://www.frontiersin.org/files/Articles/60933/fgene-04-00201-HTML/image_m/fgene-04-00201-g001.jpg" alt="http://journal.frontiersin.org/article/10.3389/fgene.2013.00201/full" width=50%>

#### Data frames
[データフレーム](http://stat.biopapyrus.net/vector/dataframe.html)は、異なるデータ型の列を含められる。

[BLAST (Basic Local Alignment Search Tool)](https://ja.wikipedia.org/wiki/BLAST)で、DNAやタンパク質の類似配列を検索

<img src="http://eagle.fish.washington.edu/Arabidopsis/20110721%20PGS2%20BLAST%20Alignment.png" alt="http://onsnetwork.org/blog/tag/blast/" width=50%>

BLAST検索結果






#### Functions
関数はオブジェクトとして定義される。

- [関数の定義](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/31.html)
- [関数の作り方 | functionによりRの関数を定義する方法](http://stat.biopapyrus.net/r/user-function.html)

#### Other objects


- [入門本編 3章 オブジェクト、そのモードと属性 - Leihcrev's memo](https://sites.google.com/site/leihcrev/r/objects-their-modes-and-attributes)

### 4.1.6 Importing data into R
`read.table`関数で、データのインポート


次の例は、データフレーム`d.f`にファイル["blood.csv"](https://github.com/dazoakley/bbs-v2/blob/master/chapter-4/blood.csv)からのデータをロードする。

ファイルからデータをロードする:  

    setwd("~/Downloads/bbs-v2-master/chapter-4/")

    d.f <- read.table("blood.csv", sep=",", header=TRUE)

> [ここをクリック](https://github.com/dazoakley/bbs-v2/archive/master.zip)して、補足資料`bbs-v2-master`をダウンロードする。

ウェブサイトからデータをロードする:  

    filename <- "https://bixsolutions.net/files/blood.csv"
    d.f <- read.table(filename, sep=",", header=TRUE)

`write.table`関数で、データのエクスポート

データをタブ区切りファイルとして出力する:  

    write.table(d.f, file="~/output.txt", sep="\t", quote=FALSE, row.names=FALSE)

- [ファイルを読み込む](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/40.html)
- [ファイルへのデータ出力](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/45.html)

### 4.1.7 Data visualization in R
データの視覚化

<img src="http://revolution-computing.typepad.com/.a/6a010534b1db25970b015435c323fc970c-800wi" alt="http://www.r-bloggers.com/graph-gallery-in-r/" width=50%>

Sadowski et al. (2006) Quantitative proteomic approach to study subcellular localization of membrane proteins. | [要旨](http://www.ncbi.nlm.nih.gov/pubmed/17487160) | [本文](http://www.nature.com/nprot/journal/v1/n4/full/nprot.2006.254.html)

![https://www.thermofisher.com/order/catalog/product/78840](https://tools.thermofisher.com/content/sfs/gallery/high/SubCellProtOverview.jpg)
![https://www.thermofisher.com/order/catalog/product/78840](https://tools.thermofisher.com/content/sfs/gallery/thumb/subcellular-protein-fractionation-kit-cells-fig.jpg)

タンパク質分画プロファイル(protein fractionation profiles)
を比較することにより、目的のタンパク質(`x`)に最も類似した特性を有するタンパク質(`p1`から`p12`)を決定する。

    X <- read.table("https://bixsolutions.net/files/profiles.csv", sep=",", header=TRUE)


    matplot(X, type="l", col=1:6, lty=1:5)

    example(matplot)

[**Fig. 4.3** The 13 individual protein profiles plotted together using the matplot function.](https://books.google.co.jp/books?id=vkueAgAAQBAJ&pg=PT140&lpg=PT140&dq=%22The+13+individual+protein+profiles+plotted+together+using+the+matplot+function.%22&source=bl&ots=o7Uwz5PbiX&sig=x_3lwCYVqBJAl2ZphKv_ify-Sfc&hl=ja&sa=X&ved=0ahUKEwjQ1smMicLMAhUBqJQKHX1oAZkQ6AEIHDAA#v=onepage&q=%22The%2013%20individual%20protein%20profiles%20plotted%20together%20using%20the%20matplot%20function.%22&f=false)
`matplot`関数でプロットした13個のタンパク質プロファイル

`scale`関数で、各プロファイルを（最大値 1 になるように）[正規化](https://ja.wikipedia.org/wiki/正規化)する。



    matplot(Xscaled, type="l", col=1:6, lty=1:5)

    legend("topleft", legend=names(X), col=1:6, lty=1:5)

    example(legend)

- [24. apply() ファミリー](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/24.html) apply(X, MARGIN, 関数, ...) で MARGIN = 1 ならば行に関して，MARGIN = 2 ならば列に関して，MARGIN = c(1,2) ならば各要素に対して関数を適用する．  
- [59. 基本統計量の算出](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/59.html) 関数 scale(x) で，データ行列 x を標準化する  

[**Fig. 4.4** The same data as in Figure 4.3, after range scaling and addition of a legend.](https://books.google.co.jp/books?id=vkueAgAAQBAJ&pg=PT141&lpg=PT141&dq=%22The+same+data+as+in+Figure+4.3,+after+range+scaling+and+addition+of+a+legend.%22&source=bl&ots=o7Uwz5PckZ&sig=lQmqVTX_BKOvlbglNQBuDt2GgTM&hl=ja&sa=X&ved=0ahUKEwjg-ZHHicLMAhVJp5QKHeWKBnEQ6AEIHDAA#v=onepage&q=%22The%20same%20data%20as%20in%20Figure%204.3%2C%20after%20range%20scaling%20and%20addition%20of%20a%20legend.%22&f=false)
Fig. 4.3と同じデータを正規化(scale)し、凡例(legend)を表示。
目的のタンパク質(`x`)に最も類似したプロファイルを持つタンパク質は`p5`

`barplot()`は棒グラフ、`boxplot()`は箱ひげ図、`contour()`は等高線図、`pie()`は円グラフを描く。

    example(barplot)


- [高水準作図関数](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/50.html)

#### Primitive graphics functions
[低水準作図関数](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/51.html)

関数`rect(), text(), arrows(), lines(), polygon(), points(), segments(), symbols()`  

    example(rect)

プロットに長方形とテキストを追加:  

    x <- 1:10
    y <- seq(0.1, 1, by = 0.1)
    plot(x, y)
    rect(2, 0.2, 4, 0.4) # 始点の座標 (2, 0.2) と 終点の座標 (4, 0.4) を通る長方形を描く
    text(3, 0.5, "protein \n of interest") # 座標 (3, 0.5) に文字列を描く

    plot(x, y, type = 'n')
    text(x, y, labels = LETTERS[x])

#### Creating interactive graphics


- [54. 対話的作図関数](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/54.html)

#### Devices
作図デバイス 



    example(plot)

`pdf()`の類似関数`bmp(), jpeg(), png()`

- [複数ウィンドウ | R言語でdev.set(1)で複数のウィンドを起動して、グラフを描画する](http://stat.biopapyrus.net/graph/devset.html)
- [47. 作図の準備](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/47.html)

#### Summary


----------

### 4.1.8 Writing programs in R
Rプログラム  

[`profiles.r`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-4/profiles.r)

プログラムをエディタで編集



プログラムを実行


    #source("https://bixsolutions.net/files/profiles.r")

#### Beyond scripting: loops and conditionals

- [分岐処理 | Rの制御構文の文法と利用例,if文,switch文,ifelse文の実用例](http://stat.biopapyrus.net/r/divergence-flow.html)

`if`文


- [演算子 | Rの四則・論理・代入演算子とany,all関数の使い方](http://stat.biopapyrus.net/r/arithmetic-operator.html)

比較演算子　`==, !=, <, <=, >, >=`  
論理演算子　条件での論理積(`&&`)と論理和(`||`)  

    cnt <- 0
    aa <- "D"
    if ((aa == "D") || (aa == "E")) {
     cnt <- cnt + 1
    }

- [繰返処理 | Rのループ処理を行うfor文とwhile文](http://stat.biopapyrus.net/r/loop-flow.html)

`for, repeat, while`; `next, break`

    x <- 0
    for (i in 1:10) x <- x + 1
    x

![http://blog.livedoor.jp/crazybio/archives/42016577.html](http://livedoor.blogimg.jp/crazybio/imgs/0/3/03e98b40.jpg)

- [タンパク質の階層的構造](http://bio-info.biz/protein/structure_hierarchical_structure.html)
- [二次構造](https://ja.wikipedia.org/wiki/二次構造)

[`ssseq.r`](https://github.com/dazoakley/bbs-v2/blob/master/chapter-4/ssseq.r)プログラムは、`for`ループと条件文と作図関数を組み合わせて、二次構造（αへリックス、βシート）注釈付きタンパク質配列を出力する。

    source("https://bixsolutions.net/files/ssseq.r")

[**Fig. 4.5** Annotated protein sequence produced using low level R graphics functions.](https://books.google.co.jp/books?id=Yi4UDAAAQBAJ&pg=PA183&lpg=PA183&dq=%22Annotated+protein+sequence+produced+using+low+level+R+graphics+functions%22&source=bl&ots=S_VPBLKh23&sig=GYpAAOdHHyr0RAKHnTpSKgTD88M&hl=ja&sa=X&ved=0ahUKEwic5Iu6h8LMAhWEF5QKHWU2A_IQ6AEIIzAB#v=onepage&q=%22Annotated%20protein%20sequence%20produced%20using%20low%20level%20R%20graphics%20functions%22&f=false)
低水準作図関数で作成された注釈付きタンパク質配列

#### Writing functions

    source("https://bixsolutions.net/files/rangescale.r")

    rangescale
    X <- read.csv("https://bixsolutions.net/files/profiles.csv")

    Xscaled <- rangescale(X)

### 4.1.9 Some essential R functions

`apply(), lapply(), sapply(), vapply(), replicate()`

    X <- read.csv("https://bixsolutions.net/files/profiles.csv")

- [applyファミリー | apply,sapply,lapplyの使い方とその例](http://stat.biopapyrus.net/r/apply.html)

`sample()`関数で無作為抽出

    X <- c("p1","p2","p3","p4","p5")
    # set.seed(101)

- [[R]無作為抽出をするsample関数の使い方](http://rplus.wb-nahce.info/rsemi_stat_basic/r_musakuityuusyutu.html)
- [[R]無作為抽出をする](http://rplus.wb-nahce.info/rsemi_stat_basic/rsemi_stat_randomSampling.html)

`sort()`関数でデータの整列


- [データの結合（マージ）と整列（ソート）](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/43.html)

`order()`関数は、整列した各要素の元の位置を返す

    order(z)
    z[order(z)]

`rev()`関数で、要素を逆順

    rev(z)

`system.time()`関数で、実行時間の計測


- [［R］コマンドの実行時間を計る](http://goldenstate.cocolog-nifty.com/blog/2015/02/r-7f2e.html)  

`t()`関数で行列を転置


<img src="http://articles.concreteinteractive.com/wp-content/uploads/2015/03/irises.png" alt="http://articles.concreteinteractive.com/machine-learning-a-new-tool-for-humanity/" width=25%>

<img src="http://sebastianraschka.com/images/blog/2014/linear-discriminant-analysis/iris_petal_sepal.png" alt="http://sebastianraschka.com/Articles/2014_python_lda.html" width=25%>

[`iris`](http://d.hatena.ne.jp/tsutatsutatsuta/20121206/1354737461)は、アヤメ属の3品種(setosa, versicolor, virginica)毎に花50個体の がく片(Sepal)・花弁(Petal)の長さ(Length)・幅(Width)を計測したデータ

[`table()`関数でクロス集計](http://nshi.jp/contents/r/crosstab/) 

    dim(iris)
    head(iris)

`ftable()`関数で[多次元分割表](http://www.pu-hiroshima.ac.jp/~ttetsuji/R/[70]xtabs-ftable.html)  

`which()`関数は、条件を満たす（`TRUE`の）要素番号を返す


### 4.1.10 The RStudio integrated development environment
[RStudio](http://memorandum2015.sakura.ne.jp/index_rstudio.html)は[統合開発環境](https://ja.wikipedia.org/wiki/統合開発環境)（IDE）

[**Fig. 4.6** The RStudio IDE running under Windows.](https://books.google.co.jp/books?id=Yi4UDAAAQBAJ&pg=PA190&lpg=PA190&dq=%22The+RStudio+IDE+running+under+Windows.%22&source=bl&ots=S_VPBLKo-4&sig=sAUtopO03lzJWKlXbH-LCWnA620&hl=ja&sa=X&ved=0ahUKEwiniIr6icLMAhXIlJQKHbmaDr8Q6AEIIjAB#v=onepage&q=%22The%20RStudio%20IDE%20running%20under%20Windows.%22&f=false)
RStudio IDEをWindowsで実行

![http://wiki.awf.forst.uni-goettingen.de/wiki/index.php/Installation_and_Interface_of_R](http://wiki.awf.forst.uni-goettingen.de/wiki/images/thumb/f/f6/02-RStudio.jpg/500px-02-RStudio.jpg)

## 4.2 Multivariate data analysis
[多変量解析](https://ja.wikipedia.org/wiki/多変量解析)

### 4.2.1 Exploratory data analysis
[探索的データ解析](http://www.msi.co.jp/splus/products/eda.html)

### 4.2.2 Scatter plots
[散布図](https://ja.wikipedia.org/wiki/散布図)

![https://ja.wikipedia.org/wiki/散布図](https://upload.wikimedia.org/wikipedia/ja/thumb/d/d5/散布図.png/200px-散布図.png)

### 4.2.3 Principal components analysis
[主成分分析](https://ja.wikipedia.org/wiki/主成分分析)  

![https://ja.wikipedia.org/wiki/主成分分析](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/GaussianScatterPCA.svg/220px-GaussianScatterPCA.svg.png)

- [Rによる主成分分析](http://bio-info.biz/tips/r_pca.html)  
- [Rと主成分分析](http://mjin.doshisha.ac.jp/R/Chap_24/24.html)
- 2014-08-28 [勉強会：主成分分析・因子分析（金明哲『Rによるデータサイエンス』） - StatsBeginner: 初学者の統計学習ノート](http://statsbeginner.hatenablog.com/entry/2014/08/28/233955)

[**Fig. 4.7** Relationship between the data matrix (X), scores matrix (T) and loadings matrix (P) in principal components analysis.](http://bit.ly/1T7y77E)
主成分分析におけるデータの行列(X)、主成分得点の行列(T)、主成分負荷量の行列(P)の関係

    #source("https://bixsolutions.net/files/pca_example.r")

[**Fig. 4.8** PCA scores plot generated from the profiles data set.](https://books.google.co.jp/books?id=vkueAgAAQBAJ&pg=PT154&lpg=PT154&dq=%22PCA+scores+plot+generated+from+the+profiles+data+set%22&source=bl&ots=o7Uwz5P5hT&sig=uvvyLqtDBnF4i3fJo9lQzbrlDy0&hl=ja&sa=X&ved=0ahUKEwjmy5LohsLMAhUMFpQKHbhdAkUQ6AEIGzAA#v=onepage&q=%22PCA%20scores%20plot%20generated%20from%20the%20profiles%20data%20set%22&f=false)

### 4.2.4 Hierarchical cluster analysis
階層的[クラスター分析](https://ja.wikipedia.org/wiki/データ・クラスタリング)  

`dist()`関数の距離尺度`method = "euclidean", "manhattan", "binary", ...`  
`hclust()`関数の連結法`method = "average", "complete", "single", "ward"`  

[**Fig. 4.9** Illustration of distance between samples in variable space.](https://books.google.co.jp/books?id=40ueAgAAQBAJ&pg=PA195&lpg=PA195&dq=%22Illustration+of+distance+between+samples+in+variable+space.%22&source=bl&ots=Qy1J6o-upA&sig=ign_EZPT0W2_MJPNBL_twAglCO4&hl=ja&sa=X&ved=0ahUKEwi7_czjisLMAhUJjJQKHUyiAosQ6AEIHDAA#v=onepage&q=%22Illustration%20of%20distance%20between%20samples%20in%20variable%20space.%22&f=false)
変数空間におけるサンプル間の距離



[**Fig. 4.10** Dendrogram generated from the protein profiles dataset.]()
タンパク質プロファイルデータセットから生成された樹形図

- [Rとクラスター分析1](http://mjin.doshisha.ac.jp/R/Chap_28/28.html)
- [Rとクラスター分析2](http://mjin.doshisha.ac.jp/R/Chap_29/29.html)

### 4.2.5 Pattern recognition
[パターン認識](https://ja.wikipedia.org/wiki/パターン認識)

----------

## 4.3 R packages

[パッケージ | RのパッケージをCRANからインストールする方法と利用方法](http://stat.biopapyrus.net/r/package-function.html)  


Rコンソールではなく、Linuxのコマンドラインから:  


[Bioconductor](http://bioconductor.g.hatena.ne.jp/nakao_mitsuteru/20070618/bioc)プロジェクト

### 4.3.1 Installing and using Bioconductor packages
Bioconductorパッケージのインストールと利用  



Bioconductorパッケージ[`Biobase`](http://bioconductor.org/packages/release/bioc/html/Biobase.html)  



#### Getting data from GEO using the GEOquery package

Bioconductorパッケージ[`GEOquery`](http://bioconductor.org/packages/release/bioc/html/GEOquery.html)を用いて、NCBIの[Gene Expression Omnibus (GEO)](http://www.ncbi.nlm.nih.gov/geo/)からデータをロードする。


`GEOquery`パッケージの`getGEO()`関数を用いて、アクセッション番号[GDS2577](http://www.ncbi.nlm.nih.gov/sites/GDSbrowser?acc=GDS2577)のデータをロードし、オブジェクト`dset`に代入する:  


[`save(), load()`関数](http://www.okadajp.org/RWiki/?R出力の記録#i9ff89a5)



4.1.5項の最後に述べた演算子を用いて、オブジェクトから情報を取り出す例








[**Fig. 4.11** Heatmap and associated dendrograms generated from the first 50 probes from GEO dataset GDS2577.](https://books.google.co.jp/books?id=Yi4UDAAAQBAJ&pg=PA204&lpg=PA204&dq=%22Heatmap+and+associated+dendrograms+generated+from+the+first+50+probes+from+GEO+dataset+GDS2577.%22&source=bl&ots=S_VPBLLjX4&sig=7wcSIstWG3j_oby1Q9nmaoyQQb0&hl=ja&sa=X&ved=0ahUKEwi4uZHVi8LMAhXMi5QKHSjpDlEQ6AEIIzAB#v=onepage&q=%22Heatmap%20and%20associated%20dendrograms%20generated%20from%20the%20first%2050%20probes%20from%20GEO%20dataset%20GDS2577.%22&f=false)

![https://stats.biopapyrus.jp/r/graph/heatmap.html](https://stats.biopapyrus.jp/media/heatmap-01.png)

- [ヒートマップ heatmap | R,マイクロアレイなどの遺伝子発現量の図示などによく使われる](https://stats.biopapyrus.jp/r/graph/heatmap.html)

生データから*ExpressionSet*オブジェクトへ変換する関数を含むBioconductorパッケージ（`affy, arrayMagic, oligo`）はプラットフォームに依存する。

- [Bioconductor — Genomicデータ解析ツール群 — Watallica metallicus](http://meme.biology.tohoku.ac.jp/students/iwasaki/rstats/bioconductor.html)
- [Rによるバイオインフォマティクスデータ解析 ―Bioconductorを用いたゲノムスケールのデータマイニング― 第2版 / 樋口 千洋　著 | 共立出版](http://www.kyoritsu-pub.co.jp/bookdetail/9784320057081)
- [RとBioconductorを用いたバイオインフォマティクス - 研究開発創作日誌](http://d.hatena.ne.jp/nakao_mitsuteru/20070706/mogr_ja_released)
- [RとBioconductorを用いたバイオインフォマティクス[丸善出版]](https://pub.maruzen.co.jp/book_magazine/book_data/search/9784621062500.html)
- [Bioinformatics and Computational Biology Solutions Using R | Robert Gentleman | Springer](http://www.springer.com/us/book/9780387251462)

### 4.3.2 The RMySQL package for database connectivity

    #install.packages("RMySQL")


### 4.3.3 Packages for multivariate classification

    library(MASS)

    # support vector machines
    library(help = e1071) # documentation on package 'e1071'
    library(e1071) # attach package 'e1071'

    # random forests
    #install.packages("randomForest")
    library(randomForest)

    # neural networks
    library(nnet)

### 4.3.4 Writing your own R packages

## 4.4 Integrating Perl and R

## 4.5 Alternatives to R
### 4.5.1 S+
### 4.5.2 Matlab
**Fig. 4.12**  
### 4.5.3 Octave

## 4.6 Summary

## References


----------

# CHAPTER 6 Software engineering for bioinformatics

## 6.1 Unit testing

## 6.5 Alternatives to Perl
### 6.5.1 Python
### 6.5.2 Ruby
### 6.5.3 Java
### 6.5.4 Using Galaxy

[Galaxy - Building Bioinformatics Solutions - Conrad Bessant, Darren Oakley, Ian Shadforth - Google ブックス](https://books.google.co.jp/books?id=40ueAgAAQBAJ&pg=PA326&dq=6.5.4+Using+Galaxy&hl=ja&sa=X&ved=0ahUKEwik9uC9k4vMAhUQwmMKHa81AV0Q6AEIHDAA#v=snippet&q=Galaxy&f=false)

----------

# Appendix A: Using command-line interfaces

## A.1 Getting to the operating system command line
### Opening the Windows command prompt
### Opening a Linux terminal


### Opening a terminal in Mac OS

## A.2 General command-line concepts
### Working directory and path

### Parameters, arguments, options, and switches


## A.3 Command-line tips


----------

----------

 オンライン教材

- [ドットインストール - 3分動画でマスターする初心者向けプログラミング学習サイト](http://dotinstall.com)
- [UNIXコマンド辞典](http://codezine.jp/unixdic/)
- [UNIXの部屋](http://x68000.q-e-d.net/~68user/unix/)
- [UNIX - 会津大学UNIXウィキ](http://technique.sonots.com/?UNIX)
- [Linuxコマンド集：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060223/230520/?TOC=25)
- [Linuxコマンド集 - Linux入門 - Webkaru](http://webkaru.net/linux/cat/command/)

- Genome Biol. 2015 Dec 8; [Five selfish reasons to work reproducibly.](http://www.ncbi.nlm.nih.gov/pubmed/26646147)
- [The five habits of bad bioinformaticians | opiniomics](http://www.opiniomics.org/the-five-habits-of-bad-bioinformaticians/)

- [Free BioInformatics Books Download | Ebooks Online Textbooks](http://www.freebookcentre.net/Biology/BioInformatics-Books.html)
- 2010 [Biochem 218 – BioMedical Informatics 231](http://biochem218.stanford.edu/01Genomics&Bioinformatics.pdf)

- 2015 [Bioinformatics Data Skills](https://github.com/haruosuz/BDS)   [.](http://file.allitebooks.com/20151122/Bioinformatics%20Data%20Skills.pdf)

- 2009 [Computing for Comparative Microbial Genomics: Bioinformatics for Microbiologists](http://link.springer.com/book/10.1007%2F978-1-84800-255-5) [.](http://academy.sbi.kmutt.ac.th/cmg2015/cmg2015_contents/deposit_on_server/CMBbook_Nov2008.pdf)

- 2007.09 [生物系のためのPerlプログラミング](http://www.morikita.co.jp/books/book/2185)
 - 原著 June 2003 [Wiley: Perl Programming for Biologists - D. Curtis Jamison](http://as.wiley.com/WileyCDA/WileyTitle/productCd-0471430595.html) [.](https://ipfs.io/ipfs/QmTmMhRv2nh889JfYBWXdxSvNS6zWnh4QFo4Q2knV7Ei2B/Programming/Perl/Perl%20Programming%20for%20Biologists%20-%20Wiley%202003.pdf)

- March 2006 [Essential Bioinformatics | Genomics Bioinformatics and Systems Biology | Cambridge University Press](http://www.cambridge.org/us/academic/subjects/life-sciences/genomics-bioinformatics-and-systems-biology/essential-bioinformatics) [.](http://www.aun.edu.eg/molecular_biology/Procedure%20Bioinformatics22.23-4-2015/Xiong%20-%20Essential%20Bioinformatics%20send%20by%20Amira.pdf)

- April 2001 [Developing Bioinformatics Computer Skills - O'Reilly Media](http://shop.oreilly.com/product/9781565926646.do) [.](http://www.bio-nica.info/biblioteca/Gibas2001DevelopingBioinformatics.pdf)

----------
