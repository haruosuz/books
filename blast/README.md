Last Update: 2021-05-01

----------

# O'Reilly's BLAST book

![](http://akamaicovers.oreilly.com/images/9780596002992/cat.gif)

- https://www.oreilly.com/library/view/blast/0596002998/
BLAST [Book]
- https://www.oreilly.com/catalog/errata.csp?isbn=9780596002992
Errata | O'Reilly Media BLAST
- https://books.google.co.jp/books?id=zDqksXUaoBAC&hl=ja&source=gbs_navlinks_s
BLAST - Ian Korf, Mark Yandell, Joseph Bedell - Google ブックス








----------

## References
- [Recommended books - Bioinformatics.Org Wiki](http://www.bioinformatics.org/wiki/recommended_books)

- [BLAST® Command Line Applications User Manual - NCBI Bookshelf](http://www.ncbi.nlm.nih.gov/books/NBK279690/)
 - [Options for the command-line applications. - BLAST](http://www.ncbi.nlm.nih.gov/books/NBK279675/)
 - [Building a BLAST database with local sequences](http://www.ncbi.nlm.nih.gov/books/NBK279688/)
 - [Extracting data from BLAST databases with blastdbcmd](http://www.ncbi.nlm.nih.gov/books/NBK279689/)
- [BLAST: eTutorials.org](http://etutorials.org/Misc/blast/)



----------



## Data

Scoring matrices were downloaded on 2015-12-08 from <ftp://ftp.ncbi.nih.gov/blast/matrices> into `data/matrices` using:

    wget -b -P data/matrices ftp://ftp.ncbi.nih.gov/blast/matrices/{README.matrices,BLOSUM62*,PAM200*}

## Scripts

The perl scripts downloaded on 2015-12-08 from this book's web site <http://examples.oreilly.com/9780596002992/> using:

    wget http://examples.oreilly.com/9780596002992/BLAST_examples.zip
    unzip BLAST_examples.zip
    # or
    wget http://examples.oreilly.com/9780596002992/BLAST_examples.tar.gz
    tar xvzf BLAST_examples.tar.gz

----------

## Steps

    mkdir -p ~/projects/oreilly_blast/{data,references}

### 3.1 Global Alignment: Needleman-Wunsch

Figure 3-5. Filled alignment matrix

![Figure 3-5. Filled alignment matrix](http://examples.oreilly.com/9780596002992/BLAST_Fig_3-5.jpg)

*Example 3-1. Trace-back with Needleman-Wunsch algorithm*

    # usage: examples/Ch3/example3-1.pl <sequence 1> <sequence 2>
    perl examples/Ch3/example3-1.pl COELANCANTH PELICAN

    COELANCANTH
    -PEL-ICAN--

### 3.2 Local Alignment: Smith-Waterman

![Figure 3-6. Filled Smith-Waterman alignment matrix](http://examples.oreilly.com/9780596002992/BLAST_Fig_3-6.jpg)

Figure 3-6. Filled Smith-Waterman alignment matrix

*Example 3-2. Local alignment with the Smith-Waterman algorithm*

    # usage: examples/Ch3/example3-2.pl <sequence 1> <sequence 2>
    perl examples/Ch3/example3-2.pl COELANCANTH PELICAN
    # printed
    CAN
    CAN
    # instead of 
    ELACAN
    ELICAN

### 4.1 Introduction to Information Theory

[Shannon’s Entropy](https://en.wikipedia.org/wiki/Entropy_%28information_theory%29)

I added [`chomp`](http://perldoc.perl.org/functions/chomp.html) as follows:  

    # examples/Ch4/example4-0.pl
    while (<>) {
        chomp;  # avoid \n on last field

flip of a coin (1 bit):  

    echo "ht" | examples/Ch4/example4-0.pl

trick coin (0.81 bits):  

    echo "hhht" | examples/Ch4/example4-0.pl

random DNA (2 bits):  

    echo "ATGC" | examples/Ch4/example4-0.pl

90 percent A or T and 10 percent G or C (1.47 bits):  

    echo "AAAAAAAAATTTTTTTTTGC" | examples/Ch4/example4-0.pl

### 4.2 Amino Acid Similarity

Figure 4-3. Amino acid chemical relationships

![http://etutorials.org/Misc/blast/Part+II+Theory/Chapter+4.+Sequence+Similarity/4.2+Amino+Acid+Similarity/](http://etutorials.org/shared/images/tutorials/tutorial_98/blst_0401.gif)

### 4.4 Target Frequencies, lambda, and H

*Example 4-1. A Perl script for estimating lambda*

    # usage: examples/Ch4/example4-1.pl <match> <mismatch>
    perl examples/Ch4/example4-1.pl 10 -10

### 5.2 The BLAST Algorithm

*Example 5-1. Determining the neighborhood for three-letter words*

    # usage: examples/Ch5/example5-1.pl <matrix> <word> <threshold>
    perl examples/Ch5/example5-1.pl data/matrices/BLOSUM62 RGD 11
    perl examples/Ch5/example5-1.pl data/matrices/PAM200 RGD 13

### 7.1 Basic BLAST Statistics

    less examples/Ch7/BlastStats.pm 

7.1.1 Actual Versus Effective Lengths


----------





----------
