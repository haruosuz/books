Last Update: 2020-07

----------

# DrBonoDojo

[生命科学者のためのDr.Bonoデータ解析実践道場](https://www.medsi.co.jp/products/detail/3708)

![](https://images-na.ssl-images-amazon.com/images/I/61fZikM0CcL._AC_UL160_.jpg)

----------

# Table of Contents
[道場本の章立て](http://bonohu.jp/blog/drbonodojo-chapters.html)
- [chapter-1](#chapter-1) 1章 準備編
- [chapter-2](#chapter-2) 2章 基礎編
- [chapter-3](#chapter-3) 3章 実践編

----------
準備

    mkdir -p ~/Downloads/datadojo/
    cd ~/Downloads/datadojo/

p.51


----------
# chapter-1

1章 準備編 

p.15

----------
# chapter-2

2章 基礎編 

2.1 UNIX コマンドラインを使ってみよう

p.17

2.2 コマンドラインの基本操作 

[UNIXコマンド入門 [一般ユーザー編] (全24回) - プログラミングならドットインストール](https://dotinstall.com/lessons/basic_unix_v2)

```
cd
pwd
```


p.36

2.3 シェルプログラミングのための環境構築 

p.37

Bioconda

https://bioconda.github.io/

https://conda.io/miniconda.html

https://bioconda.github.io/user/install.html
```
# 1. Install conda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
sh Miniconda3-latest-MacOSX-x86_64.sh

# 2. Set up channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

# 3. Install packages
```


    env | grep "PATH"



    cd ~/projects/DrBonoDojo/2-2/

http://togotv.dbcls.jp/tags.html?tag=EMBOSS

p.46

Homebrew

https://brew.sh/index_ja
```
# インストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


p.48

繰り返し処理

    for c in `seq 1 10`; do echo $c; done

    cd ~/projects/DrBonoDojo/2-3/

p.57

2.4 ネットワークを介して遠隔のコンピュータを操作する

ssh

rsync

byobu

    # Install byobu


    cd ${HOME}/miniconda3/lib




    exit

----------
# chapter-3

3章 実践編 

3.1 公共データベースからのデータ取得

p.70

コマンドラインでのデータ取得



    # Install wget using Anaconda

ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/ をブラウザ（Firefox または Chrome）で開く。
*assembly_summary_refseq_historical.txt* を右クリックし、「リンクのURLをコピー (Copy Link)」する。  
Open the URL ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/ with your browser (Firefox or Chrome).
Right click the link *assembly_summary_refseq_historical.txt*, and select "Copy Link Address".

    curl -O ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/assembly_summary_refseq_historical.txt
    grep "GCF_000002195.4" assembly_summary_refseq_historical.txt

URL <ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/195/GCF_000002195.4_Amel_4.5> をブラウザ（Firefox または Chrome）で開く。 *GCF_000002195.4_Amel_4.5_protein.faa.gz* を右クリックし、「リンクのURLをコピー (Copy Link)」する。  
Open the URL <ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/195/GCF_000002195.4_Amel_4.5> with your browser (Firefox or Chrome).
Right click the link *GCF_000002195.4_Amel_4.5_protein.faa.gz*, and select "Copy Link Address".

p.73

TogoWSによる個別の塩基配列取得

- http://togows.dbcls.jp/site/en/rest.html
TogoWS: REST
- http://togows.dbcls.jp/site/ja/index.html
TogoWS
- http://togotv.dbcls.jp/ja/20110425.html
TogoWS RESTサービスを使い倒す

    # 

p.78

DBそのものの取得

p.79

    cd ~/Downloads/datadojo/

[UniProt](https://en.wikipedia.org/wiki/UniProt)/[Swiss-Prot](https://ja.wikipedia.org/wiki/Swiss-Prot)
タンパク質データベース


https://github.com/haruosuz/introBI/blob/master/2019/CaseStudy.md#uniprot_sprot

<https://www.uniprot.org/downloads> をブラウザ（Firefox または Chrome）で開く。  
Reviewed (Swiss-Prot) *fasta* を右クリックし、「リンクのURLをコピー (Copy Link)」する。  
Open the URL <https://www.uniprot.org/downloads> with your browser (Firefox or Chrome).  
Right click the link Reviewed (Swiss-Prot) *fasta* and select "Copy Link Address".

    # download "uniprot_sprot.fasta.gz" file
    wget -b ftp://ftp.uniprot.org/pub/databases/uniprot/knowledgebase/uniprot_sprot.fasta.gz

Ensembl human genome の塩基配列

    # ftp://ftp.ensembl.org/pub/current_fasta/homo_sapiens/dna/

    # https://asia.ensembl.org/info/data/ftp/index.html
    # ftp://ftp.ensembl.org/pub/release-98/fasta/homo_sapiens/dna/
    wget -b ftp://ftp.ensembl.org/pub/release-98/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.toplevel.fa.gz

3.2 配列類似性検索 

p.87

[BLAST](https://github.com/haruosuz/bioinfo/blob/master/references/README.blast.md)
: Basic Local Alignment Search Tool

BLASTのインストール

    # install BLAST with conda

BLAST用DBの作成

p.93

DBはアミノ酸配列

    # Decompressing data
    # Building a BLAST database http://www.ncbi.nlm.nih.gov/books/NBK279688/
    # Running BLASTP
    ln -s ~/Downloads/datadojo/DrBonoDojo/3-2/HIF1_CAEEL.fasta

p.99

**応用例１：予測遺伝子セットの機能アノテーション**

p.103

**応用例２：メタゲノムデータ解析**

SRAからのデータ取得

https://www.ncbi.nlm.nih.gov/pubmed/26951067
DNA Res. 2016 Apr;23(2):125-33. doi: 10.1093/dnares/dsw002. Epub 2016 Mar 6.
The gut microbiome of healthy Japanese and its microbial and functional uniqueness.
Nishijima S1, Suda W2, Oshima K1, Kim SW3, Hirose Y4, Morita H5, Hattori M6.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4833420/
All bacterial metagenomic sequences were deposited in DDBJ under accession number PRJDB3601.

https://trace.ddbj.nig.ac.jp/DRASearch/run?acc=DRR042266




p.106

**応用例３：ローカルにBLASTウェブサーバーを立てる**

p.110

3.3 系統樹作成

[多重配列アライメントと分子系統樹](https://github.com/haruosuz/r4bioinfo/tree/master/R_Avril_Coghlan#multiple-alignment-and-phylogenetic-trees)

配列取得

p.111

https://integbio.jp/dbcatalog/record/nbdc00101
HomoloGene
http://www.ncbi.nlm.nih.gov/homologene
全ゲノム配列が決定された20種類の真核生物の間で自動的検出したホモログ遺伝子のセット、およびmRNAやタンパク質の配列データを提供しています。他の生物種のUniGene配列でホモログの可能性があるものも表示されます。

https://doi.org/10.7875/togotv.2015.066
2015-07-14 HomoloGeneを用いた相同な遺伝子の検索

    # Perform sequence similarity search against UniProt with blastp
    ln -s ~/Downloads/datadojo/DrBonoDojo/3-3/HIF1_CAEEL.fasta
    # 
    ln -s ~/Downloads/datadojo/DrBonoDojo/3-3/pre_aa.txt
    # Extracting data from BLAST databases with blastdbcmd http://www.ncbi.nlm.nih.gov/books/NBK279689/
    # look at this with less # if you need to quit less, press q

p.116

多重配列アライメントの実行

p.118

[MAFFT](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#mafft)

    # mafft --help
    # look at this with less # if you need to quit less, press q

多重配列アライメントの可視化


- https://doi.org/10.7875/togotv.2013.049
Jalviewを使って配列解析・系統樹作成をする
- http://www.jalview.org/getdown/release/
Offline macOS Disk Image (75MB)

シークエンスロゴによる可視化

http://weblogo.berkeley.edu/logo.cgi
WebLogo - Create Sequence Logos

p.122

系統樹作成と可視化

[FastTree](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#fasttree)

    # install FastTree with conda
    # Running FastTree
    # look at this with less # if you need to quit less, press q

[MEGA](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#mega)
: Molecular Evolutionary Genetics Analysis software

結果の解釈

    ln -s ~/Downloads/datadojo/DrBonoDojo/3-3/id2species.pl



p.129

3.4 ドメイン解析 

https://bioconda.github.io/recipes/hmmer/README.html
```
conda install hmmer
```

p.145

https://doi.org/10.7875/togotv.2017.077
DoMosaics
現在は https://domainworld.uni-muenster.de/developing/domosaics/ でホストされています。

3.5 発現定量解析 

3.6 データ統合解析


----------

# References

https://www.medsi.co.jp/products/detail/3708
(MEDSi)株式会社 メディカル・サイエンス・インターナショナル / 生命科学者のためのDr.Bonoデータ解析実践道場

https://github.com/bonohu/DrBonoDojo
GitHub - bonohu/DrBonoDojo: 生命科学者のためのDr.Bonoデータ解析実践道場

2019/9/25
http://blog.hypoxia.jp/tag/drbonodojo
「生命科学者のためのDr.Bonoデータ解析実践道場」が出ました

## 2019-10-20
https://oum-python.connpass.com/event/149085/
「生命科学者のためのDr.Bonoデータ解析実践道場」読書会 @大阪 - connpass

https://www.slideshare.net/atsushhar/31-184203390
3-1

https://www.slideshare.net/YoshiakiYasumizu/drbonodojo36
drbonodojo3-6 データ統合解析



----------


https://github.com/haruosuz/bioinfo/blob/master/2019/CaseStudy.md
https://github.com/haruosuz/introBI/blob/master/2018/CaseStudy.md
https://github.com/haruosuz/DS4GD/blob/master/2017giga/CaseStudy.md

