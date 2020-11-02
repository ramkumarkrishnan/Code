#!/usr/bin/perl -w
use v5.10;
sub tot {
    if (@_ < 1) {
        print "&tot should have atleast one parameter!\n";
    }
    my $summ = 0;
    foreach my $number ( @_ ) {
        $summ += $number;
    }
    return $summ;
}

#@tota = qw / 1 .. 1000 /;
$toto = &tot(1..1000);
print "Hi Toto: $toto!\n";
