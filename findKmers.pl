#!/usr/bin/perl

#*************************Taking input from user*************************
print "Input String : ";
$str=<STDIN>;
chomp $str;
print "\n";
print "Required kmer length : ";
$mer=<STDIN>;
print "\n";

#************Function calling to find kmers and printing them************
@kmer=find_kmer(@str);
print "kmers :\n"; 
for($i=0;$i<$k;$i++)
{print $i+1;print ". $kmer[$i]\n";}

#**********Function calling to find unique kmers and printing them*********

@u_kmer=unique_kmer(@kmer);
$i=0;
print "Unique kmers :\n"; 
foreach $y(@u_kmer)
{print $i+1; print ". $y\n";$i++;}

#*************************Subroutine to find kmers*************************
$k=0;
$j=0;
sub find_kmer(){
my @str=@_; #catching the array and making it local to subroutine
$len=length($str); 
$cnt=$len-$mer+1;
while($k<$cnt){
$kmer[$j]=substr $str, $k, $mer;
$j++;
$k++;
}
return @kmer
}

#***********************Subroutine to find unique kmers***********************

sub unique_kmer(){
my @kmer=@_;  #catching the array and making it local to subroutine
for($i=0;$i<$cnt;$i++)  #setting counter to 0
{$count[$i]=0;}
$i=0;
$j=0;
$l=0;
while($i<$cnt){       #comparing 
for($j=0;$j<$i;$j++){
if($kmer[$i] eq $kmer[$j])
{$count[$i]++;break;}  
}
if($count[$i]==0)  #storing unique values in array @u_kmer
{$u_kmer[$l]=$kmer[$i];
$l++;}

$i++;
}
return @u_kmer;
}



