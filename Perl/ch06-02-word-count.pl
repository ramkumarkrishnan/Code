#!/usr/bin/perl -w
#Print name given the index

my $sznames = 10;
print "Hash table size: $sznames\n";

my %hashname;
my $idx = 0;
print "Enter name (^D to exit): ";
while ($name = <STDIN>)
{
    chomp($name);
    if (!$hashname{$name})
    {
	$hashname{$name} = 1;  #initialize
    }
    else
    {
	$hashname{$name} += 1; # increment
    };
    # $hashname{$name} = $name;
    last if ($idx++ == $sznames);

    print "Enter name (^D to exit): ";
}

print "\n";
while (($key, $value) = each %hashname)
{
    print "$key => $value\n";
}

print "Enter name (^D to exit): ";
while ($name = <STDIN>)
{
    chomp($name);

    if ($hashname{$name})
    {
        print "Count: $hashname{$name}\n";
    }
    else
    {
	print "Count: 0\n";
    }

    print "Enter name (^D to exit): ";
}
