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

@tota = qw / 1 2 3 4 5 6 7 8 9 10 /;
$toto = &tot(@tota);
print "Hi Toto: $toto!\n";
