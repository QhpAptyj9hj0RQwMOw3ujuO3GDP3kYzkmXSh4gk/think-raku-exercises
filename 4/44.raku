# 1
my $n-two = 1;
my $n-one = 1;
my $n;
say $n-two;
say $n-one;
for 1..18 {
    $n = $n-one + $n-two;
    $n-two = $n-one;
    $n-one = $n;
    say $n;
}

# 2
sub fib() {
    say 'Please enter required Fibonacci number';
    my $fib = prompt('nth:');
    $fib -= 2;
    my $n-two = 1;
    my $n-one = 1;
    my $n;
    for 1..$fib {
        $n = $n-one + $n-two;
        $n-two = $n-one;
        $n-one = $n;
    }
    say $n;
}
fib();