use warnings;

my @matrix;

sub matrix_read_file {
    my ($filename) = @_;
    open (F, $filename) || die "Could not open $filename: $!";
    while ($line = <F>) {
        chomp($line);
        next if $line =~ /^\s*$/; # skip blank lines
        #print $line . "\n";
        my (@row) = split (/\s+/, $line);
        #print join(' ', @row) . "\n";
        push @matrix, [ @row ] # insert the row-array into
                               # the outer matrix array
    }
    close(F);
}

matrix_read_file("011matrix.txt");

$max = 0;

foreach $x (0 .. 19) {
	foreach $y (0 .. 19) {
		if ($x < 16) {
			#check horizontal
			$product =	int($matrix[$y][$x]) *
						int($matrix[$y][$x+1]) *
						int($matrix[$y][$x+2]) *
						int($matrix[$y][$x+3]);
			$max = $product if $product > $max;
		}
		if ($y < 16) {
			#check vertical
			$product =	int($matrix[$y][$x]) *
						int($matrix[$y+1][$x]) *
						int($matrix[$y+2][$x]) *
						int($matrix[$y+3][$x]);
			$max = $product if $product > $max;
		}
		if ($x < 16 and $y < 16) {
			#check right diagonal
			$product =	int($matrix[$y][$x]) *
						int($matrix[$y+1][$x+1]) *
						int($matrix[$y+2][$x+2]) *
						int($matrix[$y+3][$x+3]);
			$max = $product if $product > $max;
		}
		if ($x >= 3 and $y < 16) {
			#check left diagonal
			$product =	int($matrix[$y][$x]) *
						int($matrix[$y+1][$x-1]) *
						int($matrix[$y+2][$x-2]) *
						int($matrix[$y+3][$x-3]);
			$max = $product if $product > $max;
		}
	}
}

print $max . "\n";

#print @matrix;
