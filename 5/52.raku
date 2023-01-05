#!/usr/bin/env perl6

sub ack(Int $m, Int $n where $m >= 0 && $n >= 0) {
    return $n + 1 if $m == 0;
    if $m > 0 and $n == 0 {
        ack($m - 1, 1);
    } elsif ($m > 0 and $n > 0) {
        ack($m - 1, ack($m, $n - 1));
    } else {
        # error condition
    }
}
say ack(3, 4);