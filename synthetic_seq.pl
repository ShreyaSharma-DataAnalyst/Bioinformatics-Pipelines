#!/usr/bin/perl

open(fh,"<$ARGV[0]");
$seq="";
$leng = $ARGV[0];
$arr[0] = 'A';
$arr[1] = 'T';
$arr[2] = 'G';
$arr[3] = 'C';

for($i=0;$i<$leng;$i++){
	$num=int rand(4);
	$seq.=$arr[$num];
	}

open($fh,">output.fa");
print $fh ">output\n";
print $fh $seq;
close $fh;

$i=0;$j=0;
open($fh1,"<output.fa");
while($buf=<$fh1>){
	chomp $buf;
	if($buf!~/\>/)
		{$seqn.=$buf;}
	}
$len=length($seqn);

print("Length of synthetic genome sequence : $len");
