sub recurse($n, $s) {
    if ($n == 0) {
        say $s;
    } else {
        recurse $n - 1, $n + $s;
    }
}
recurse(-1, 0);

# 1
# Infinite recursion

# 2
# Takes 1 from $n, adds $n to $s