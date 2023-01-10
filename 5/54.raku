sub is-power-of($a, $b) {
    if ($a == $b) {
        return True;
    }
    elsif ($a %% $b and is-power-of($a/$b, $b)) {
        return True;
    } else {
        return False;
    }
}
say is-power-of(9, 3);