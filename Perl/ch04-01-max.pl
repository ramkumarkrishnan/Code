#!/usr/bin/perl -w
use v5.10;
sub max {
    if (@_ != 2) {
        print "&max should have exactly two parameters!\n";
    }
    my ($m, $n);
    ($m, $n) = @_;
    print "m: $m\n";
    print "n: $n\n";
    if ($m > $n)
    {
        return $m;
    }
    else
    {
        return $n;
    }
}

$maxo = &max(1,2);
print "Hi $maxo!\n";
