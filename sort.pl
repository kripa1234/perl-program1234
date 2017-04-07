$filename=$ARGV[0];
open(my$fb,$filename);
while($line=<$fb>)
{
 print "$line";
 @words=split(",",$line);
 @words=sort(@words);
 foreach $words(@words)
 {
  print "\t $words";
 }
 print "\n";
}
close($fb);

