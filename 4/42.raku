# 1
sub check-fermat($a, $b, $c, $n) {
    if $n > 2 and ($a ** $n + $b ** $n == $c ** $n) {
        say 'Fermat was wrong.';
    } else {
        say 'No, that doesn\'t work';
    }
}