#!/usr/bin/perl -w
use v5.10;
sub avgjoe {
    if (@_ < 1) {
        print "&tot should have atleast one parameter!\n";
    }
    my $summ = 0;
    my $cnt = 0;
    foreach my $number ( @_ ) {
        $summ += $number;
	$cnt++;
    }
    return $summ/$cnt;
}

#@tota = qw / 1 .. 1000 /;
$avgo = &avgjoe(1..1000);
print "Hi AvgJoe: $avgo!\n";
