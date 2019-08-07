#!/usr/bin/perl


open(fh,"<$ARGV[0]");
$i=0;


while($buf=<fh>){
chomp;
@arr=split("\t",$buf);
chomp @arr;
if($arr[2] eq "gene"){
@id_tmp1=split(";",$arr[8]);
@id_tmp2=split(" ",$id_tmp1[0]);
$id_tmp2[1]=~s/"//g;
$id[$i]=$id_tmp2[1];
$start[$i]=$arr[3];
$end[$i]=$arr[4];
$i++;
}
}

$count=$i+1;
print "Total genes in chr21 : $count\n";

$i=0;

print "\nStartSite	EndSite	GeneId\n";
while($i<$count){
print "$start[$i]	$end[$i]	$id[$i]\n";
$i++;
}
