@files;
my @direc;
@filer ='cd ~/;ls -l';
$exfile='^_';
$exdir='^d';
foreach $file(@filer)
{
if($file==~m{$exfile})
{
@f1=split(/ /,$file);
push @files,$f1[scalar @f1-1];
#print "File\n";
}
if($file==~m{$exdir})
{
@f2=split(/ /,$file);
push @direc,$f2[scalar @f2-1];
#print "file \n";
}
}
print" Directories are:\n";
foreach $file(@direc)
{
print "\t $file\n";
}
print "Filess are :\n";
foreach $file(@files)
{
print "\t$file \n";
}
