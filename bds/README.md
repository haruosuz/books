Haruo Suzuki (haruo[at]g-language[dot]org)   
Last Update: 2017-11-01

----------

"Bioinformatics Data Skills by Vince Buffalo (O’Reilly). Copyright 2015 Vince Buffalo, 978-1-449-36737-4."  
![](http://akamaicovers.oreilly.com/images/0636920030157/cat.gif)

# Print & Ebook
- [O'Reilly Media](http://shop.oreilly.com/product/0636920030157.do) | [Free Sampler](http://cdn.oreillystatic.com/oreilly/booksamplers/9781449367374_sampler.pdf)（Chapter 1の全文公開）
- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/)（[Preface](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/preface01.html)、[Chapter 1](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch01.html)、[Chapter 4](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch04.html) の全文公開）
- [Bioinformatics Data Skills (2015)](http://apprize.info/data/bioinformatics/index.html)
- [Amazon.co.jp](http://www.amazon.co.jp/dp/1449367372) | [Amazon.com](http://www.amazon.com/dp/1449367372)

# News & Reviews
- [Bioinformatics Data Skills の - Twitter Search](https://twitter.com/search?q=Bioinformatics%20Data%20Skills%20の)
- 2015-09-13 [Twitter competition: win a signed copy of Bioinformatics Data Skills by Vince Buffalo — ACGT](http://www.acgt.me/blog/2015/9/13/twitter-competition-win-a-signed-copy-of-bioinformatics-data-skills-by-vince-buffalo)
- 2015-08-04 [101 questions with a bioinformatician #30: Vince Buffalo — ACGT](http://www.acgt.me/blog/2015/8/4/101-questions-with-a-bioinformatician-30-vince-buffalo)
- 3 months ago [Asking for opinions about Bioinformatics Data Skills book](https://www.biostars.org/p/153594/)
- 2015-02-13 [O'Reilly's early release of "Bioinformatics Data Skills" is 50% off until Feb 18th, use code WKERES : bioinformatics](https://www.reddit.com/r/bioinformatics/comments/2vsplz/oreillys_early_release_of_bioinformatics_data/)
- 2015-04-08 (Rob Denton) [Don’t trust your data: reviewing Bioinformatics Data Skills | The Molecular Ecologist](http://www.molecularecologist.com/2015/04/dont-trust-your-data-reviewing-bioinformatics-data-skills/)
- 2014-04-03 [Reading the early release of "Bioinformatics Data Skills"Musings from a PhD candidate](http://davetang.org/muse/2014/04/03/bioinformatics-data-skills/)

----------

# Bioinformatics Data Skills: Reproducible and Robust Research With Open Source Tools
バイオインフォマティクス・データスキル：オープンソースのツールによる再現可能でロバストな研究  
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files)

----------

# Table of Contents
- [Preface](#preface)

I. Ideology: Data Skills for Robust and Reproducible Bioinformatics  
- [1. How to Learn Bioinformatics](#chapter-1-how-to-learn-bioinformatics)  

II. Prerequisites: Essential Skills for Getting Started with a Bioinformatics Project  
- [2. Setting Up and Managing a Bioinformatics Project](#chapter-2-setting-up-and-managing-a-bioinformatics-project)
- [3. Remedial Unix Shell](#chapter-3-remedial-unix-shell)
- [4. Working with Remote Machines](#chapter-4-working-with-remote-machines)
- [5. Git for Scientists](#chapter-5-git-for-scientists)
- [6. Bioinformatics Data](#chapter-6-bioinformatics-data)

III. Practice: Bioinformatics Data Skills  
- [7. Unix Data Tools](#chapter-7-unix-data-tools)
- [8. A Rapid Introduction to the R Language](#chapter-8-a-rapid-introduction-to-the-r-language)
- [9. Working with Range Data](#chapter-9-working-with-range-data)
- [10. Working with Sequence Data](#chapter-10-working-with-sequence-data)
- [11. Working with Alignment Data](#chapter-11-working-with-alignment-data)
- [12. Bioinformatics Shell Scripting, Writing Pipelines, and Parallelizing Tasks](#chapter-12-bioinformatics-shell-scripting-writing-pipelines-and-parallelizing-tasks)
- [13. Out-of-Memory Approaches: Tabix and SQLite](#chapter-13-out-of-memory-approaches-tabix-and-sqlite)
- [14. Conclusion](#chapter-14-conclusion)

----------

# Preface

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/preface01.html#preface)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-00-preface)

データスキルは、試練を経たオープンソースのツールを利用するので、同じスキルで次世代のデータにも適応できる。

## The Approach of This Book
本書は、ソフトウェアの実行方法は扱わない。  
本書は、複雑で大規模なデータセットから意味を抽出し探索する技術を扱う。  
本書を通して、ロバスト（robust）で再現可能（reproducible）な方法を強調する。

By robust, I mean that your work is resilient against silent errors, confounders, software bugs, and messy or noisy data. In contrast, a fragile approach is one that does not decrease the odds of some type of error adversely affecting your results.

By reproducible, I mean that your work can be repeated by other researchers and they can arrive at the same results. For this to be the case, your work must be well documented, and your methods, code, and data all need to be available so that other researchers have the materials to reproduce everything. 

Reproducibility also relies on your work being robust—if a workflow run on a different machine yields a different outcome, it is neither robust nor fully reproducible.

## Why This Book Focuses on Sequencing Data
本書は、主に配列データを扱う。配列データは豊富にあり、配列データ解析に必要なテキスト処理技術は、他のデータにも適用できる。

## Audience
生物学者と計算機科学者の両方を対象

## The Difficulty Level of Bioinformatics Data Skills
ハード

## Assumptions This Book Makes
前提知識は以下の通り。  

- スクリプト言語（例 [R言語](https://ja.wikipedia.org/wiki/R言語)、[Python](https://ja.wikipedia.org/wiki/Python)、）
- テキストエディタ（例 [Emacs](https://ja.wikipedia.org/wiki/Emacs)、[Vim](https://ja.wikipedia.org/wiki/Vim)、）
- 基本的なUnixコマンドライン技術。ディレクトリ・ファイル操作（[`cd, ls, pwd, mv, rm, rmdir, mkdir`](http://dogandrun.hatenablog.jp/entry/2013/11/30/181606)）。ファイルの所有権とアクセス権の変更（`chown, chmod`）
- 生物学の基礎（DNA、RNA、タンパク質、遺伝子、[セントラルドグマ](https://ja.wikipedia.org/wiki/セントラルドグマ)）  
- [正規表現](https://ja.wikipedia.org/wiki/正規表現)  
- ヘルプやマニュアルの参照。Unixの[`man`](https://ja.wikipedia.org/wiki/Manページ)やRの[`help()`](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/07.html)
- システム管理  

## Supplementary Material on GitHub
[GitHubリポジトリ](https://github.com/vsbuffalo/bds-files)の補足資料を取得する。

## Computing Resources and Setup
例題は、Unix系のOS（Mac OS XやLinux）で動作する。
[パッケージ管理システム](https://ja.wikipedia.org/wiki/パッケージ管理システム)（Ubuntu/Debianの`apt-get`やMac OS Xの[Homebrew](http://brew.sh/index_ja.html)）を使用する。

- [作業環境を整えるMacOSXのパッケージマネージャ「Homebrew」のインストール方法と使い方 | 株式会社LIG](http://liginc.co.jp/web/tool/mac-iphone/151069)
- [MacにHomebrewをインストールする - Qiita](http://qiita.com/_daisuke/items/d3b2477d15ed2611a058)

## Organization of This Book
本書は3部構成：第I部はイデオロギーに関する1章、第II部は基礎編、第III部は実践編。

----------

# Part I. Ideology: Data Skills for Robust and Reproducible Bioinformatics  
第I部. イデオロギー：ロバストで再現可能なバイオインフォマティクスのためのデータスキル  

----------

# Chapter 1. How to Learn Bioinformatics
第1章. バイオインフォマティクスの学び方

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch01.html#chapter-01)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-01-ideology)

## Why Bioinformatics? Biology’s Growing Data
Figure 1-1. DNA配列決定コストの減少 [DNA Sequencing Costs](https://www.genome.gov/about-genomics/fact-sheets/DNA-Sequencing-Costs-Data)  
![](https://www.genome.gov/sites/default/files/inline-images/Sequencing_Cost_per_Megabase_August2019.jpg)
![](https://www.genome.gov/sites/default/files/inline-images/Sequencing_Cost_per_Genome_August2019_0.jpg)

Figure 1-2. [Sequence Read Archive](https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi)の指数的成長  
![](https://trace.ncbi.nlm.nih.gov/Traces/sra/i/g.png)

[ショードリード配列マッピング・ツール](http://www.ebi.ac.uk/~nf/hts_mappers/)
Not Found

- 2015-05-18 [次世代シークエンサーにより得られたデータの解析 : ライフサイエンス 領域融合レビュー](http://leading.lifesciencedb.jp/4-e008)

## Learning Data Skills to Learn Bioinformatics
## New Challenges for Reproducible and Robust Research
## Reproducible Research
再現可能な研究  
データ、コード、ソフトウェアのバージョンとダウンロードした日時を記録する。

## Robust Research and the Golden Rule of Bioinformatics

errors can be silent; プログラムが（エラーで停止するのではなく）出力を生成するが、この出力は正しくない可能性がある。

["garbage in, garbage out"](http://ejje.weblio.jp/content/Garbage+in,+garbage+out.)「ゴミを入れればゴミが出てくる」  

バイオインフォマティクスの黄金律:  

> ###### NEVER EVER TRUST YOUR TOOLS (OR DATA)  
ツールやデータを盲信しない。  

## Adopting Robust and Reproducible Practices Will Make Your Life Easier, Too
## Recommendations for Robust Research
ロバストな研究のススメ  

silent error

### Pay Attention to Experimental Design
[実験計画](https://ja.wikipedia.org/wiki/実験計画法)

![](https://upload.wikimedia.org/wikipedia/ja/thumb/2/2b/実験計画1.gif/220px-実験計画1.gif)
![](https://upload.wikimedia.org/wikipedia/ja/thumb/6/69/実験計画2.gif/220px-実験計画2.gif)

[R・A・フィッシャー](https://ja.wikipedia.org/wiki/ロナルド・フィッシャー)
[「実験が終わった後に統計学者に相談することは、しばしば単に検死を頼むようなものになる。統計学者は、何のせいで実験が死んだのかについて言うことができるかもしれない。」](http://id.fnshr.info/2014/12/17/stats-done-wrong-13/)

### Write Code for Humans, Write Data for Computers
[Style guides for Google-originated open-source projects](https://github.com/google/styleguide)

### Let Your Computer Do the Work For You
ヒトは多くの間違いをする。コンピュータにできるだけ多くの作業をさせる。

### Make Assertions and Be Loud, in Code and in Your Methods
前提条件のチェックに[表明（assertion）](https://ja.wikipedia.org/wiki/表明)を使用する。Pythonの`assert()`やRの`stopifnot()`

### Test Code, or Better Yet, Let Code Test Code
[単体テスト(unit testing)](https://ja.wikipedia.org/wiki/単体テスト)  
例えば、`add()`関数をテストする`test_add()`関数をPythonで書く:  




### Use Existing Libraries Whenever Possible
なるべく既存のライブラリを使う  
歴史が長く、閲覧者が多いので、バグが少ない。

### Treat Data as Read-Only
データを読み取り専用として扱う  
Excelでセルの値を変更して保存するのはダメ。プログラムが、データを読み取り、新しい別の結果ファイルを作成するのが良い。元のファイルを変更してしまうと、再試行・再現できなくなる。

- 2016年08月29日 [Excelが遺伝子研究の誤りのもとになっていると研究者が指摘](http://gigazine.net/news/20160829-excel-gene-name-error/)
 - [Didn't Quite Mean 1-Mar: Reliance on Excel leads to errors in gene name lists](https://www.genomeweb.com/scan/didnt-quite-mean-1-mar)

### Spend Time Developing Frequently Used Scripts into Tools

### Let Data Prove That It’s High Quality
[探索的データ解析 (Exploratory Data Analysis; EDA)](http://www.msi.co.jp/splus/products/eda.html)を通してデータの質を証明する。Chapter 8でR言語を用いてEDAを学ぶ。

## Recommendations for Reproducible Research
再現可能な研究のススメ  

### Release Your Code and Data
データとコードを公開する  

### Document Everything
全て記録する  

[プレーンテキスト](https://ja.wikipedia.org/wiki/プレーンテキスト)形式の[README](https://ja.wikipedia.org/wiki/リードミー)ファイルに解析の各ステップを記録する。  
- Rの[knitr](http://yihui.name/knitr/)  
- [iPython Notebooks](http://ipython.org/notebook.html)  

### Make Figures and Statistics the Results of Scripts
図表を出力するスクリプトを書く   

### Use Code as Documentation
ドキュメントとしてコードを使用する

## Continually Improving Your Bioinformatics Data Skills

----------

# Part II. Prerequisites: Essential Skills for Getting Started with a Bioinformatics Project  
第II部. 前提条件：バイオインフォマティクス・プロジェクト入門のための必須スキル  

----------

# Chapter 2. Setting Up and Managing a Bioinformatics Project
第2章. バイオインフォマティクス・プロジェクトの作成と管理

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch02.html#chapter-02)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-02-bioinformatics-projects)

本章では、バイオインフォマティクス・プロジェクトのディレクトリを整理し、プレーンテキスト形式のMarkdownファイルを用いて作業を記録する方法を扱う。

## Project Directories and Directory Structures
プロジェクト・ディレクトリの構造  

- [計算生物学のプロジェクトの管理法入門 (Noble 2009)](http://5hun.github.io/quickguide_ja/)

プロジェクトの全ファイルを1つのディレクトリに格納する。

例えば、トウモロコシ（学名*Zea mays*）の[SNP](https://ja.wikipedia.org/wiki/一塩基多型)検出プロジェクトのディレクトリ（`zmays-snps/`）を作成する:  


- `data/`ディレクトリにデータを格納する。
- `scripts/`ディレクトリにスクリプトを格納する。
- `analysis/`ディレクトリに解析結果を格納する。

> ###### What’s in a Name?  
ファイル（ディレクトリ）名には、
[スペース](https://ja.wikipedia.org/wiki/スペース)（空白）を使わない、
英数字かアンダースコアかダッシュ（ A-z a-z 0-9 _ - ）を使う。
拡張子を付ける。（例 *osativa-genes.fasta*）  

スクリプトがプロジェクト・ディレクトリ内の他のファイルを参照する場合には、絶対パス（例 `/home/vinceb/projects/zmays-snps/data/stats/qual.txt`）ではなく、相対パス（例 `../data/stats/qual.txt`）を使う。

- [絶対パスと相対パス](http://codezine.jp/unixdic/w/絶対パスと相対パス)
- [#05 ディレクトリを移動する (2) | UNIXコマンド入門 (一般ユーザー編) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_unix/5405)

## Project Documentation
プロジェクトの記録  

記録する情報の例は以下の通り。  

- 方法とワークフロー。全コマンドラインをコピー＆ペースト。デフォルト値も
- データの入手元（ウェブサイトのURL等）
- データをダウンロードした日付
- データのバーション（例 [TAIR10](https://www.arabidopsis.org/download_files/Genes/TAIR10_genome_release/README_TAIR10.txt)、[WS231](https://www.wormbase.org/about/wormbase_release_WS231)）
- データのダウンロード方法（例 [MySQL](https://ja.wikipedia.org/wiki/MySQL)、[UCSC Genome Browser](https://genome.ucsc.edu)）
- ソフトウェアのバーション（なければ、日付やURL）

以上の情報を[プレーンテキスト](https://ja.wikipedia.org/wiki/プレーンテキスト)形式の[README](https://ja.wikipedia.org/wiki/リードミー)ファイルに記録する。プレーンテキストはコマンドラインから簡単に読込・検索・編集できる。  

`README`ファイルはプロジェクトの主ディレクトリに格納する。

`data/README`ファイルに、`data/`ディレクトリのデータファイルの説明（いつ・どこから・どのようにダウンロードしたのか）を記載する。[`touch`](https://ja.wikipedia.org/wiki/Touch_%28UNIX%29)コマンドでサイズが0の空ファイルを作成する:   


## Use Directories to Divide Up Your Project into Subprojects
プロジェクトをサブプロジェクトに分割するディレクトリを作成

## Organizing Data to Automate File Processing Tasks
ファイル処理を自動化するために、データをサブディレクトリに編成し、明確で一貫性のあるファイル名を付ける。  

> ###### Shell Expansion Tips シェルの展開  
`cd ~`でホームディレクトリに移動。ワイルドカードのアスタリスク（\*）は全ての文字列にマッチする。  
Brace expansion ブレース展開の例:  
> zmays-snps/プロジェクト・ディレクトリを作成:  

- [Bash - Brace Expansionが便利](http://qiita.com/__nagamee/items/bec89945f70f5dffe9c5)

- [#12 ワイルドカードについて | UNIXコマンド入門 (一般ユーザー編) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_unix/5412)

3つのサンプル（`zmaysA, zmaysB, zmaysC`）毎にペア（`R1, R2`）の空データファイルを作成する:  


[ワイルドカード](http://ja.wikipedia.org/wiki/ワイルドカード_%28情報処理%29)のアスタリスク（\*）を用いて、サンプル名`zmaysB`を持つ全てのファイルを表示する:  


> ###### Wildcards and "Argument list too long"  

偶然の一致を避けるために、ワイルドカードを可能な限り限定する。例えば、`zmaysB*`の代わりに、`zmaysB*fastq`または`zmaysB_R?.fastq`を用いる（`?`は任意の1文字）。

    cd seqs/

文字列`[AB]`や文字の範囲`[A-B]`にマッチするワイルドカードを用いて、サンプルCを排除する:  


ワイルドカードは存在するファイルを展開するのに対して、brace expansion（例 `snps_{10..13}.txt`）はファイルやディレクトリが存在するか否かに関係なく展開する。



Table 2-1. Unixのワイルドカード


> ###### Leading Zeros and Sorting  
ファイル名の先頭に0を付ける（例 *file-21.txt*ではなく*file-0021.txt*にする）と、`ls`で辞書順にファイルがソートされる。  
`touch gene-{1..14}.txt`  
`printf "gene-%03d.txt " {1..14} | xargs touch`  

## Markdown for Project Notebooks
プレーンテキスト形式で書かれたプロジェクト・ノートは、コマンドラインやネットワーク経由で読込・検索・編集できる。

[Markdown](https://ja.wikipedia.org/wiki/Markdown)（マークダウン）

- [Markdown記法入門 (全8回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_markdown)
- [MarkdownでMarkdownの書き方を書いてみた](http://qiita.com/oreo/items/82183bfbaac69971917f)
- [README.mdファイル。マークダウン記法まとめ | codechord](http://codechord.com/2012/01/readme-markdown/)
- [ディレクターが知っておいて欲しい10個のMarkdown-マークダウン記法 - PHPサンプル実験室](http://php-fan.org/markdown.html)

### Markdown Formatting Basics
John Gruberのホームページ（[Daring Fireball: Markdown Syntax Documentation](http://daringfireball.net/projects/markdown/syntax)）  

Figure 2-1. [Markdownノート](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-02-bioinformatics-projects/notebook.md)の[HTML表示](https://github.com/vsbuffalo/bds-files/blob/master/chapter-02-bioinformatics-projects/notebook.md)  

Table 2-2. Markdown記法


見出し（Header）、リスト、コードの書き方

見出しのレベル（1～6）は、#の個数で表す:  


リストは、行頭にダッシュ（-）、アスタリスク（*）、プラス（+）か、番号ピリオド（1.）:  


コードは、行頭に「半角スペースを4つ」か「タブを1つ」を追加:  



リストの項目内にコードを配置する場合、「半角スペースを8つ」か「タブを2つ」にする。





[MultiMarkdown](http://fletcherpenney.net/multimarkdown/)  
[GitHub Flavored Markdown - User Documentation](https://help.github.com/articles/github-flavored-markdown/)  

### Using Pandoc to Render Markdown to HTML
[Pandocのインストール](http://pandoc.org/installing.html)  


----------

# Chapter 3. Remedial Unix Shell
第3章. Unixシェル

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch03.html#chapter-03)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-03-remedial-unix)

本章では、[ストリーム](https://ja.wikipedia.org/wiki/標準ストリーム)、[リダイレクト](https://ja.wikipedia.org/wiki/リダイレクト_%28CLI%29)、[パイプ](https://ja.wikipedia.org/wiki/パイプ_%28コンピュータ%29)、[プロセス](https://ja.wikipedia.org/wiki/プロセス)、コマンド置換（[command substitution](https://en.wikipedia.org/wiki/Command_substitution)）を扱う。

- [シェルの概念と機能](http://www.cc.kyoto-su.ac.jp/~hirai/text/shell.html)

## Why Do We Use Unix in Bioinformatics? Modularity and the Unix Philosophy
[UNIX哲学](https://ja.wikipedia.org/wiki/UNIX哲学)  

- [UNIXという考え方 - Strategic Choice](http://d.hatena.ne.jp/asakichy/20101029/1288312323)

> ###### The Many Unix Shells  
`bash`を使う。  
`echo $SHELL` (`echo $0`) で現在のシェルを確認  
`chsh`でログインシェルを変更  


## Working with Streams and Redirection
[ストリーム](https://ja.wikipedia.org/wiki/標準ストリーム)と[リダイレクト](https://ja.wikipedia.org/wiki/リダイレクト_%28CLI%29)

- [標準入力、標準出力、標準エラー出力、パイプとは ?](http://www.creatology.jp/unix/outin.html)

### Redirecting Standard Out to a File
標準出力をファイルにリダイレクト  

タンパク質のアミノ酸配列データを記述した[FASTA](https://ja.wikipedia.org/wiki/FASTA)形式ファイル
[*tb1-protein.fasta*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-03-remedial-unix/tb1-protein.fasta)と
[*tga1-protein.fasta*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-03-remedial-unix/tga1-protein.fasta)を見る。


[`cat`](https://ja.wikipedia.org/wiki/Cat_%28UNIX%29)コマンドで *tb1-protein.fasta* ファイルを標準出力する:  


複数のファイルを標準出力する:  


記号`>`（上書き）や`>>`（追記）で標準出力をファイルにリダイレクトする:  


[Figure 3-1.](https://books.google.co.jp/books?id=XxERCgAAQBAJ&pg=PA43&lpg=PA43&dq=%22Figure+3-1.+(a)+Unredirected+standard+output,+standard+error,+and+standard+input+(the+gray+box+is+what+is+printed+to+a+user’s+terminal);+(b)+standard+output+redirected+to+a+file%22&source=bl&ots=4ps53nbPxr&sig=5vmHtdDOQ_cIvQulN8cUsGISXKQ&hl=ja&sa=X&ved=0ahUKEwiF6p_slNTPAhXGn5QKHTheBVgQ6AEIHjAA#v=onepage&q=%22Figure%203-1.%20(a)%20Unredirected%20standard%20output%2C%20standard%20error%2C%20and%20standard%20input%20(the%20gray%20box%20is%20what%20is%20printed%20to%20a%20user’s%20terminal)%3B%20(b)%20standard%20output%20redirected%20to%20a%20file%22&f=false)

`ls -lrt`で更新日時の逆順にソートする（詳細は`man ls`を参照）。

- [lsコマンドの結果をソート（昇順）する｜Linux Tips](http://www.linuxmaster.jp/linux_skill/2008/06/ls.html)
- [lsコマンドで便利なオプションはlとaだけではない](http://blog.layer8.sh/ja/2013/02/18/ls-l-a/)

### Redirecting Standard Error
標準エラー出力をリダイレクト  

`ls -l tb1.fasta leafy1.fasta`を実行すると、存在するファイル（*tb1.fasta*）は標準出力に、存在しないファイル（*leafy1.fasta*）は標準エラー出力に送られる。  
記号`>`と`2>`を用いて、標準出力（standard output）と標準エラー出力（standard error）を別のファイルにリダイレクトする:  


記号`2>`は上書き、`2>>`は追記。

> ###### File Descriptors  
> [ファイル記述子](https://ja.wikipedia.org/wiki/ファイル記述子)
> `2>`  

[擬似デバイス](https://ja.wikipedia.org/wiki/デバイスファイル)（*pseudodevice*）の */dev/null* は、あらゆる入力を受け付けて捨てる。

> ###### Using tail -f to Monitor Redirected Standard Error  
`tail -f`でリダイレクトされた標準エラー出力を監視する。Control-Cで動作中のプロセスを停止。  

### Using Standard Input Redirection
標準入力リダイレクト演算子`<`よりも、Unixパイプ（例 `cat inputfile | program > outputfile`）を使う方が一般的。


## The Almighty Unix Pipe: Speed and Beauty in One

[Figure 3-2.](https://books.google.co.jp/books?id=XxERCgAAQBAJ&pg=PA46&lpg=PA46&dq=%22Figure+3-2.+Piping+standard+output+from+program1+to+program2;+standard+error+is+still+printed+to+the+user’s+terminal%22&source=bl&ots=4ps53nbRpu&sig=FwklJMhpJPAlFwJYJqezgqwiGng&hl=ja&sa=X&ved=0ahUKEwiiwNemldTPAhXFn5QKHfY6BsoQ6AEIHjAA#v=onepage&q=%22Figure%203-2.%20Piping%20standard%20output%20from%20program1%20to%20program2%3B%20standard%20error%20is%20still%20printed%20to%20the%20user’s%20terminal%22&f=false)

### Pipes in Action: Creating Simple Programs with Grep and Pipes
[パイプ](https://ja.wikipedia.org/wiki/パイプ_%28コンピュータ%29)と[`grep`](https://ja.wikipedia.org/wiki/Grep)を用いて、FASTAファイルに含まれるATGC以外の文字を探す:  


ハイライトされたYはpYrimidine塩基[CT]を示す（[Nucleic acid notation](https://en.wikipedia.org/wiki/Nucleic_acid_notation)）。
正規表現はクオーテーションで囲む（例 `">"`）。`grep -v > tb1.fasta`とした場合、シェルは`>`をリダイレクト演算子と解釈し、ファイルを上書きしてしまう！

- [#14 grepを使ってみよう | UNIXコマンド入門 (一般ユーザー編) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_unix/5414)

### Combining Pipes and Redirection


`2>&1`演算子は標準エラー出力を標準出力にリダイレクトする:  


### Even More Redirection: A tee in Your Pipe
[`tee`](https://ja.wikipedia.org/wiki/Tee_%28UNIX%29)


## Managing and Interacting with Processes
[プロセス](https://ja.wikipedia.org/wiki/プロセス)操作の基本：バックグラウンドでプロセスを実行・管理、プロセスを強制終了、プロセスの終了ステータスを確認

- [9. プロセス操作コマンド](http://freebsd.sing.ne.jp/unix/09.html)
- [Linux_コマンドリファレンス_10 プロセスとジョブの管理](http://www.x-net.nu/technical/linux/command/t_linux_com10.html)

### Background Processes
- [Linuxコマンド集 - 【 & 】 コマンドをバックグラウンドで実行する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060224/230589/)
- [バックグラウンドプロセス(ジョブ)の管理 - satake7’s memo](http://d.hatena.ne.jp/satake7/20080606/p1)

コマンドの末尾にアンパサンド（`&`）を追加して、プログラムをバックグラウンドで実行する:  


[1]はジョブ番号、26577は[プロセスID（PID）](https://ja.wikipedia.org/wiki/プロセス識別子)。
[`jobs`](http://codezine.jp/unixdic/w/jobs)でバックグランド・ジョブを表示する:  


[`fg`](http://codezine.jp/unixdic/w/fg)でバックグラウンド・プロセスをフォアグラウンド（foreground）へ戻す。`fg %ジョブ番号`で指定。バックグラウンド・プロセスが1つしかない場合には、`fg`と`fg %1`は同じ:  


> ###### Background Processes and Hangup Signals  
バックグラウンドのプロセスが[ハングアップ・シグナル](https://ja.wikipedia.org/wiki/シグナル_%28ソフトウェア%29)（SIGHUP） を受け付けないようにするには、`nohup`を使うか、Tmux内で走らせる。Chapter 4で詳細に述べる。  

Control-z キーで中断させたジョブを
[`bg`](http://codezine.jp/unixdic/w/bg)コマンドを用いてバックグラウンド（background）で再開:  


複数の実行中のプロセスがある場合、バックグラウンドで再開させるジョブを`bg %ジョブ番号`で指定する。

### Killing Processes
[`top`](http://codezine.jp/unixdic/w/top)、
[`ps`](http://codezine.jp/unixdic/w/ps)、
[`kill`](http://codezine.jp/unixdic/w/kill)コマンド。
[GitHub上の本章の*README*](https://github.com/vsbuffalo/bds-files/tree/master/chapter-03-remedial-unix)を参照されたい。

- [ps コマンド | コマンドの使い方(Linux) | hydroculのメモ](https://hydrocul.github.io/wiki/commands/ps.html)
- [「ps aux」コマンドで表示される項目の意味を知りたい](http://www.itmedia.co.jp/help/tips/linux/l0158.html)

### Exit Status: How to Programmatically Tell Whether Your Command Worked
[終了ステータス](https://ja.wikipedia.org/wiki/終了ステータス)（exit status）　慣習的に正常終了時はゼロ、異常終了時はゼロ以外を返すのが一般的である

> ###### Warning Exit Statuses  

終了ステータスの値は、シェルの特殊変数`$?`に設定される。  


終了ステータスを判定してコマンドを実行する。  

`&&`は、コマンドが成功した場合のみ次のコマンドを実行する:  


`||`は、コマンドが失敗した場合のみ次のコマンドを実行する:  


- [終了ステータス - UNIX & Linux コマンド・シェルスクリプト リファレンス](http://shellscript.sunone.me/exit_status.html)
- [シェルの小ネタ： 終了ステータス - 玉虫色に染まれ！](http://d.hatena.ne.jp/over80/20100512/shell)

`&&`と`||`をテストするのに、正常終了[`true`](https://ja.wikipedia.org/wiki/True_%28UNIX%29)または異常終了[`false`](https://ja.wikipedia.org/wiki/False_%28UNIX%29)を返すUnixコマンドを用いる:



## Command Substitution
- [bash Tips - コマンド置換と算術式展開、パラメータ展開](http://qiita.com/mashumashu/items/bbc3a79bc779fe8c4f99)

コマンド置換 - \`command\`ではなく$(command)を使う。なぜか？[ネスト](https://ja.wikipedia.org/wiki/ネスティング)できるから。


`date +%F`コマンドを用いて日付ディレクトリを作成する:  


このディレクトリ名は年代順にソートされる:  


> ###### Storing Your Unix Tricks  
`add alias`を用いて *~/.bashrc*（Mac OS Xでは *~/.profile*）ファイルに追加する。例えば、常に同じディレクトリ構造のプロジェクト・ディレクトリを作成する:  


----------

# Chapter 4. Working with Remote Machines
第4章. リモートマシンの操作

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch04.html#chapter-04)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-04-working-with-remote-machines)

## Connecting to Remote Machines with SSH
*secure shell (SSH)*


IPアドレスを用いてマシンに繋げるには `ssh 192.169.237.42`  

ポートとユーザー名を指定する:  


ホストに接続できない場合、`ssh -v`でデバッグする。verboseの`-v`は`-vv`や`-vvv`でより冗長に。詳細は、`man ssh`。

- [管理者必見！ ネットワーク・コマンド集 - sshコマンド：ITpro](管理者必見！ ネットワーク・コマンド集 - sshコマンド：ITpro)｜-v	デバッグ・モードを有効にする。このオプションは最大三つまで重ねて指定できる。重ねていけば，より詳細な情報が出力される。
- [入門OpenSSH / 第7章 うまくいかない時は](http://www.unixuser.org/~euske/doc/openssh/book/chap7.html)｜ssh をデバッグモードで実行する

> ###### Storing Your Frequent SSH Hosts  
*~/.ssh/config*ファイルを作る:  

    Host bio_serv
         HostName 192.168.237.42
         User cdarwin
         Port 50453

リモートホストのデフォルトと同じなら`Port`と`User`を指定する必要は無い。`ssh -p 50453 cdarwin@192.169.237.42`とタイプする代わりに、エイリアス`ssh bio_serv`を用いて*192.168.236.42*にSSH接続できる。

`hostname`コマンドは、ホスト名を表示する。  
`whoami`コマンドは、ユーザー名を表示する。  

## Quick Authentication with SSH Keys
- [Linuxコマンド【 ssh-keygen 】認証用の鍵を生成 - Linux入門 - Webkaru](http://webkaru.net/linux/ssh-keygen-command/)
- [Linuxコマンド集 - 【 ssh-keygen 】 SSH用の公開かぎ、秘密かぎのペアを作成する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230890/)
- [Linux - ssh公開鍵認証設定まとめ - Qiita](http://qiita.com/iruseira/items/af8550fea92b5c5f7fca)

`ssh-keygen`コマンドを用いて、秘密鍵（*~/.ssh/id_rsa*）と公開鍵（*~/.ssh/id_rsa.pub*）を生成する。


リモートホストにログインして、*~/.ssh/authorized_keys*に公開鍵ファイル（*id_rsa.pub*）の内容を追加する。`ssh-copy-id`コマンドを用いて自動登録も可能。

- [ssh-agentの使い方 - Qiita](http://qiita.com/isaoshimizu/items/84ac5a0b1d42b9d355cf)


## Maintaining Long-Running Jobs with nohup and tmux
*ハングアップ*シグナル（`SIGHUP`）  
`nohup`とTmux  

- [nohup](http://codezine.jp/unixdic/w/nohup)　ハングアップに反応しないようにしてコマンドを実行する
- [Linuxコマンド集 - 【 nohup 】 ログアウトした後もコマンドを実行し続ける：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230850/)
- [プロセス管理 — nohup, disown, kill — Watallica metallicus](http://meme.biology.tohoku.ac.jp/students/iwasaki/dev/nohup.html)
- [tmux — 仮想端末でリモート仕事を安全に — Watallica metallicus](http://meme.biology.tohoku.ac.jp/students/iwasaki/dev/tmux.html)
- [tmuxに慣れてみる: tmuxとGNU screenの違いなど](http://rcmdnk.github.io/blog/2015/01/02/computer-tmux-screen/)
- [tmux入門 (全10回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_tmux)

### nohup


`nohup`は、[プロセスID（PID）](https://ja.wikipedia.org/wiki/プロセス識別子)を返す。

## Working with Remote Machines Through Tmux
terminal multiplexer：[Tmux](https://wiki.archlinuxjp.org/index.php/Tmux)と[GNU Screen](https://ja.wikipedia.org/wiki/GNU_Screen)

### Installing and Configuring Tmux

- [Macにtmuxを導入する - Qiita](http://qiita.com/michiomochi@github/items/4bf8e34a91bbf3d9af20)

TmuxをMac OS XにHomebrewでインストールする:  


設定ファイル（[*.tmux.conf*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-04-working-with-remote-machines/.tmux.conf)）をホームディレクトリに置く。シェルが設定を *~/.profile* や *~/.bashrc* から読み込むように、Tmuxは設定を *~/.tmux.conf* から読み込む。

### Creating, Detaching, and Attaching Tmux Sessions

- [GNU Screenライクなtmuxのセッション管理 アタッチとデタッチ](http://kaworu.jpn.org/kaworu/2009-10-25-1.php)
- [tmuxの基本的な使い方とコマンドのまとめ - TASK NOTES](http://www.task-notes.com/entry/20150711/1436583600)

Tmuxの新しいセッションを開始する:  


Tmuxのプレフィックスキー（キーバインド）は、デフォルトではControl-bを用いるが、設定ファイル（[*.tmux.conf*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-04-working-with-remote-machines/.tmux.conf)）でControl-aに変更した。


セッションのデタッチは Control-a d

セッションの確認: `tmux list-sessions`

セッションのアタッチ: `tmux a`


### Working with Tmux Windows

Tmuxのマニュアルページを見る: `man tmux`

Table 4-1. Tmuxの基本的キー操作

Table 4-2. Tmuxの基本的コマンド

Emacsで、文字通り Control-a を入力するには、Control-a a とする。

----------

# Chapter 5. Git for Scientists
第5章. 科学者のためのGit

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch05.html#chapter-05)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-05-git-for-scientists)

## Why Git Is Necessary in Bioinformatics Projects
### Git Allows You to Keep Snapshots of Your Project
### Git Helps You Keep Track of Important Changes to Code
### Git Helps Keep Software Organized and Available After People Leave

## Installing Git
Gitのインストールは、Mac OS XでHomebrew (`brew install git`)を、Linuxで`apt-get` (`apt-get install git`)を使う。[Git website](http://git-scm.com)

## Basic Git: Creating Repositories, Tracking Files, and Staging and Committing Changes

- [git入門 (全22回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_git)

### Git Setup: Telling Git Who You Are



### git init and git clone: Creating Repositories


[Seqtk (SEQuence ToolKit)](https://github.com/lh3/seqtk)



### Tracking Files in Git: git add and git status Part I



### Staging Files in Git: git add and git status Part II

Figure 5-1.



### git commit: Taking a Snapshot of Your Project


テキストエディタを変更


> ###### Some Advice on Commit Messages  
>  

`git commit -a -m "your commit message"`

### Seeing File Differences: git diff

例えば、README.mdファイルに一行追加して、`git diff`を実行:


ファイルをステージすると、`git diff`は何も出力しない。


直近のコミット　比較


### Seeing Your Commit History: git log


> ###### git log and Your Terminal Pager  


クローンしたseqtkリポジトリで`git log`

### Moving and Removing Files: git mv and git rm


### Telling Git What to Ignore: .gitignore

無視させたいファイルを記載した *.gitignore* ファイルを作成:  


*.gitignore* ファイルをステージし、コミット:  


バイオインフォマティクス・プロジェクトで無視させたいファイルの例:  
- 巨大なファイル
- 中間ファイル（SAMやBAMファイル）
- テキストエディタ（EmacsやVim）の一時ファイル（例 *textfile.txt~* や *#textfile.txt#*）。*.gitignore* ではワイルドカード（`*~`や`\#*\#`）が使える。
- 一時コードファイル（Pythonの*overlap.pyc*）

Mac OS Xで作成される隠しファイル *.DS_Store*

グローバルな*.gitignore*ファイルを*~/.gitignore_global*に作成し、これを使用するようにGitを設定する:  


### Undoing a Stage: git reset



## Collaborating with Git: Git Remotes, git push, and git pull

Figure 5-3. git push (a); git clone (b)  
Figure 5-4. git push (a); git pull (b)  

### Creating a Shared Central Repository with GitHub
[the Create a New Repository page](https://github.com/new)  
zmays-snps

### Authenticating with Git Remotes


### Connecting with Git Remotes: git remote



`git remote rm <repository-name>`

### Pushing Commits to a Remote Repository with git push


### Pulling Commits from a Remote Repository with git pull


両リポジトリは同じコミットを持つ　`git log`で確認

オリジナルのzmays-snps/ローカル・リポジトリのファイルを修正し、コミットし、pushする:


Barbaraのリポジトリ (zmays-snps-barbara) で、セントラル・リポジトリからpullする。


Barbaraのリポジトリが最新のコミットを含むことを`git log`で確認


### Working with Your Collaborators: Pushing and Pulling

    echo -e "\n\nMaize reference genome version: refgen3" >> README.md



### Merge Conflicts

~/projects/zmays-snps-barbara/README.md


    git commit -a -m "added ref genome download date and link"
    git push origin master

~/projects/zmays-snps/README.md



    git commit -a -m "added reference download date"

    # 1st step

    # 2nd step
    cat README.md




    # 3rd step
    git push origin master

~/projects/zmays-snps-barbara/README.md


Figure 5-5


### More GitHub Workflows: Forking and Pull Requests

フォークとプルリクエスト

## Using Git to Make Life Easier: Working with Past Commits
### Getting Files from the Past: git checkout




### Stashing Your Changes: git stash

    echo -e "\\nAdapter file: adapters.fa" >> README.md

### More git diff: Comparing Commits and Files


> ###### SPECIFYING REVISIONS RELATIVE TO HEAD  

### Undoing and Editing Commits: git commit --amend


## Working with Branches

- [ブランチとは【ブランチ】 | サルでもわかるGit入門 〜バージョン管理を使いこなそう〜 | どこでもプロジェクト管理バックログ](http://www.backlog.jp/git-guide/stepup/stepup1_1.html)

### Creating and Working with Branches: git branch and git checkout


隣のアスタリスクは、現在いるブランチを示す。


README.mdを編集:  





この変更をreadme-changesブランチにコミットする。masterブランチに戻り、このコミットが存在しないことを確認する:  


masterブランチに戻り、adapters.faファイルを追加し、この変更をコミットする:  

    echo -e ">adapter-1\\nGATGATCATTCAGCGACTACGATCG" >> adapters.fa

今、両方のブランチに新しいコミットがある。Figure 5-6.


#### Merging Branches: git merge


テキスト・エディタが開く。



#### Branches and Remotes


~/projects/zmays-snps-barbara/README.md

    git branch new-methods

~/projects/zmays-snps/README.md


    echo -e "\\n(1) trim adapters\\n(2) quality-based trimming" >> methods.md


## Continuing Your Git Education

`git checkout` 変更したファイルを戻す  
`git stash` 修正をいったん退避する  
`git branch` ブランチ操作  

Scott ChaconとBen Straubの[Pro Git book](http://git-scm.com/book/en/v2)

- [Gitでやらかした時に使える19個の奥義](http://qiita.com/muran001/items/dea2bbbaea1260098051)
- [Git コマンドまとめ](http://qiita.com/merrill/items/375b20de0a5dbc35265d)
- [git初心者への道 - お仕事で困らないレベルまでググっとします。](https://gist.github.com/yatemmma/6486028)

----------

# Chapter 6. Bioinformatics Data
第6章. バイオインフォマティクス・データ

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch06.html#chapter-06)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-06-bioinformatics-data)

大規模で複雑なゲノム・データの課題:  
- Retrieving data データの取得
- Ensuring data integrity データ完全性の確保
- Compression 圧縮

## Retrieving Bioinformatics Data
### Downloading Data with wget and curl
`wget`と`curl`は、データをウェブからダウンロードするコマンドラインのプログラム。パッケージ管理システム（Homebrewや`apt-get`）でインストールできる。

#### wget
[`wget`](https://ja.wikipedia.org/wiki/GNU_Wget)を用いて、GRCh37（hg19）ヒト22番染色体をダウンロードする:  


HTTP or FTP の認証は `wget`の`--user=`と`--ask-password`オプションを用いる。

`wget`は再帰的に(*recursively*)データをダウンロードできる。
ウェブページからGTFファイルを全てダウンロードする:  


`man wget`でオプション一覧を見る。  

Table 6-1. wgetのオプション


- [ダウンロードコマンドwgetのオプション一覧(linux)](http://blog.layer8.sh/ja/2012/03/31/wget_command/)
- [wget - UNIX/Linuxコマンド - IT専科](http://www.itsenka.com/contents/development/unix-linux/wget.html)

#### Curl
- [Linuxコマンド集 - 【curl】ファイルのダウンロードやアップロードを行う：ITpro](http://itpro.nikkeibp.co.jp/atcl/column/14/230520/080400003/)

[`curl`](https://ja.wikipedia.org/wiki/CURL)は、デフォルトでは標準出力するので、`wget`と同じようにするには、リダイレクトする（または`-O <filename>`を使う）:  


`curl`は`wget`よりも多くのプロトコル [SFTP (secure FTP) や SCP (secure copy) を含む] を用いてファイルを転送できる。
`-L/--location`オプション。
[RCurl](https://cran.r-project.org/web/packages/RCurl/index.html)と[pycurl](http://pycurl.sourceforge.net/doc/)はCurlの機能を提供する（[ラッパー](http://e-words.jp/w/ラッパー.html)）。

## Rsync and Secure Copy (scp)
- [Rsync](https://ja.wikipedia.org/wiki/Rsync)
 - [Command Technica：はじめてrsyncを使う方が知っておきたい6つのルール (1/2)](http://www.itmedia.co.jp/enterprise/articles/0804/21/news013.html)
 - [Linuxコマンド【 rsync 】高速なファイル同期（バックアップ） - Linux入門 - Webkaru](http://webkaru.net/linux/rsync-command/)
 - [rsync でディレクトリの同期（バックアップ） - maruko2 Note.](http://www.maruko2.com/mw/rsync_でディレクトリの同期（バックアップ）)

`-avz`オプションで、`-a`は`wrsync`のアーカイブモード（`-rlptgoD`と同じ）、`-z`はデータを圧縮、`-v`は経過を表示。SSHでリモートホストに繋ぐので、`-e ssh`を用いる。ディレクトリをコピーするコマンドは以下の通り:  


末尾のスラッシュを追加するか否か (例えば、*data/* と *data*) で挙動が変わる。

[Secure copy (`scp`)](https://ja.wikipedia.org/wiki/Secure_copy)

例えば、GTFファイルを192.168.237.42:/home/deborah/zea_mays/data/に転送する:  


## Data Integrity
[データ完全性](https://ja.wikipedia.org/wiki/データ完全性)

[チェックサム](https://ja.wikipedia.org/wiki/チェックサム)で転送データの整合性を検証。

### SHA and MD5 Checksums
[MD5](https://ja.wikipedia.org/wiki/MD5)と[SHA-1](https://ja.wikipedia.org/wiki/SHA-1)チェックサム

SHA-1チェックサム。`shasum`（一部のシステムでは`sha1sum`）プログラムに任意の文字列を渡す:  


`md5sum`（Mac OS Xでは`md5`）プログラムはMD5ハッシュ値を計算する。

- [MacでMD5, SHA1を確認する。](http://qiita.com/norioc/items/8f57744da8a8dd5fbc6c)
- [Linuxコマンド【 md5sum 】MD5チェックサムを計算・チェック - Linux入門 - Webkaru](http://webkaru.net/linux/md5sum-command/)

## Looking at Differences Between Data
データの違いを見る

[`diff`](https://ja.wikipedia.org/wiki/Diff)コマンドで
[*gene-1.bed*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-06-bioinformatics-data/gene-1.bed)と
[*gene-2.bed*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-06-bioinformatics-data/gene-2.bed)
ファイルの差分を出力する:  


`patch`
- [diff & patch コマンドでのパッチを適用する方法 - hogehoge foobar Blog Style5](http://d.hatena.ne.jp/mrgoofy33/20101019/1287500809)
- [すえん学録: Linuxでのパッチの作り方(diff)と使い方(patch)](http://suen-study.blogspot.jp/2011/02/linuxdiffpatch.html)

## Compressing Data and Working with Compressed Data
データの圧縮

### gzip
[gzip](https://ja.wikipedia.org/wiki/Gzip)

- [Linuxコマンド集 - 【 gzip 】 ファイルを圧縮・展開する（拡張子.gz）：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230791/)

`gzip`を用いて、`trimmer`（架空のプログラム）の出力を、ディスクに書き込む前に、圧縮する:  


`gzip`コマンドで圧縮:  


`gunzip`コマンドで解凍:  


`-c`オプションを用いて圧縮・解凍の結果を標準出力に書き出す:  


解凍しないで圧縮ファイルに結合する:  


*concatenated*
`man tar`

### Working with Gzipped Compressed Files
圧縮ファイルを直接操作できるコマンドは、`zgrep`、`zcat`（Mac OS Xでは`gzcat`）、`zdiff`、`zless`


## Case Study: Reproducibly Downloading Data

[Ensemblのウェブサイト](http://www.ensembl.org)の [Mouse](http://www.ensembl.org/Mus_musculus/Info/Index) の "Download DNA sequence (FASTA)" <ftp://ftp.ensembl.org/pub/release-82/fasta/mus_musculus/dna/> を開く。
[Genome Reference Consortium](http://www.ncbi.nlm.nih.gov/projects/genome/assembly/grc/) 
GRCm38マウス参照ゲノムを`wget`でダウンロードする:  


`zgrep`コマンドを用いて正規表現"^>"で圧縮ファイルのFASTAヘッダを確認:  


EnsemblのCHECKSUMSファイルと比較:  


SHA-1サムを計算:  


GTFとCHECKSUMSをEnsemblからダウンロード:  


CHECKSUMSファイルと比較し、SHA-1サムを計算:  


Markdownノート（README.md）の例:  






----------

# Part III. Practice: Bioinformatics Data Skills  
第III部. 実践：バイオインフォマティクス・データスキル  

----------

# Chapter 7. Unix Data Tools
第7章. Unixのデータ・ツール

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch07.html#chapter-07)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-07-unix-data-tools)

## Unix Data Tools and the Unix One-Liner Approach: Lessons from Programming Pearls
Unixコマンドをパイプで繋ぐことにより、データをパースし操作し集計する1行プログラム（ワンライナー）を構築する。

## When to Use the Unix Pipeline Approach and How to Use It Safely
## Inspecting and Manipulating Text Data with Unix Tools
タブ区切り  
> ###### Tabular Plain-Text Data Formats

本章では、3列の[BED](http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=BED)形式と[GTF](http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=GTF)形式のファイルを用いる。

### Inspecting Data with Head and Tail
[`head`](http://codezine.jp/unixdic/w/head)でファイルの先頭部分を表示する:  


[`tail`](http://codezine.jp/unixdic/w/tail)でファイルの末尾部分を表示する:  


`tail`でファイルのヘッダを削除する:  



ファイルの始まりと終わりの両方を見る:  


設定ファイル（*~/.bashrc*や*~/.profile*）にショートカットを作る:  


ショートカットの`i`（inspect）コマンドを実行:  


パイプで`grep`の標準出力を`head`に渡す:  


- [シグナル (ソフトウェア)](https://ja.wikipedia.org/wiki/シグナル_(ソフトウェア) )
シグナル`SIGPIPE`は、読み手のいないパイプへの書き込み  
シグナル`SIGINT`は、割り込み端末から割り込みキー（通常 CTRL + C）を押下したときに発生  

### less
- [UNIXの部屋 コマンド検索:less (*BSD/Linux)](http://x68000.q-e-d.net/~68user/unix/pickup?less)
- [Linuxコマンド集 - 【 less 】 テキスト・ファイルの内容を閲覧する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230809/)
- [less - １ページずつ表示 - 会津大学UNIXウィキ](http://technique.sonots.com/plus/?UNIX%2Fコマンド%2Fテキスト処理%2Fless)

[less](https://ja.wikipedia.org/wiki/Less)で[*contaminated.fastq*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-07-unix-data-tools/contaminated.fastq)ファイルを見る:  


`less`を終了するには、*q*を押す。*h*でヘルプを表示する。

Table 7-1. lessの操作方法


`less`は、テキスト検索（マッチした部分をハイライト）、パイプラインのデバッグや構築に利用できる。

`less`でcontaminated.fastqを開いて、`/`を押して、`AGATCGG`を入力。結果は
Figure 7-1

### Plain-Text Data Summary Information with wc, ls, and awk
[`wc`](https://ja.wikipedia.org/wiki/Wc_%28UNIX%29)（word count）で行数、単語数、文字数を表示:  


`ls -l`でファイルのサイズを確認:  


> ###### Data Formats and Assumptions
> 空白（スペース、タブ、改行）を除くには、`grep`を使う:  

`awk`でファイルの列（フィールド）数を表示:  


Mus_musculus.GRCm38.75_chr1.gtfファイルのヘッダを除いてから、列（フィールド）数を`awk`で表示:  


`grep`を用いて、"#"で始まる行を除く:  


### Working with Column Data with cut and Columns

`cut`でタブ区切りファイルの2列目を抽出:  


`grep`でメタデータ行を削除し、`cut`で1,4,5列（染色体、開始位置、終了位置）を抽出:  


`cut -d`で区切り文字を指定する。[CSV](https://ja.wikipedia.org/wiki/Comma-Separated_Values)ファイル:  


### Formatting Tabular Data with column
- [Linuxコマンド【 column 】入力を表形式に整形 - Linux入門 - Webkaru](http://webkaru.net/linux/column-command/)

タブ区切りファイルの出力は（要素が何列目に属するのか）みにくい:  


`column -t`で整形:  


`column -s`で区切り文字を指定:  


### The All-Powerful Grep

Figure 7-2  
トウモロコシ・ゲノムで文字列"AGATGCATG"を検索した実行時間を、4手法（`grep`、`sed`、`awk`、`Python`スクリプト）間で比較した結果、`grep`が最速。

1番染色体の全タンパク質の[Ensembl](http://www.geocities.jp/ancientfishtree/Ensembl_JI.html)遺伝子識別子と遺伝子名が含まれている
*Mus_musculus.GRCm38.75_chr1_genes.txt*ファイル内の遺伝子"Olfr418-ps1"を`grep`で見つける:  



`grep --color=auto`オプションでマッチング部分を色付けする。

> ###### GNU, BSD, and the Flavors of Grep  
GNU coreutilsをMac OS Xにインストール:  

`grep -v`でマッチしない行を返す。"Olfr1413"以外の"Olfr"を含む遺伝子群を出力:    


`grep -w`で（空白で囲まれた）単語全体にマッチする:  


パターンにマッチした行の前（`-B`）、後（`-A`）、前後（`-C`）を出力するオプション:  


`grep`は、正規表現 *POSIX Basic Regular Expressions* (BRE)をサポート。
Ensembl遺伝子識別子"Olfr1413"と"Olfr1411"を見つける:  


`grep -E`オプションで、*POSIX Extended Regular Expressions* (ERE) を用いる。
"Olfr218"または"Olfr1416"にマッチ:  


`grep -c`オプションで、パターンにマッチした行数を表示:  


`grep -o`オプションで、マッチした部分だけを抽出:  


Example 7-1. ユニークな（重複のない）ソートされた遺伝子名のリストを出力


### Decoding Plain-Text Data: hexdump
[*ASCII*](https://ja.wikipedia.org/wiki/ASCII)。`man ascii`


何かが正常に動作しない場合、ファイルの文字コードを疑い、`file, hexdump, grep`コマンドで確認する。

- [Linuxコマンド集 - 【hexdump】16進数や8進数で出力する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20140224/538591/)

### Sorting Plain-Text Data with Sort
[Sort](https://ja.wikipedia.org/wiki/Sort_%28UNIX%29)で行を並べ替える。


> ###### Using Different Delimiters with sort  
> `sort -t`（例えば、CSVファイルは`-t","`）で列の区切り文字を指定する。   

- [sortコマンド（テキストファイルをソートする）](http://itdoc.hitachi.co.jp/manuals/3020/30203S3530/JPAS0260.HTM)
- [sortコマンドで複数キーによるソート - あらびき日記](http://d.hatena.ne.jp/a_bicky/20110724/1311497192)
- [NGS Surfer's Wiki | UNIX:sort](http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=UNIX%3Asort)

`sort`のオプション。`-k`で列の範囲（start,end）を指定してソート、`-n`で数値としてソート。
1列目（染色体 chromosome）でソートし（`-k1,1`）、1列目が同じもの（例、"chr1"や"chr3"）は2列目で数値としてソートする（`-k2,2n`）:  



> ###### Sorting Stability  
> `sort -s`  

`-c`オプションで、既にソートされているかチェックする:  


`-r`オプションで逆順（降順）にソートする:  


一部のオプションは、GNU `sort`でのみ利用可能（Mac OS XのBSD版ではない）。例えば、
`-V`オプションは英数字を（文字列の中の数字を理解して）ソートする:  


*merge sort*でメモリを超えるファイルをソートできる:  


`-S`オプションで、K（キロバイト）、M（メガバイト）、G（ギガバイト）、%（総メモリの割合）を指定する。

`--parallel`オプションで、4つのコアを指定してソートする:  


### Finding Unique Values in Uniq
[`uniq`](https://ja.wikipedia.org/wiki/Uniq)は、連続する重複行を削除して出力する:  


`-i`オプションで、大文字と小文字の区別をつけない。  
`-c`オプションで、重複行の数も表示:  


Unixコマンド（`grep, cut, sort, uniq`）を組み合わせて、表形式データの列を要約:  


`-d`オプションで、重複行のみを表示:  


### Join
- [join - 共通フィールドをもつ２つのファイルを行単位で結合 - 会津大学UNIXウィキ](http://technique.sonots.com/?UNIX%2Fコマンド%2Fテキスト処理%2Fjoin)
- [NGS Surfer's Wiki | UNIX:join](https://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=UNIX%3Ajoin)

*example.bed*と*example_lengths.txt*ファイルを使う:  


両方のファイルがソートされていない限り、`join`は期待通り動作しない:  


基本的な構文は、`join -1 <file_1_field> -2 <file_2_field> <file_1> <file_2>`:  


*example_lengths.txt*に`chr3`が無い場合:  


`-a`オプションで、ペアにならない行も生成:  


### Text Processing with Awk
[Awk](https://ja.wikipedia.org/wiki/AWK)  

> ###### Gawk versus Awk  
Mac OS XはBSD Awk。GNU Awk（Gawk）のマニュアルは`man gawk`  

- [AWKプログラミングの真髄の1つ　フィールド（列）を操る基礎テクニック (1/2)：CodeZine（コードジン）](http://codezine.jp/article/detail/7852)

Awkは、入力データをレコード（行）に分割し、各レコードをフィールドに分割する。レコード全体は変数`$0`に格納され、フィールドは`$1, $2, $3, ...`と分割される。
Awkは、1つ以上の`pattern { action }`で処理を指定する。


Awkは算術演算子（`+, -, *, /, %, ^`）をサポートしている。featureの長さ（終了位置 - 開始位置）が18を超える行だけを出力:  


[Table 7-2. Awkの比較・論理演算子](https://books.google.co.jp/books?id=XxERCgAAQBAJ&pg=PA159&lpg=PA159&dq=%22Table+7-2.+Awk+comparison+and+logical+operations%22&source=bl&ots=4qs43k9Spt&sig=ACfU3U3M1FRZHLbRHPSp0f7mkl9YM4VexQ&hl=ja&sa=X&ved=2ahUKEwiE7p6awpTmAhWM62EKHcgEAscQ6AEwA3oECAUQAQ#v=onepage&q=%22Table%207-2.%20Awk%20comparison%20and%20logical%20operations%22&f=false)
- [AWK で使われる演算子](http://aoki2.si.gunma-u.ac.jp/Hanasi/Algo/letsawk/WhatIsOperator.html)

論理演算子 `&&` (AND), `||` (OR), `!` (NOT) でパターンを繋ぐ。染色体1で長さ>10の行を出力:  


`~`は一致、`!~`は正規表現と一致しないの意。

    awk '$1 !~ /chr1/' example.bed
    awk '!($1 ~ /chr1/)' example.bed

染色体2と染色体3に長さ（終了位置 - 開始位置）の列を追加する:  


`BEGIN`は前処理、`END`は後処理。例えば、*example.bed*で平均feature長を計算する。featureの長さを合計し、レコードの総数で割る:  


`NR`（Number of Record）は現在の行（レコード）番号

> ###### Setting Field, Output Field, and Record Separators  
`awk -F","`でCSVファイルの区切り文字を指定する。  
`awk -F"," -v OFS="\t" {print $1,$2,$3}`

`NR`を用いて、行の範囲を抽出:  


GTFファイル（*Mus_musculus.GRCm38.75_chr1.gtf*）をBEDファイル（3列）に変換:  


Awkの連想配列（*associative array*）は、Pythonの辞書、Perlのハッシュのように振る舞う。


Table 7-3. Awkの組み込み関数
- [The GNU Awk User's Guide - 組み込み関数](http://www.kt.rim.or.jp/~kbk/gawk-30/gawk_13.html)

Unixコマンド（`grep, cut, sort, uniq -c`）を用いて、特定の遺伝子の特徴をカウントする:  


- [共通テーマ: 実例でわかる awk: 第 1 回](http://www.ibm.com/developerworks/jp/linux/library/l-awk1/)
- [第17回ａｗｋの連想配列](http://homepage2.nifty.com/mozu/koza/awk_koza/awk_koza_17.html)

### Bioawk: An Awk for Biological Formats
- [Bioawk - Fasta, Fastq, Sam, Bed, Gff Aware Awk Programming](https://www.biostars.org/p/47751/)

[Bioawkのソースからダウンロード、コンパイル、インストール](https://github.com/lh3/bioawk)、またはMac OS Xのパッケージ管理システムHomebrewでインストール:

    brew tap brewsci/bio; brew install bioawk

- 2018年04月02日 [Homebrew/scienceがbrewsci/bioに移動された話 - Qiita](https://qiita.com/epsilonminder/items/e3b1fc00edb63cb3a32b)

`bioawk -c`で入力形式を指定する。サポートされている入力形式（`bed, sam, vcf, gff, fastx`）と設定変数を見る:  


全タンパク質コード遺伝子の長さ（終了位置 - 開始位置）の列を追加:  


FASTQをFASTAファイルに変換:  


FASTQ/FASTAエントリ数をカウント:  


逆相補鎖に変換　(reverse complement):  


オプション`-c hdr`


### Stream Editing with Sed

> ###### GNU Sed versus BSD Sed  

*chroms.txt*ファイルの染色体名を変換（"chrom1" → "chr1"）:  


`sed`の文字列置換の構文: `s/pattern/replacement/`  
`g`フラグで全ての文字列を置換する: `s/pattern/replacement/g`  
`i`フラグで大文字と小文字の区別をつけない: `s/pattern/ replacement/i`  

"chr1:28427874-28425431" (染色体名:開始位置-終了位置) を3列で出力:  



（`head -n 10`と同様）ファイルの先頭10行を出力:  


20〜50行まで出力:  


## Advanced Shell Tricks
### Subshells
[サブシェル](http://x68000.q-e-d.net/~68user/unix/pickup?%A5%B5%A5%D6%A5%B7%A5%A7%A5%EB)でコマンドをグループ化する例:  


メタデータのヘッダがあるGTFファイルをソートする:  


ストリームを（`gzip`で圧縮してから）ファイルにリダイレクトする:  


### Named Pipes and Process Substitution
[名前付きパイプ](https://ja.wikipedia.org/wiki/名前付きパイプ)を`mkfifo`コマンドで作成:  



プロセス置換


Figure 7-3. プロセス置換

## The Unix Philosophy Revisited

----------

# Chapter 8. A Rapid Introduction to the R Language
第8章. R言語入門

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch08.html#chapter-08)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-08-r)

[探索的データ解析 Exploratory Data Analysis (EDA)](http://www.msi.co.jp/splus/products/eda.html)

参考:  
- [RjpWiki - RjpWiki](http://www.okada.jp.org/RWiki/)
- [R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r.html)
- [R言語入門 (全13回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_r)

## Getting Started with R and RStudio

> ###### THE COMPREHENSIVE R ARCHIVE NETWORK (CRAN)  
> `ggplot2`パッケージをインストールする:  


[R言語](https://cran.r-project.org)と[RStudio](https://www.rstudio.com)[統合開発環境](https://ja.wikipedia.org/wiki/統合開発環境)（IDE）をインストールする。

- [Rで学ぶプログラミングの基礎の基礎 (1) R と RStudioのセットアップ](http://www.cwk.zaq.ne.jp/fkhud708/files/R-prg-intro/R-prg-intro_01.pdf)
- [Rstudio事始め](http://www.slideshare.net/TakashiYamane1/rstudio)
- [RStudio - 浅井拓也　研究室用ページ](http://qh73xe.jimdo.com/rの基本/rの便利な関連ソフト/rstudio/)

## R Language Basics
### Simple Calculations in R, Calling Functions, and Getting Help in R
簡単な計算



関数


[Table 8-1. 数学関数](https://books.google.co.jp/books?id=XxERCgAAQBAJ&pg=PA179&dq=%22Table+8-1.+Common+mathematic+functions%22&hl=ja&sa=X&ved=0ahUKEwj5scSfu5rQAhULurwKHSShB3wQ6AEIHTAA#v=onepage&q=%22Table%208-1.%20Common%20mathematic%20functions%22&f=false)

- [03. 簡単な計算](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/03.html)

> ###### SIGNIFICANT DIGITS, PRINT(), AND OPTIONS IN R  


`round()`関数


> ###### GETTING HELP IN R  





    apropos("norm")

### Variables and Assignment
変数の代入  


> ###### RStudio Assignment Operator Shortcut

*global environment*


### Vectors, Vectorization, and Indexing
ベクトル



*vectorization*



*recycle*



Rの演算子（`+, -, *, /`）や数学関数（例 `sqrt(), round(), log()`）はベクトルに対応:  


*indexing*


要素ラベル




*subsetting*



> ###### Out-of-Range Indexing  


z[負整数ベクトル]は、対応する要素番号の要素を取り除く:  


> ###### Negative Indexes and the Colon Operator


要素の並べ替え






比較演算子（Table 8-2 例 `==, !=, <, <=, >, >=`）を用いて、論理ベクトル（`TRUE; FALSE`）を作成する:  


v[論理ベクトル]は、TRUEの要素に対応した要素を取り出す（Example 8-1）:  



論理演算子 `&` (AND), `|` (OR), `!` (NOT)


[Table 8-2. Rの比較演算子と論理演算子](https://books.google.co.jp/books?id=XxERCgAAQBAJ&pg=PA188&dq=%22Table+8-2.+R’s+comparison+and+logical+operators%22&hl=ja&sa=X&ved=0ahUKEwjehcP_x5rQAhWIS7wKHQZ9DL4Q6AEIHTAA#v=onepage&q=%22Table%208-2.%20R’s%20comparison%20and%20logical%20operators%22&f=false)

- [28. 演算子 | R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/28.html)
- [13. ベクトル要素へのアクセス | R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/13.html)

#### Vector types
*Numeric (double), Integer, Character (strings), Logical*

Table 8-3. Rのベクトル型

> ###### R’S SPECIAL VALUES  
> `(NA, NULL, Inf/-Inf, and NaN)`  

ベクトルの要素は全て同じ型 *homogenous* type  

> ###### Type Coercion in R  

Rの型の強制変換規則



#### Factors and classes in R
因子とクラス

関数`factor()`で、カテゴリーを要素としたベクトルを作成する:  


関数`levels()`で、グループを確認:  








Rには3種類のオブジェクト指向システム（S3, S4, R5のクラス）がある。

- [Rのオブジェクト指向について(R) - script of bioinformatics](https://sites.google.com/site/scriptofbioinformatics/r-tong-ji-guan-xi/rnoobujekuto-zhi-xiangnitsuite-r)

## Working with and Visualizing Data in R
[Spencer et al. (2006) "The influence of recombination on human genetic diversity."](http://www.ncbi.nlm.nih.gov/pubmed/17044736)のデータ[*Dataset_S1.txt*](https://github.com/vsbuffalo/bds-files/tree/master/chapter-08-r)は、集団遺伝学の統計値を含む。例えば、塩基多様度（列`Pi`と`Theta`）、組換え（列`Recombination`）、ヒトとチンパンジーのゲノム配列一致率（列`Divergence`）。他の列は、ウィンドウの開始位置と終了位置（列`start`と`end`）、シークエンシング深度（列`depth`）、GC含量（列`%GC`）など。

- [DNA配列のNucleotide Polymorphism (theta)とNucleotide Diversity (pi) - ryamadaの遺伝学・遺伝統計学メモ](http://d.hatena.ne.jp/ryamada22/20050907/1126093129)

### Loading Data into R

[作業ディレクトリ](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/06.html)


Rに読み込む前に、コマンドラインからファイルを見る:  


> ###### LARGE GENOMICS DATA INTO R: COLCLASSES, COMPRESSION, AND MORE  
> `colClasses` vector to `"NULL"`  
> `nrow` in `read.delim()`  
> `data.table`パッケージの`fread()`関数を使う。  
> Rパッケージ`RSQLite`  
> Rの関数は直接gzip圧縮されたファイルを読み込むこともできる。

`read.csv()`関数でCSVファイルを読み込む:  


`read.delim()`関数でタブ区切りファイルを読み込む:  


デフォルトでは、Rの関数`read.delim()`と`read.csv()`は、文字列を文字列(character)ではなく因子(factor)に強制変換する。これを無効にするには、引数`stringsAsFactors=FALSE`（または`as.is`）を使う。

[Table 8-4. read.csv() と read.delim() の引数](https://books.google.co.jp/books?id=XxERCgAAQBAJ&pg=PA197&dq=%22Table+8-4.+Commonly+used+read.csv()+and+read.delim()+arguments%22&hl=ja&sa=X&ved=0ahUKEwj-zayR1JrQAhXJvrwKHbU5Bh0Q6AEIHTAA#v=onepage&q=%22Table%208-4.%20Commonly%20used%20read.csv()%20and%20read.delim()%20arguments%22&f=false)

- [40. ファイルからデータを読み込む | R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/40.html)
- [5. データの読み込み - 統計ソフトRの使い方](https://sites.google.com/site/webtextofr/data)

> ###### GETTING DATA INTO SHAPE  
> Table 8-5. 組織毎の遺伝子発現の計数表（wide形式）  
> Table 8-6. 組織毎の遺伝子発現の計数表（long形式）  
> `reshape2`パッケージはデータを変換する関数を提供する。`melt()`はwideデータをlongデータに変換し、`cast()`はlongデータをwideデータに変換する。  

### Exploring and Transforming Dataframes
`read.csv()`関数はファイルを[データフレーム](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/39.html)として読み込む。  
データフレームの各列はベクトル。  





> ###### Creating Dataframes from Scratch  

ドル・マーク(`$`)で列を指定できる。


`d[row, col]`で行と列を指定できる。


> ###### Fragile Code and Accessing Rows and Columns in Dataframes  

データフレームから単一の列を取り出す際、結果のベクトル化を防ぐには、引数に`drop=FALSE`を指定する:  


20番染色体のセントロメアの位置は、25,800,000 から 29,700,000 である。セントロメア領域か否か（`TRUE/FALSE`）を示す列`cent`を、データフレーム`d`に追加する:  



塩基多様度の列`Pi`の大きさを変更した新しい列`diversity`を作成する:


### Exploring Data Through Slicing and Dicing: Subsetting Dataframes









### Exploring Data Visually with ggplot2 I: Scatterplots and Densities

- [Rのグラフィック作成パッケージ“ggplot2”について｜Colorless Green Ideas](http://id.fnshr.info/2011/10/22/ggplot2/)
- [ggplot2 | R のグラフをより美しく](http://stat.biopapyrus.net/ggplot/)
- [ggplotの使い方 | Memo on the Web](http://motw.mods.jp/R/ggplot_tutorial.html)
- [パッケージggplot - 浅井拓也　研究室用ページ](http://qh73xe.jimdo.com/プロット/パッケージggplot/)
- [ggplot2 の自分用メモ集を作ろう - Triad sou.](http://d.hatena.ne.jp/triadsou/20100528/1275042816)
- [R でグラフ作成 ggplot2 入門](http://www.cwk.zaq.ne.jp/fkhud708/files/R-ggplot2.pdf)
- [Tutorial of ggplot2 by Hadley Wickham at ISM | Siguniang's Blog](https://siguniang.wordpress.com/2010/11/25/tutorial-of-ggplot2-by-hadley-wickham-at-ism/)

`ggplot2`パッケージ、base graphics、`lattice`パッケージ  

[`ggplot2`のオンライン・ドキュメント](http://docs.ggplot2.org/current/)  

`library()`関数で`ggplot2`パッケージをロードする:  


染色体の位置毎の塩基多様度の散布図（Figure 8-1）を作成する。まず、データフレーム`d`に列`position`（各ウィンドウの中間点）を追加する。次に、データフレーム`d`の列`position`と列`diversity`の散布図を`ggplot2`で作成する:  


Figure 8-1. ggplot2の散布図：ヒト20番染色体の位置毎の塩基多様度

例えば、`geom_point(), geom_line(), geom_bar(), geom_density(), geom_boxplot()`など。`aes()`関数

> ###### Axis Labels, Plot Titles, and Scales  
> `xlab(), ylab(), ggtitle()`関数  
> `scale_x_continuous(limits=c(start, end))`、関数`scale_x_log10()`と`scale_y_log10()`  

Example 8-2は、`aes()`を`ggplot()`に含み、Figure 8-1と全く同じ散布図を作成する:  


Example 8-3は、セントロメア領域か否か（列`cent`のTRUE/FALSE）で色分けして、Figure 8-2を作図:  


（同じ位置にプロットが重なっている）overplottingを回避するために、透明度（alpha）を調整して、Figure 8-3を作図:


`geom_density()`を用いて、多様度の密度を見る（Figure 8-4）:  


多様度の密度を、セントロメア領域か否か（列`cent`のTRUE/FALSE）で分けて、透明度（alpha）を半分にして、Figure 8-5を作図:  


### Exploring Data Visually with ggplot2 II: Smoothing

- sequencing depth
 - [ultra deep sequence：バイオキーワード集｜実験医学online：羊土社](https://www.yodosha.co.jp/jikkenigaku/keyword/3175.html)
 - [次世代シーケンサーにおけるcoverageの日本語訳 - #LSQA](http://qa.lifesciencedb.jp/questions/258/次世代シーケンサーにおけるcoverageの日本語訳)

散布図と平滑化曲線を用いて、シークエンシング深度（列`depth`）とウィンドウのSNP合計数（列`total.SNPs`）の関係を見る（Figure 8-6）:  


デフォルトでは、`ggplot2`は一般化加法モデル（generalized additive models; GAM）を用いて、平滑化曲線に合わせる。
`help(stat_smooth)`、`geom_smooth(se=FALSE)`

散布図と平滑曲線を用いて、シークエンシング深度に及ぼすGC含量の影響を見る（Figure 8-7）:  


### Binning Data with cut() and Bar Plots with ggplot2
Binning（離散化）

- [秩序と情報とブロッコリー: R言語のcut関数の使い方](http://data-hacker.blogspot.jp/2013/05/rcut.html)
- [R.4.42. 連続数のカテゴリ作成 | R Financial & Marketing Library](http://itbc-world.com/home/rfm/rの機能/連続数のカテゴリ作成/)
- [R言語で数量データをカテゴリーデータに変換 - jnobuyukiのブログ](http://webbeginner.hatenablog.com/entry/2015/05/27/010805)
- [Rでbinning - にちにちメモ](http://schngtm.hatenablog.com/entry/2014/12/03/003622)

`cut()`関数でデータをbinに分割する（Example 8-4は、GC含量）:  





`ggplot2`の`geom_bar()`



Figure 8-8.  
`geom_bar()`の`x`が、
因子（例えば、`d$binned.GC`）の場合には、`ggplot2`は計数値の棒グラフ（Figure 8-8の左）を作成する。
連続の数値（例えば、`d$percent.GC`）の場合には、自動的にデータを離散化してヒストグラム（Figure 8-8の右）を作図する。


Figure 8-9. GC含量でグループ分けされたシークエンシング深度（depth）の密度プロット


> ###### Finding the Right Bin Width  
> binwidthの値を 0.05, 0.5, 1, 5, 10 に変化させる。

### Merging and Combining Data: Matching Vectors and Merging Dataframes

Rの[`%in%`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/match.html)演算子


[RepeatMasker](http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=RepeatMasker)で発見されたヒトX染色体上のリピート領域のデータ（*chrX_rmsk.txt*）を読み込む:  

    setwd("~/bds-files/chapter-08-r")

列`repClass`は因子（factor）であることを確認:  


複数のリピートのクラス（DNA、LTR、LINE、SINE、Simple_repeat）の行を選択するために、`common_repclass`ベクトルを作成し、`%in%`を用いる:  


上位5つの最も多いリピートのクラスを計算する:  


[`%in%`]演算子は別の関数`match()`の簡易版


第1のデータセット（[motif_recombrates.txt](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-08-r/motif_recombrates.txt)）は、各モチーフの40kb内の全ウィンドウについて、組換え確率（recombination rate）推定値を含む。第2のデータセット（[motif_repeats.txt](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-08-r/motif_repeats.txt)）は、各モチーフが出現するリピートを含む。2つのデータセットをマージして、特定のリピートに及ぼす各モチーフの組換えの局所的な効果を見る。

> ###### Creating These Example Datasets  
> データ生成コードは[*motif-example/*](https://github.com/vsbuffalo/bds-files/tree/master/chapter-08-r/motif-example)


`rpts`データフレームの列`name`を`mtfs`の列にマージすることが目的。
`paste()`関数を用いて、2つの列（`chr`と`motif_start`）を1つの文字列に結合する:  


列`pos`は、2つのデータセット間の共通の鍵として機能する。  
マージする前に、`mtfs`のモチーフと`rpts`の対応するエントリの個数を確認する:  


マージする前に、`match()`を用いて、`mtfs$pos`と`rpts$pos`のインデックス・ベクトル（`i`）を作成する:  


`match()`の結果を（`i`への割り当てをスキップして）直接用いる:  




`merge()`でデータを結合（マージ）する:  



### Using ggplot2 Facets


Figure 8-10. 配列モチーフとの距離と組換え確率



`ggplot2`の`facet_wrap()`を用いて、これらのモチーフを分割する（Figure 8-11）:  


Figure 8-11. 

`ggplot2`の`facet_wrap()`と`facet_grid()`


Figure 8-12


`facet_grid()`と`facet_wrap()`の何れも引数`scales`を指定できる。例えば（Figure 8-13）:  


### More R Data Structures: Lists

データフレームはリスト; `is.list(mtfs)`


`[　]`はリストを取り出す。
`[[ ]]`はリスト内の要素（ベクトル）を取り出す。







> ###### Peeking into R’s Structures with str()  


### Writing and Applying Functions to Lists with lapply() and sapply()

#### Using lapply()



> ###### lapply() in Parallel  


引数を渡す:  


#### Writing functions


- [31. 関数の定義 | R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/31.html)
- [関数の作り方 | functionによりRの関数を定義する方法](http://stat.biopapyrus.net/r/user-function.html)
- [Rの関数定義の基本 - RjpWiki](http://www.okadajp.org/RWiki/?Rの関数定義の基本)
- [[連載]フリーソフトによるデータ解析・マイニング　第4回 Rでの関数オブジェクト](http://www1.doshisha.ac.jp/~mjin/R/04.html)

[無名関数](https://ja.wikipedia.org/wiki/無名関数)(anonymous function)  


`meanRemoveNAVerbose()`関数の定義:  



> ###### Function Scope  
> [スコープ](https://ja.wikipedia.org/wiki/スコープ)  


#### Digression: Debugging R Code
デバッグ  
関数`browser()`



`n`で次の行を確認、`c`でコードの実行を継続、`Q`で終了

`options(error=recover)`も有用  





#### More list apply functions: sapply() and mapply()



> ###### Other Apply Functions for Other R Data Structures   
配列と行列　`apply()`と`sweep()`

### Working with the Split-Apply-Combine Pattern
データをグループ化し、グループ毎に関数を適用し、結果を組み合わせる（["The Split-Apply-Combine Strategy for Data Analysis"](http://www.jstatsoft.org/v40/i01/paper)）。最初にRの標準関数を用いて、次に`dplyr`パッケージを用いる。

split-apply-combineの簡単な例：GC含量でグループ化した3群の平均深度（Example 8-4, Figure 8-9）







> ###### Understanding do.call()  

関数`tapply()`と`aggregate()`でグループ毎に要約する:  


### Exploring Dataframes with dplyr
`dplyr`は非常に高速。
`dplyr`でデータフレームを操作する関数は、`select(), filter(), arrange(), mutate(), summarize()`

- [dplyrでデータ処理](http://www.pu-hiroshima.ac.jp/~ttetsuji/R/%5B64%5Ddplyr.html)
- [dplyrを使いこなす！基礎編](http://qiita.com/matsuou1/items/e995da273e3108e2338e)
- [大規模データの高速処理 ーdata.table、dplyrー](http://kohske.github.io/ESTRELA/201410/index.html)
- [plyr — データ分割-関数適用-再結合を効率的に — Watallica metallicus](http://meme.biology.tohoku.ac.jp/students/iwasaki/rstats/plyr.html)

`tbl_df()`関数を用いて、`d`データフレームを`tbl_df`オブジェクトに変換する:  


`select`は、`d[, c("start", "end", "Pi", "Recombination", "depth")]`に対応:  


`filter()`は、`d[d$Pi > 16 & d$percent.GC > 80, ]`に対応:  


`arrange()`は、`d[order(d$percent.GC), ]`に対応:  


`mutate()`関数を用いて、データフレームに新しい列を追加できる。


パイプ（`help('%>%')`）を用いて、複数の処理を連結する:  


`mtfs`データフレームを用いる



`summarize()`関数を用いて要約を作成する:  



新たに作成した要約の列`max_recom`でソートする:  


### Working with Strings
Rの文字列処理機能

- [文字列 | Rを利用して文字列のマッチング,結合,分割,置換を行う関数](http://stat.biopapyrus.net/r/string.html)
- [Rの文字列処理関数 - RjpWiki](http://www.okadajp.org/RWiki/?Rの文字列処理関数)

`nchar()`で文字ベクトルの各要素の文字数を取得する:  


`grep()`か`regexpr()`で文字ベクトル中のパターンを検索する。関数`grep(pattern, x)`は、`pattern`にマッチするベクトル`x`の全要素の番号を返す:  



`match()`と同様、`grep()`で一貫性のない染色体名のベクトルから6番染色体のエントリを抽出する:  


Rの正規表現については `help(regex)`

- [R における正規表現 - RjpWiki](http://www.okadajp.org/RWiki/?R%20における正規表現)

> ###### The Double Backslash

`grep()`と異なり、`regexpr(pattern, text)`は、ベクトル`text`の各要素で`pattern`にマッチした位置を返し、マッチしない場合には-1を返す:  


返り値 5 は該当文字列の第5文字目以降にマッチしたことを示す。属性（attributes）"match.length"の値 2 は2文字分マッチしたことを示す。

`substr(x, start, stop) `は文字列`x`の`start`と`stop`の間の文字を返す。


`sub(pattern, replacement, x)`は文字ベクトル`x`の各要素で最初に出現した`pattern`を`replacement`で置換する:  


いくつかの簡単な例:  


> ###### Friendly Functions for Loud Code  


`paste()`関数は、文字列を結合する:  


> ###### Extracting Multiple Values from a String  
`sub()`と`strsplit()`を組み合わせる:  

`strsplit(x, split)`は、文字列`x`を`split`で分割する:  



## Developing Workflows with R Scripts
### Control Flow: if, for, and while
- [29. 条件分岐 | R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/29.html)
- [30. 繰り返し文 | R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/30.html)

> ###### Iterating over Vectors  
> [1:length(x) の代わりに seq_along(x) を使うと良いってごみ箱が言ってた - My Life as a Mock Quant](http://d.hatena.ne.jp/teramonagi/20140819/1408448705)  


`ifelse`関数:  


### Working with R Scripts
Rスクリプトを用いた作業

スクリプトでは、作業ディレクトリを設定する`setwd()`を使用しない。（同じディレクトリ構造を持っていない）他のシステムへの移植性が無くなるので。同じ理由で、データを読み込む時には、絶対パス（例 `/Users/jlebowski/data/achievers.txt`）ではなく、相対パス（例 `data/achievers.txt`）を使う。また、ユーザー向けに（コメントや*READMEファイル*で）作業ディレクトリを指定するのが良い。

関数`source()`を用いて、Rスクリプトを実行する:  


コマンドラインからバッチモードでRスクリプトを実行する:  


コマンドライン引数を出力するRスクリプト:  


を実行する:  


> ###### Reproducibility with Knitr and Rmarkdown  
> `Rmarkdown`:  



- [第2回　レポートづくりを加速せよ　～R Markdown環境の導入＆チュートリアル～：R Markdownで楽々レポートづくり｜gihyo.jp … 技術評論社](http://gihyo.jp/admin/serial/01/r-markdown/0002)

> ###### Reproducibility and sessionInfo()  
> Rのバージョンとパッケージを確認: `sessionInfo()`

### Workflows for Loading and Combining Multiple Files

複数のファイルを読み込み、統合する。

[*hotspots/*](https://github.com/vsbuffalo/bds-files/tree/master/chapter-08-r/hotspots)ディレクトリ:  


Rの関数`list.files()`を用いて、ファイル名を取得する:  



`lapply()`関数で各ファイルを読み込む:  


ファイル名（フルパスなし）を用いて、各リストの要素に名前を付ける:  


`do.call()`と`rbind`を用いて、このデータをマージする:  


我々の`loadFile`関数を変更して、データに適用する:  



`basename()`関数でファイルパスからファイル名を取得:  


染色体ファイル毎にホットスポットの数と平均長を求める関数を作成して、実行する:  



このデータを1つのデータフレームにマージする:  


`lapply()`を`mclapply()`で置き換えることにより、データ処理を並列化できる。

### Exporting Data

データフレーム`mtfs`を hot‐spot_motifs.txt という名前のタブ区切りファイルに書く:  


gzip圧縮をかけて出力する:  


- [R で gzip 圧縮をかけて CSV に出力する方法](http://qiita.com/yu-iskw/items/acca0deaf09e75984d07)

[serialization](https://ja.wikipedia.org/wiki/シリアライズ)  
Rオブジェクトを保存・復元する関数は`save()`と`load()`  


`save`, `save.image()`, `savehistory()`

- [45. ファイルへのデータ出力 | R-Tips](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/45.html)
- [特定のオブジェクトのディスクファイルへの記録。save(), load() 関数](http://www.okadajp.org/RWiki/?R出力の記録#i9ff89a5)
- [私とRと統計学](http://markovchainmontecarlo.hatenablog.com)

## Further R Directions and Resources

- [Advanced R by Hadley Wickham](http://adv-r.had.co.nz)

- [rOpenSci - Open Tools for Open Science](https://ropensci.org)

----------

# Chapter 9. Working with Range Data
第9章. 範囲データの操作

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch09.html#chapter-09)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-09-working-with-range-data)

## A Crash Course in Genomic Ranges and Coordinate Systems

## An Interactive Introduction to Range Data with GenomicRanges

### Installing and Working with Bioconductor Packages

```
# https://bioconductor.org/packages/release/bioc/html/GenomicRanges.html

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("GenomicRanges")
```

### Storing Generic Ranges with IRanges

```
library(IRanges) # you might see some package startup messages when you run this

rng <- IRanges(start=4, end=13)
rng

IRanges(start=4, width=3)
IRanges(end=5, width=5)

x <- IRanges(start=c(4, 7, 2, 20), end=c(13, 7, 5, 23))
x

names(x) <- letters[1:4]
x

class(x)
```


An Interactive Introduction to Range Data with GenomicRanges



### Run Length Encoding and Views
#### Run-length encoding and coverage()

```
x <- as.integer(c(4, 4, 4, 3, 3, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4))
xrle <- Rle(x)
xrle

as.vector(xrle)

xrle + 4L
xrle/2
xrle > 3
xrle[xrle > 3]



```




## Working with Ranges Data on the Command Line with BEDTools



----------

# Chapter 10. Working with Sequence Data
第10章. 配列データの操作

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch10.html#chapter-10)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-10-sequence)

## The FASTA Format
[FASTA](https://ja.wikipedia.org/wiki/FASTA)  
[FASTA形式](http://quma.cdb.riken.jp/help/fastaHelp_j.html)ファイルは、">"で始まるコメント行と、配列データが記述される。


一般的な命名規則は、コメント行をスペースで2つの部分（IDと説明）に分割する:  


## The FASTQ Format
[FASTQ形式](https://ja.wikipedia.org/wiki/Fastq)  

- Dec 31, 2015 [FASTQ format について](https://github.com/dritoshi/ngstips/blob/master/qc/fastq.md)
- [NGS Surfer's Wiki | FASTQ](http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=FASTQ)  
- [データ取得 | DRAまたはSRAからFASTQをダウンロードする方法](http://bi.biopapyrus.net/transcriptome/rnaseq-data/)

FASTQファイルは、以下のようなものである:  


FASTQファイル内では、1本の配列は4行で記述される。  
1行目：文字「@」で始まり、配列のID（オプションとして説明）を記述する。  
2行目：塩基配列  
3行目：文字「+」  
4行目：クオリティ値 quality score（2行目の配列と同じ文字数でなければならない。ASCIIコードで表現される）

> ###### The Ins and Outs of Counting FASTA/FASTQ Entries  
> FASTA/FASTQエントリの計数  


> @は、クオリティ値として行頭にくることもある。


> 配列数を計数するロバストな方法は`bioawk`を用いる:  


## Nucleotide Codes
核酸コード  
A、T、C、Gは、ヌクレオチドのアデニン、チミン、シトシン、グアニンを表す。

Table 10-1. [Nucleotide base codes (IUPAC)](http://www.ddbj.nig.ac.jp/sub/ref1-j.html)

## Base Qualities
塩基のクオリティ値 quality scoreは、ASCIIコードで表現される。`man ascii`

ASCIIコードを変換する関数（整数から1文字へ、1文字から整数へ）。Pythonの関数`ord()`と`chr()`。例えば、`chr(97)`は文字列 'a' を返し、`ord('a')`は整数 97 を返す。[2. 組み込み関数 — Python 2.7ja1 documentation](http://docs.python.jp/2/library/functions.html)

## Example: Inspecting and Trimming Low-Quality Bases

Rに`qrqc`をインストール:  


`sickle`と`seqtk`をHomebrewを用いてMac OS Xにインストール:  


FASTQファイル untreated1_chr4.fq をトリムする:  



これらの結果をRで比較する。`qrqc`を用いて位置毎のクオリティの分布を収集し、`ggplot2`を用いて可視化する。`lapply`で自動化する。









このRスクリプトは2つのプロット（Figures 10-1と10-2）を作成する。

## A FASTA/FASTQ Parsing Example: Counting Nucleotides

FASTA/FASTQのパースには既存のライブラリを使うのがベスト。  
[readfq](https://github.com/lh3/readfq)のPythonスクリプト（readfq.py）をダウンロードする。  
`from readfq import readfq`  


## Indexed FASTA Files


Samtoolsの`faidx`サブコマンドを用いて、FASTAファイルのインデックスを作成する:  


インデックス・ファイル（Mus_musculus.GRCm38.75.dna.chromosome.8.fa.fai）が作成される。

特定の領域の部分配列にアクセスするには、`samtools faidx <in.fa> <region>`を実行する。ここで、`<in.fa>`は（インデックスを作成した）FASTAファイル、`<region>`は`chromosome:start-end`の形式。例えば:  



- [アメリエフのブログ | samtools ゲノムのインデックスファイルの中身](http://blog.amelieff.jp/?eid=220985)
- [NGS Surfer's Wiki | SAMtools](http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=samtools)
- [samtoolsの使い方 - #LSQA](http://qa.lifesciencedb.jp/questions/458/samtoolsの使い方)

----------

# Chapter 11. Working with Alignment Data
第11章. アライメントデータの操作

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch11.html#chapter-11)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-11-alignment)

## Getting to Know Alignment Formats: SAM and BAM

### The SAM Header
- [SAMフォーマット | マッピング結果を記載するファイル形式](http://bi.biopapyrus.net/transcriptome/sam.html)

> ###### Read Groups  
> メタデータ  

`samtools`

- [SAMtools - Wikipedia](https://ja.wikipedia.org/wiki/SAMtools)
- [NGS Surfer's Wiki | SAMtools](https://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=samtools)

`samtools view -H`でSAM/BAMヘッダ全体を見る :  



引数なしの`samtools view`は、ヘッダなしでアラインメント全体を返す:  


### The SAM Alignment Section

SAMファイルのアラインメント部分は11フィールド以上から成る。





### Bitwise Flags
### CIGAR Strings
### Mapping Qualities
## Command-Line Tools for Working with Alignments in the SAM Format
### Using samtools view to Convert between SAM and BAM
### Samtools Sort and Index
## Visualizing Alignments with samtools tview and the Integrated Genomics Viewer
### Pileups with samtools pileup, Variant Calling, and Base Alignment Quality

----------

# Chapter 12. Bioinformatics Shell Scripting, Writing Pipelines, and Parallelizing Tasks
第12章. バイオインフォマティクスのシェルスクリプト、パイプライン、タスクの並列化

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch12.html#chapter-12)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-12-pipelines)

ロバストで再現可能なパイプラインを構築する

## Basic Bash Scripting

- [シェルスクリプト入門 (全18回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_shellscript)

### Writing and Running Robust Bash Scripts
#### A robust Bash header
[*template.sh*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-12-pipelines/template.sh) 
ロバストなBashスクリプトのヘッダ:  
- 1行目：[*shebang*](https://ja.wikipedia.org/wiki/シバン_%28Unix%29)は、スクリプトを実行するインタプリタを指定する。 
- 2行目：`set -e`は、異常終了時（非ゼロ[終了ステータス](https://ja.wikipedia.org/wiki/終了ステータス)）スクリプトを終了させる。
- 3行目：`set -u`は、変数の値が設定されていない場合にスクリプトを終了させる。`echo "rm $NOTSET/blah"`
- 4行目：`set -o pipefail`は、パイプで繋いだコマンドの何れかが非ゼロ終了ステータスを返したら、スクリプトを終了させる。

短縮して`set -euo pipefail`と書ける。

- [シェルスクリプトマナー - きつねたぬきだし](http://kitsunetanukidashi.hatenablog.com/entry/2014/07/12/231833)
- [Linux - bashの*スクリプトにセットする推奨オプション](http://qiita.com/kiida/items/3beb1bf718cdc2f0798a)

#### Running Bash scripts
Bashスクリプトを実行する方法:  
1. `bash`プログラムを用いる: `bash script.sh`  
2. プログラムとしてスクリプトを呼び出す: `./script.sh`  
[`chmod`](https://ja.wikipedia.org/wiki/Chmod)コマンドでファイルの所有者（`u`）に実行権限を追加する（`+x`）: `chmod u+x script.sh`  

### Variables and Command Arguments
変数に値を割り当てる（`=`の前後にスペースを入れない）:  


変数の値にアクセスするためには、変数名の前にドル記号を付ける（例 `$results_dir`）:  


中括弧`{}`で変数名を囲む:  


ダブルクォーテーション`""`で変数を囲む:  


#### Command-line arguments
コマンドライン引数は、`$1, $2, $3, ...`に割り当てられる。変数`$0`はスクリプト名を格納する。



このファイルを実行すると、割り当てられた引数（`$0, $1, $2, $3`）を出力する:  


変数`$#`にはコマンドライン引数の個数を割り当てる（スクリプト名`$0`は引数としてカウントしない）:  




3未満の引数を指定して、このスクリプトを実行するとエラーになる（非ゼロ終了ステータス）:  


Pythonの`argparse`モジュールは、Unixツール`getopt`よりも簡単に使える。

> ###### Reproducibility and Environmental Variables   
> `export`コマンドで環境変数  

なお、`some_var=3`で変数を作成するスクリプトを実行しても、現在のシェルに`some_var`は作成されない。

### Conditionals in a Bash Script: if Statements
bashの条件文：if文

Bashでは、コマンドの[終了ステータス](https://ja.wikipedia.org/wiki/終了ステータス)が 真/成功 true/success (0) と 偽/失敗 false/failure (1) を与える。

`if`文の基本構文:  


例えば、特定の文字列がファイルに含まれる（`grep`で"pattern"に一致する）場合にのみコマンドを実行する:  




`if`文で`&&`（論理積AND）や`||`（論理和OR）演算子を用いる:  



`!`で終了ステータスを否定する:  



`test`コマンドの実行例（`echo "$?"`で終了ステータスを出力）:  


Table 12-1. String and integer comparison operators
Table 12-1. 文字列と整数の比較演算子

    mkdir some_directory ; touch some_file.txt; chmod 444 some_file.txt


Table 12-2. File and directory test expressions
ファイルとディレクトリのテスト式

- [Linuxコマンド集 - 【 test 】 条件式の真偽を判定する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230901/)

`if test -f some_file.txt`を`if [ -f some_file.txt ] `で代用できる。角括弧`[ ]`の前後に半角スペースが必要。  
この構文では、`-a`（論理積AND）、`-o`（論理和OR）、`!`（否定）を使える。`&&`と`||`演算子は`test`では使えない。
例として、スクリプトが十分な引数を持ち、入力ファイルが読み込み可能であることを確認する:  



[短絡評価](https://ja.wikipedia.org/wiki/短絡評価)（short-circuit evaluation）


### Processing Files with Bash Using for Loops and Globbing
for文とglobでファイル処理


bash 配列、要素、添字


コマンド置換 (command substitution)


> ###### The Internal Field Separator, Word Splitting, and Filenames
`sample_files=($(cut -f 3 samples.txt))`
[Internal Field Separator (IFS)](https://en.wikipedia.org/wiki/Internal_field_separator)の値を調べる:  `printf %q "$IFS"`

Unixプログラム`basename`は、ファイル名からパスや拡張子を削除する:



処理スクリプト:





- [＠IT：ファイル名からディレクトリや拡張子を取り除くには](http://www.atmarkit.co.jp/flinux/rensai/linuxtips/437delfileext.html)


最後に、ループで簡単に:



## Automating File-Processing with find and xargs

### Using find and xargs




### Finding Files with find
`ls`とは異なり、`find`は再帰的に検索する。

`find`でプロジェクト・ディレクトリの構造を見る:  


`find`の基本構文は、`find path expression`  

Example 12-1. ファイル名の一致で検索


### find’s Expressions

（名前が一致するディレクトリではなく）FASTQファイルのみを返すようにしたいので、`-type`オプションで結果を制限する（`f`はファイル、`d`ディレクトリ、`l`はリンク）:  


[findコマンドの論理演算子](http://blog.kjirou.net/p/503) 

AND（`-and`）:  


OR（`-or`）:  


Table 12-3. findの判別式と演算子

NOT（`-not`または`!`）:  


`seqs/zmaysB_R1-temp.fastq`ファイルを作成:  


### find’s -exec: Running Commands on find’s Results


`find`でマッチしたファイルを`-exec command ;`で処理する。`rm -i`でファイルの削除時に問い合わせを行う。


> ###### Deleting Files with find -exec:  
`-delete`オプション  

### xargs: A Unix Powertool
[xargs](https://ja.wikipedia.org/wiki/Xargs)  



> ###### Playing It Safe with find and xargs
> ファイル名には、英数字かアンダースコアかダッシュを使い、スペースや他の特殊文字を使わない。

`xargs -n`で、コマンドライン1つにつき使用する引数の個数を指定:  


`rm`を実行する前に、`find`が返すファイルを確認する:  


`xargs`を用いてコマンドを書いたスクリプトを作成し、確認してから実行する:  


### Using xargs with Replacement Strings to Apply Commands to Files
あるプログラムはオプションで引数を取る（例 `program --in file.txt --out-file out.txt`）、別のプログラムは位置指定引数を取る（例 `program arg1 arg2`）。`xargs`の`-I{}`オプション



> ###### BSD and GNU xargs
> Mac OS Xでは、Homebrewを用いて、GNU Coreutilsをインストール

### xargs and Parallelization

`xargs`のオプション`-P <num>`で、<num>プロセスまで同時に実行する


> ###### xargs, Pipes, and Redirects  




> このスクリプトを実行する:  
> `find . -name "*.fastq" | xargs -n 1 -P 4 bash script.sh`  
> ここで、`-n 1`はコマンドライン1つにつき最大1個の引数を使用することを意味し、`-P`オプションで同時に実行するプロセスの個数を指定できる（0ならできるだけ多くのプロセスを同時に実行しようとする）。

[GNU Parallel](http://www.gnu.org/software/parallel/)


## Make and Makefiles: Another Option for Pipelines
[Make](https://ja.wikipedia.org/wiki/Make)

- [Makeについて知っておくべき7つのこと | インフラ・ミドルウェア | POSTD](http://postd.cc/7-things-you-should-know-about-make/)

宣言型プログラミング（英: Declarative programming）  
各ルールは3つのパート（ターゲット、必要条件、レシピ）を持つ。  

[Makefile](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-12-pipelines/Makefile)  
を`make all`で実行する





----------

# Chapter 13. Out-of-Memory Approaches: Tabix and SQLite
第13章. TabixとSQLite

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch13.html#chapter-13)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-13-out-of-memory)

## Fast Access to Indexed Tab-Delimited Files with BGZF and Tabix
*BGZF* (Blocked GNU Zip Format)  
`bgzip`と`tabix`プログラムは、Samtools (例 samtools-1.2/htslib-1.2.1) に含まれている。

### Compressing Files for Tabix with Bgzip

ファイルの先頭にメタデータのヘッダがある。


サブシェルを使う。`gzip`の代わりに`bgzip`で:


### Indexing Files with Tabix

`tabix`の`-p`引数を用いて、`bgzip`で圧縮されたGTFファイルにインデックスを張る:  
インデックスファイルの拡張子は*.tbi*:  


- [tabix(1) manual page](http://www.htslib.org/doc/tabix.html)
- [How to use `tabix`.](https://gist.github.com/knmkr/5405249)
- [NGS Surfer's Wiki | vcftoolsインストールログ](http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=vcftoolsインストールログ)

### Using Tabix

例えば、Mus_musculus.GRCm38.75.gtf.bgz の16番染色体上の23,146,536（開始位置）から23,158,028（終了位置）までのフィーチャーにアクセスする:  


このコマンドの標準出力をパイプでawkに渡し、列featureが「exon」の行を抽出する:  


## Introducing Relational Databases Through SQLite
*flat file* [フラットファイル形式](http://e-words.jp/w/フラットファイル.html)。Unixツールの`join`やR言語の`match()`や`merge()`関数を用いてテーブルを結合できる。*relational databases* [関係データベース](https://ja.wikipedia.org/wiki/関係データベース)。  

[*SQL* (Structured Query Language)](https://ja.wikipedia.org/wiki/SQL)。  

relational database management system (RDBMS) [関係データベース管理システム](http://e-words.jp/w/RDBMS.html)の[*SQLite*](https://ja.wikipedia.org/wiki/SQLite)。  

- [SQLite入門 (全18回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_sqlite)

### When to Use Relational Databases in Bioinformatics
[アプリケーションプログラミングインタフェース](https://ja.wikipedia.org/wiki/アプリケーションプログラミングインタフェース)（API）

### Installing SQLite
Homebrew（`brew install sqlite`）でMac OS Xにインストール、または`apt-get install sqlite3`でUbuntuマシンにインストール。

### Exploring SQLite Databases with the Command-Line Interface
SQLiteのコマンドラインツール`sqlite3`を用いて、データベース*gwascat.db*ファイルに接続すると、対話的（インタラクティブ）なSQLiteプロンプトが出る:  


ドット・コマンドは.で始まる（空白で始めることはできない）。


- [SQLite - ドットコマンド](http://www18.atpages.jp/iyork/stored/sqlite/help.html)

Table 13-1. SQLite3のドットコマンド


SQLiteでは、列は型を持たないが、データ値は型を持つ。データ値は5タイプの何れか: text、integer、real、NULL、BLOB（binary large object）

- [SQLite | MacでSQLite3を操作する](http://ortk.main.jp/blog/?p=628)
- [はじめてのSQLite（Mac版）](http://doruby.kbmj.com/oneafter999_on_rails/20100806/_SQLite_Mac_)
- [[SQLite] 記憶クラス(データ型)とカラム型 - Life with IT](http://l-w-i.net/t/sqlite/data_001.txt)
- [SQLite入門](http://www.dbonline.jp/sqlite/)

> ###### Orderly Columns  

### Querying Out Data: The Almighty SELECT Command

SELECT文を用いて、テーブルの全ての列から全ての行を取得する:  


> ###### Working with the SQLite Command-Line Tool  
Control-u で、入力をクリアする。

sqlite3のコマンドラインツールは、（対話的なSQLiteのシェル代わりに）直接コマンドラインから問い合わせ可能。例えば、`gwascat`テーブル内の全てのデータを取得する:  


列の分離形式（オプション-separatorに、CSVは","を、タブは"\t"を指定）や、列ヘッダの表示（-header）・省略（-noheader）を変更:  


- [sqlite - sqlite3 output with tabs from one line command - Stack Overflow](http://stackoverflow.com/questions/6547908/sqlite3-output-with-tabs-from-one-line-command)

#### Limiting results with LIMIT
- [取得するデータの数と開始位置を指定(LIMIT句, OFFSET句) - SQLite入門](http://www.dbonline.jp/sqlite/select/index10.html)


#### Selecting columns with SELECT
- [データの取得(SELECT文) - SQLite入門](http://www.dbonline.jp/sqlite/select/index1.html)

カンマ区切りで一部の列（trait, chrom, position, strongest_risk_snp, pvalue）を指定:  


SQLiteの設定を変更:  


#### Ordering rows with ORDER BY
- [取得したデータをカラムの値でソート(ORDER BY句) - SQLite入門](http://www.dbonline.jp/sqlite/select/index2.html)

SELECTが返す行はソートされていない。例えば、著者の姓（author）でソートして、研究に関連する列（author、trait、journal）を表示する:


ORDER BY句にDESCを追加すると、降順で結果を返す:  


SQLiteの列は厳格な型を持たない。データ値の型が混在する列に、ORDER BYを使うと、次の順に従う。NULL値 > 整数と実数の値（数値でソート） > テキスト値 > BLOB値。ソートすると、NULL値が常に最初にくる。p値で昇順ソートして確認:  


第8章で議論したように、データを並べ替えて異常値を探すことは、データの問題を探す有効な方法である。例えば、p値（0〜1の範囲を示す確率）を降順にソートして確認:  


2つの誤ったp値はデータ入力ミス。p値を入力するときにマイナス記号を忘れる（例えば、9e-7 を 9e7 と記載）。

#### Filtering which rows with WHERE
- [取得するデータの条件を設定(WHERE句) - SQLite入門](http://www.dbonline.jp/sqlite/select/index3.html)

WHERE句で特定の行を除外。例えば、strongest risk SNP = "rs429358"の行を表示:  


大文字と小文字は区別される。比較の前にlower()関数で値を小文字に変換:  


Table 13-2. WHERE句で使用される演算子

- [取得するデータの条件を設定(WHERE句) - SQLite入門 | 比較演算子を使った条件式](http://www.dbonline.jp/sqlite/select/index3.html#section2)

- [取得するデータの条件を設定(WHERE句) - SQLite入門 | 論理演算子を使った条件式](http://www.dbonline.jp/sqlite/select/index3.html#section3)

論理演算子`AND`と`OR`を用いて条件式を組み合わせる。例えば、例えば、第22染色体上でp-valueが10e-15未満の全ての行を取得:  


- [値がNULLのものを取得(IS NULL句) - SQLite入門](http://www.dbonline.jp/sqlite/select/index7.html)

`WHERE pvalue IS NOT NULL`でNULL値を排除してから並べ替える:  


`OR`で何れかの条件を満たす行を選択する:  


- [指定した値のリストと比較(IN句) - SQLite入門](http://www.dbonline.jp/sqlite/select/index5.html)

`OR`と`=`の代わりに、`IN`（または`NOT IN`）を用いる:


- [指定した値の範囲と比較(BETWEEN句) - SQLite入門](http://www.dbonline.jp/sqlite/select/index4.html)


[The Human Genome Browser at UCSC](http://genome.cshlp.org/content/12/6/996.full)

#### SQLite Functions
既存の列から新しい列を作成する。  

- [取得データのカラムに別名を付ける(AS句) - SQLite入門](http://www.dbonline.jp/sqlite/select/index8.html)


`||`は文字列を連結する演算子。

- [ifnull関数 / coalesce関数 - SQLite関数の使い方 - SQLite入門](http://www.dbonline.jp/sqlite/function/index23.html)


全てのNULL値をNAに置き換えるには、ifnull()関数を用いる:  


Table 13-3. SQLiteの関数  

- [SQLite関数の使い方 - SQLite入門](http://www.dbonline.jp/sqlite/function/)

#### SQLite Aggregate Functions
- [count関数 - SQLite入門](http://www.dbonline.jp/sqlite/function/index1.html)  
引数にはカラム名または「\*」を指定。カラム名を指定した場合にはカラムに含まれる値の中でNULLのカラムを除いた行数を返す。「\*」を指定した場合には行数を返す。





Table 13-4. SQLiteの集計関数  
- [SQLite関数の使い方 - SQLite入門](http://www.dbonline.jp/sqlite/function/)

`YYYY-MM-DD`。[xkcd: ISO 8601](http://xkcd.com/1179/)

- [重複データを除外して取得(DISTINCT) - SQLite入門](http://www.dbonline.jp/sqlite/select/index9.html)


#### Grouping rows with GROUP BY
- []()

#### Subqueries
- []()

#### Organizing Relational Databases and Joins
##### Organizing relational databases
##### Inner joins
##### Left outer joins

> ###### Other Types of Outer Joins

#### Writing to Databases
- []()

####
- []()

####
- []()

###

----------

# Chapter 14. Conclusion

- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ch14.html#chapter-conclusion)
- [Supplementary Material on GitHub](https://github.com/vsbuffalo/bds-files/tree/master/chapter-conclusion)

# Glossary
- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/glossary01.html#glossary)

# Bibliography
- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/bibliography01.html#bibliography)

# Index
- [Safari Books Online](https://www.safaribooksonline.com/library/view/bioinformatics-data-skills/9781449367480/ix01.html#idp43264544)

----------

 オンライン教材

- [ドットインストール - 3分動画でマスターする初心者向けプログラミング学習サイト](http://dotinstall.com)
- [UNIXコマンド辞典](http://codezine.jp/unixdic/)
- [UNIXの部屋](http://x68000.q-e-d.net/~68user/unix/)
- [UNIX - 会津大学UNIXウィキ](http://technique.sonots.com/?UNIX)
- [Linuxコマンド集：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060223/230520/?TOC=25)
- [Linuxコマンド集 - Linux入門 - Webkaru](http://webkaru.net/linux/cat/command/)

----------


