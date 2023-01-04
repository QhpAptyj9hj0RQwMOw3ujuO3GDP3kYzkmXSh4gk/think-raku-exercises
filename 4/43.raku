# 1
sub is-triangle($side-one, $side-two, $side-three) {
    if $side-one + $side-two < $side-three or $side-two + $side-three < $side-one or $side-two + $side-three < $side-one {
        say 'No';
    } else {
        say 'Yes';
    }
}

# 2
sub prompt-triangle() {
    say 'Enter the lengths of 3 edges to check whether they can form a triangle.';
    my $side-one = prompt('First side:');
    my $side-two = prompt('Second side:');
    my $side-three = prompt('Third Side:');
    is-triangle($side-one, $side-two, $side-three);
}
prompt-triangle();