

$url=$ARGV[0];
open(DATA,$url);
while(<DATA>)
{

$content=$_;
@check=split(" ",$content);
$size=scalar(@check);
if($size>1)
{
print "\ninvalid URL is $content\n";
}
else
{
$expr='^(((ht|f)tps?)?\:\/\/)[a-z0-9]+(\.[a-z0-9]+)*(\.com|\.in|\.org|\.[a-z0-9])*[-#_&\?=a-z0-9]*(\.)*([a-z0-9])*';

#$expr='^http(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?$';
if($tent=m{$expr}g)
{
print "\n valid URL is $content \n";
}
else
{
print "\n Invalid URL is $content \n";
}

}}
