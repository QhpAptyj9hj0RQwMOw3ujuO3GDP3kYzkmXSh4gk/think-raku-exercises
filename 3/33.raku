sub print-line-one() {
    print '+ - - - - + - - - - +';
}
sub print-line-two() {
    print '|         |         |';
}
sub print-line-extend() {
    print ' - - - - + - - - - +';
}
sub print-line-two-extend() {
    print '         |         |';
}
sub print-newline() {
    print "\n";
}
sub do-x($num, &subr, &subr-two) {
    for 1..$num -> $x {
        subr();
        subr-two();
    }
}
sub do-y($num, &subr, &subr-two, &subr-three) {
    for 1..$num -> $x {
        subr();
        subr-two();
        subr-three();
    }
}
sub print-grid() {
    print-line-one();
    print-newline();
    do-x(4, &print-line-two, &print-newline);
    print-line-one();
    print-newline();
    do-x(4, &print-line-two, &print-newline);
    print-line-one();
    print-newline();
}
sub print-bigger-grid() {
    print-line-one();
    print-line-extend();
    print-newline();
    do-y(4, &print-line-two, &print-line-two-extend, &print-newline);
    print-line-one();
    print-line-extend();
    print-newline();
    do-y(4, &print-line-two, &print-line-two-extend, &print-newline);
    print-line-one();
    print-line-extend();
    print-newline();
    do-y(4, &print-line-two, &print-line-two-extend, &print-newline);
    print-line-one();
    print-line-extend();
    print-newline();
}
print-grid();
print-bigger-grid();