#!/usr/bin/perl -w

# read list of strings on separate lines until end of input terminated by 0

$index = 0;
while (defined($line = <STDIN>))
{
   @strlist[$index] = $line;
   $index += 1;
}
print "List before reversal: \n @strlist";
@strlist = reverse @strlist;
print "List after reversal: \n @strlist";
