#!/usr/bin/perl

open(fh,"<$ARGV[0]");
$i=0;

$aln=$ARGV[0];  

open(ALN,"<$aln") || die "ERROR: cannot open $aln. Re-enter input file\n";
$i=0;$k=0;
while(<ALN>){
	$line = $_;
	chomp $line;
	if(substr($line,0,1) ne '#' && substr($line,0,1) ne ''){
		if(substr($line,0,1) eq ' ')
			{$str.=substr($line,21,50);}
		if(substr($line,0,1) ne ' ')
			{$atgc_str.=substr($line,21,50)}
		}
	}

$len1=length($atgc_str);

for($i=0;$i<$len1;$i=$i+100){
	$atgc_ref.=substr($atgc_str,$i,50);
	}

print "CIGAR String : \n";
$len=length($str);
$count1=0;

@arr=split //,$str;
@arr1=split //,$atgc_ref;
for($i=0;$i<$len;$i++){
	if($arr[$i] eq '|' || $arr[$i] eq '.'){
		$count1++;
		$str1=$count1.'M';
	}
	else{
	print $str1;
	$count1=0;
	$str1="";
	}
	if($arr[$i] eq ' '){
		if($arr1[$i] eq '-'){
			$count2++;
			$str2=$count2.'I';
		}
		else
			{$count3++;
			$str2=$count3.'D';
		}
	}
	else
		{print $str2;
		$count2=0;
		$count3=0;
		$str2="";
	}
}

print $str1;
print $str2;
print "\n";





