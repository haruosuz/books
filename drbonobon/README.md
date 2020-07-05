Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-05-18

----------

# drbonobon
[Dr. Bonoの生命科学データ解析](https://www.medsi.co.jp/books/products/detail.php?product_id=3588)

![](https://www.medsi.co.jp/books/upload/save_image/09271003_59caf8cb2985a.jpg)

----------

# Table of Contents
[目次](https://honto.jp/netstore/pd-contents_0628707983.html)

- [chapter-0](#chapter-0) 0章　序文
- [chapter-1](#chapter-1) 1章　生命科学データ解析の歴史
- [chapter-2](#chapter-2) 2章　生命科学分野の公共データベース
- [chapter-3](#chapter-3) 3章　データの形式とその取扱い方
- [chapter-4](#chapter-4) 4章　基本データ解析
- [chapter-5](#chapter-5) 5章　実用データ解析

----------

# chapter-0

----------
# chapter-1

----------
# chapter-2
2. 生命科学分野の公共データベース

- 2017-12-16 読書会 [じょん](https://rstudio-pubs-static.s3.amazonaws.com/342215_e324c52b4936405e99a55ff6ca5bd1fa.html#/)

----------
# chapter-3

３章 データの形式とその取り扱い方
３．１ 基本リテラシ
３．２ データの形式
３．３ 生命科学分野で使われてきたデータ形式

p.101

DDBJ (GenBank) 形式


----------
# chapter-4
4. 基本データ解析

- 2017-12-16 読書会 [大石直哉 @oec014](https://github.com/dogrunjp/presentation/blob/master/20171216_drbonobon_4/PITCHME.md)

4.1 配列データ解析

p.125

ドットプロット

    # fasta_cds_na
    ACCESSION=L07770.1
    curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=fasta_cds_na&retmode=text" > $ACCESSION.fasta; 

    # fasta
    ACCESSION=U23808.2
    curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=fasta&retmode=text" > $ACCESSION.fasta; 

    dottup -asequence L07770.1.fasta -bsequence U23808.2.fasta -wordsize 10

p.133

BLAST


----------
# chapter-5

----------

# References

- [Dr. Bono's website](http://data.dbcls.jp/~bono/)

## twitter
- [#drbonobon hashtag on Twitter](https://twitter.com/hashtag/drbonobon)
- [アラフィフのポスドク (@bonohu) | Twitter](https://twitter.com/bonohu)

## Book Reviews
書評

- http://genshi.ro/2017/11/08/dr-bonoの生命科学データ解析/
- 2017-10-23 http://blog.kzfmix.com/entry/1508717049

## reading circle
読書会

- [2018-04-14@大阪](https://connpass.com/event/75699/)
- [2017-12-16@静岡](https://connpass.com/event/69633/)

----------

