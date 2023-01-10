#!/usr/bin/env perl6

# 1
sub first_letter(Str $word where $word.chars > 0) {
    return substr $word, 0, 1;
}
sub last_letter(Str $word where $word.chars > 0) {
    return substr $word, *-1, 1;
}
sub middle_letter(Str $word where $word.chars > 0) {
    return substr $word, 1, *-1;
}
# say first_letter('word');
# say last_letter('word');
# say middle_letter('word');
# say middle_letter('');

# 2
sub is-palindrome(Str $word where $word.chars > 0) {
    say $word.flip;
    if ($word eq $word.flip) {
        return True;
    } else {
        return False;
    }
}
say is-palindrome('word');