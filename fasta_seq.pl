#!/usr/bin/perl

open(fh,"<$ARGV[0]");

$count=0;
$i=0;$j=1;

while(<fh>){
	chomp;
	$buf=$_;
	if($buf=~/\>/)
		{$count++;$i++;$header[$i]=$buf;}
	else
		{$fasta[$i].=$buf;}
	}

print "Total number of fasta sequences : $count\n";
print "FastaHeader\t\tLength of seqn\n";
while($count>=$j){
	print "$header[$j]\t\t";
	print length $fasta[$j];
	print "\n";
	$j++;
	}

