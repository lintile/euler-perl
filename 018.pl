use warnings;

my @triangle;

sub matrix_read_file {
    my ($filename) = @_;
    open (F, $filename) || die "Could not open $filename: $!";
    while ($line = <F>) {
        chomp($line);
        next if $line =~ /^\s*$/; # skip blank lines
        push @triangle, $line
    }
    close(F);
}

matrix_read_file("018triangle.txt");

@triangle = reverse (@triangle);

while ($r = shift @triangle) {
	@row = split(' ', $r);

	$last = 0;
	@max = ();

	foreach $digit (@row) {
		$digit = int($digit);
		$localmax = $last;
		$localmax = $digit if $digit > $last;
		push @max, $localmax if $last != 0;
		$last = $digit;
	}

	if ($nr = shift @triangle) {
		@nextrow = split(' ', $nr);

		@updated = ();

		while ($m = shift @max and $n = shift @nextrow) {
			$nextdigit = int($m)+int($n);
			push @updated, "$nextdigit";
		}

		unshift @triangle, "@updated";
	}
	else {
		print $r . "\n";
	}
}
