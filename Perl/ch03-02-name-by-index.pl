#!/usr/bin/perl -w
#Print name given the index

@names = qw /fred betty barney dino wilma pebbles bamm-bamm gino gonzo bonzo/;
print "Names: @names\n";

$sznames = @names;
print "Name length: $sznames\n";

@out = @names;
$idx = 0;

print "Enter pos (^D to exit): ";
while ($pos = <STDIN>)
{
    chomp($pos);
    if ($pos <= @names && $pos > 1)
    {
	@positem = splice @out, $pos-1;
	@postail = splice @positem, 1;
	push @positem, @out, @postail;
	@out = @positem; 
        print "Out: @out\n";
    }

    last if ($idx++ == @names);

    print "Enter pos (^D to exit): ";
}
print "\nNames Out: @out\n";
