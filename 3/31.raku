sub right-justify($input-string) {
    say ' ' x (70 - $input-string.chars), $input-string;
}
right-justify('Larry Wall');
