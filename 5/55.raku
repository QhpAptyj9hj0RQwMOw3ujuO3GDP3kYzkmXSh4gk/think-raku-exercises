sub gcd(Int $a where $a > 0, Int $b where $b > 0) {
    my $gcd;
    my $smaller-num;
    if $a > $b {
        $smaller-num = $b;
    } else {
        $smaller-num = $a;
    }
    for 1..$smaller-num {
        $gcd = $_ if $a %% $_ and $b %% $_;
    }
    return $gcd;
}