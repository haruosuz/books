Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2019-10-20

----------

# DrBonoDojo

[生命科学者のためのDr.Bonoデータ解析実践道場](https://www.medsi.co.jp/products/detail/3708)

![](https://www.medsi.co.jp/html/upload/save_image/0923140935_5d88538fce9bc.jpg)

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

	git clone https://github.com/bonohu/DrBonoDojo
	cd DrBonoDojo/
	ls -F

----------
# chapter-1

1章 準備編 

1.1 Mac を買おう

1.2 Mac をセットアップしよう

 1.3 周辺機器の設定

p.15

----------
# chapter-2

2章 基礎編 

2.1 UNIX コマンドラインを使ってみよう

2.2 コマンドラインの基本操作 

p.36

2.3 シェルプログラミングのための環境構築 

p.37

Bioconda のインストール

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

	# coreutils
	conda install -c bioconda coreutils

	which df
	df -H
	/bin/df -H

	# EMBOSS
	conda install -c bioconda emboss

    cd ~/projects/DrBonoDojo/2-2/
	cat DNA.txt
	revseq DNA.txt rev.txt
	cat rev.txt 

http://togotv.dbcls.jp/tags.html?tag=EMBOSS

p.46

Homebrew

https://brew.sh/index_ja
```
# インストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

	# brewsci/bioとbrewsci/scienceを追加
	brew tap brewsci/bio
	brew tap brewsci/science

p.48

繰り返し処理

	seq 5 10
    for c in `seq 1 10`; do echo $c; done

    cd ~/projects/DrBonoDojo/2-3/
	sh for-seq.sh

p.57

2.4 ネットワークを介して遠隔のコンピュータを操作する

ssh

rsync

byobu

    # Install byobu
	conda install byobu

	byobu

    cd ${HOME}/miniconda3/lib

	ls -l libtinfo*

	ln libtinfow.6.dylib libtinfo.6.dylib 

	byobu

    exit

----------
# chapter-3

3章 実践編 

3.1 公共データベースからのデータ取得

https://www.slideshare.net/atsushhar/31-184203390
3-1

p.70

	cd
	cd Downloads/
	mkdir datadojo
	cd datadojo/
	pwd

	# 
	curl -O ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/195/GCF_000002195.4_Amel_4.5/GCF_000002195.4_Amel_4.5_protein.faa.gz

	# Install wget using Anaconda
	conda install wget

ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/ をブラウザ（Firefox または Chrome）で開く。
*assembly_summary_refseq_historical.txt* を右クリックし、「リンクのURLをコピー (Copy Link)」する。

Open the URL ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/ with your browser (Firefox or Chrome).
Right click the link *assembly_summary_refseq_historical.txt*, and select "Copy Link Address".

```
curl -O ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/assembly_summary_refseq_historical.txt
grep "GCF_000002195.4" assembly_summary_refseq_historical.txt

GCF_000002195.4	PRJNA13343	SAMN00002455	AADG00000000.6	na	7460	7460	Apis mellifera	strain=DH4		suppressed	Chromosome	Major	Full	2011/01/14	Amel_4.5	Human Genome Sequencing Center	GCA_000002195.1	different	ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/195/GCF_000002195.4_Amel_4.5
```

URL <ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/195/GCF_000002195.4_Amel_4.5> をブラウザ（Firefox または Chrome）で開く。 *GCF_000002195.4_Amel_4.5_protein.faa.gz* を右クリックし、「リンクのURLをコピー (Copy Link)」する。

Open the URL <ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/195/GCF_000002195.4_Amel_4.5> with your browser (Firefox or Chrome).
Right click the link *GCF_000002195.4_Amel_4.5_protein.faa.gz*, and select "Copy Link Address".

p.79

	cd ~/Downloads/datadojo/

    # https://www.uniprot.org/downloads
	curl -O ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz

いまここ

    # https://asia.ensembl.org/info/data/ftp/index.html
    # ftp://ftp.ensembl.org/pub/release-98/fasta/homo_sapiens/dna/
    wget -b ftp://ftp.ensembl.org/pub/release-98/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.toplevel.fa.gz

    # ftp://ftp.ensembl.org/pub/current_fasta/homo_sapiens/dna/
	curl -O ftp://ftp.ensembl.org/pub/current_fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.toplevel.fa.gz


3.2 配列類似性検索 

p.110

3.3 系統樹作成 

p.122

http://www.microbesonline.org/fasttree/
FastTree 2.1: Approximately-Maximum-Likelihood Trees for Large Alignments
To quickly estimate the reliability of each split in the tree, FastTree computes local support values with the Shimodaira-Hasegawa test (these are the same as PhyML 3's "SH-like local supports").
http://www.microbesonline.org/fasttree/#Support

fasttreeのLocal support valuesは、bootstrap値ではないことに注意。
http://www.microbesonline.org/fasttree/#Support


p.129

3.4 ドメイン解析 

	conda install hmmer


p.145

DoMosaics (https://doi.org/10.7875/togotv.2017.077) のウェブサイトは
http://www.domosaics.net/ http://domosaics.net/docs/index.html
が利用できないので
https://domainworld.uni-muenster.de/developing/domosaics/
を利用することになりました。


情報ありがうございます。
修正しました。
https://togotv.dbcls.jp/20170804.html



3.5 発現定量解析 

3.6 データ統合解析

----------

# References

https://www.medsi.co.jp/products/detail/3708
(MEDSi)株式会社 メディカル・サイエンス・インターナショナル / 生命科学者のためのDr.Bonoデータ解析実践道場

https://github.com/bonohu/DrBonoDojo
GitHub - bonohu/DrBonoDojo: 生命科学者のためのDr.Bonoデータ解析実践道場

2019/10/20(日)
https://oum-python.connpass.com/event/149085/
「生命科学者のためのDr.Bonoデータ解析実践道場」読書会 @大阪 - connpass

2019/9/25
http://blog.hypoxia.jp/tag/drbonodojo
「生命科学者のためのDr.Bonoデータ解析実践道場」が出ました




----------

