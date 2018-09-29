#! env/bin perl6

my @array = prompt("Enter numbers to sort separated by commas:").trim().split(',');

for ^@array {
    for 0 .. (@array.elems - 2) -> $i {
        if @array[$i] > @array[($i+1)] {
            @array[$i, ($i+1)] = @array[($i+1), $i];
        }
    }
}

put @array;
