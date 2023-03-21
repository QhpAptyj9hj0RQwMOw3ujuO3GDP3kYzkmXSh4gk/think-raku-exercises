sub my-sqrt($a) {
    my $x = $a / 4;
    while True {
        my $y = ($x + $a/$x) / 2;
        last if $y == $x;
        $x = $y;
    }
    return $x;
}
sub test-square-root() {
    say 'a  mysqrt(a)   sqrt(a) diff';
    for 1..9 {
        say $_, '    ', my-sqrt($_), '    ', sqrt($_), '   ', sqrt($_) - my-sqrt($_);
    }
}
test-square-root();