Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2019-10-20

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

    mkdir ~/projects
    cd ~/projects/

p.51


----------
# chapter-1

1章 準備編 

p.15

----------
# chapter-2

2章 基礎編 

2.1 UNIX コマンドラインを使ってみよう

2.2 コマンドラインの基本操作 

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

p.79



https://github.com/haruosuz/introBI/blob/master/2019/CaseStudy.md#uniprot_sprot

<https://www.uniprot.org/downloads> をブラウザ（Firefox または Chrome）で開く。  
Reviewed (Swiss-Prot) *fasta* を右クリックし、「リンクのURLをコピー (Copy Link)」する。

Open the URL <<https://www.uniprot.org/downloads>> with your browser (Firefox or Chrome).  
Right click the link Reviewed (Swiss-Prot) *fasta* and select "Copy Link Address".

    # download "uniprot_sprot.fasta.gz" file
    wget -b ftp://ftp.uniprot.org/pub/databases/uniprot/knowledgebase/uniprot_sprot.fasta.gz

いまここ

    # https://asia.ensembl.org/info/data/ftp/index.html
    # ftp://ftp.ensembl.org/pub/release-98/fasta/homo_sapiens/dna/
    wget -b ftp://ftp.ensembl.org/pub/release-98/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.toplevel.fa.gz

    # ftp://ftp.ensembl.org/pub/current_fasta/homo_sapiens/dna/


3.2 配列類似性検索 

p.110

3.3 系統樹作成 

p.122

FastTree computes local support values with the Shimodaira-Hasegawa test
http://www.microbesonline.org/fasttree/#Support
If you want to use the traditional bootstrap instead, 

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

