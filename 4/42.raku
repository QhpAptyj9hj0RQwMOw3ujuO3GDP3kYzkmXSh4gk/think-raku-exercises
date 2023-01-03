# 1
sub check-fermat($a, $b, $c, $n) {
    if $n > 2 and ($a ** $n + $b ** $n == $c ** $n) {
        say 'Fermat was wrong.';
    } else {
        say 'No, that doesn\'t work';
    }
}

# 2
sub prompt-fermat() {
    my ($a, $b, $c, $n);
    say 'Please enter values to check Fermat\'s theorem with.';
    print '$a:';
    $a = get;
    print '$b:';
    $b = get;
    print '$c:';
    $c = get;
    print '$n:';
    $n = get;
    check-fermat($a, $b, $c, $n);
}

prompt-fermat();