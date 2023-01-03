# 1
sub seconds-to-time($n-of-seconds is copy) {
    my $days = $n-of-seconds div (60 * 60 * 24);
    $n-of-seconds -= $days * (60 * 60 * 24);
    my $hours = $n-of-seconds div (60 * 60);
    $n-of-seconds -= $hours * (60 * 60);
    my $minutes = $n-of-seconds div 60;
    $n-of-seconds -= $minutes * 60;
    my $seconds = $n-of-seconds;
    return $days, $hours, $minutes, $seconds;
}

# 2
say seconds-to-time(240000);

# 3
say 'Please give a number of seconds to convert...';
my $input = get;
$input = $input.Int;
say seconds-to-time($input);