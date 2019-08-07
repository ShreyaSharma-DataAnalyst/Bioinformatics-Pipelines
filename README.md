# Bioinformatics-Pipelines
Pipelines dealing with genomic data analysis

## findKmers.pl 
Its a perl script that outputs the kmers as well as unique kmers of a string, given a file string and a kmer length
#### Requirements : perlV5 or more
#### Usage : perl findKmers.pl <.txt file>
#### Output : kmers made and unique kmers found
The layout of text file is important :
First line - the string
Second line - length of kmer required


## synthetic_seq.pl
Its a perl script which creates a synthetic genome sequence given the length of the sequence
#### Requirements : perlV5 or more
#### Usage : perl synthetic_seq.pl <\length of seq>
#### Output : A fasta file containing the artificial sequence of ATGC , length of sequence created



## gtf_find_gene.pl
Its a perl script which finds the start region, end region and gene id, given a gtf file
#### Requirements : perlV5 or more
#### Usage : perl gtf_find_gene.pl <.gtf file> 
#### Output : A text file containing the start region, end region and gene id. It also gives total number of genes found.



## cigar.pl
Its a perl script which finds the cigar string, given .aln file
#### Requirements : perlV5 or more
#### Usage : perl cigar.pl <.aln file> 
#### Output : Cigar string.
