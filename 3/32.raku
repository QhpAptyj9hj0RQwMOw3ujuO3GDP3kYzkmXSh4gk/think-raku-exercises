sub do-twice($code, $value) {
    $code($value);
    $code($value);
}
sub print-twice($value) {
    say $value;
    say $value;
}
sub do-four($code, $value) {
    do-twice($code, $value);
    do-twice($code, $value);
}
do-twice(&print-twice, "What's up doc");
do-four(&print-twice, "What's up doc");