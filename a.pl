   
$file=$ARGV[0];
$word=$ARGV[1];
open(my $fh,'<:encoding(UTF-8)',$file) or die "COULD NOT OPEN FILENAME '$file' $!";
$total=0;
 while (my $line = <$fh>) {

        chomp $line;
        foreach my $str (split /\s+/, $line) 
{


foreach my $str (sort keys %total) {
if($str==$word)
{
            $total++;
      #  printf "%-31s %s\n", $str, $count{$str};
   }
}
        }
    }
#my $count=scalar(@match);

#$total=$total+$count;
print " $total \t $line \n";






