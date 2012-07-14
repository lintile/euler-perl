use warnings;

my @names;

sub matrix_read_file {
    my ($filename) = @_;
    open (F, $filename) || die "Could not open $filename: $!";
    while ($line = <F>) {
        chomp($line);
        next if $line =~ /^\s*$/; # skip blank lines
        push @names, $line
    }
    close(F);
}

matrix_read_file("022names.txt");

%alpha_nums = ();

$number = 1;
foreach('A'..'Z'){
        $alpha_nums{$_} = $number;
        $number++;
}

$number = 1;
$total = 0;

foreach (sort @names) {
	@string = split("", $_);
	$wordsum = 0;

	foreach $letter (@string) {
		$value = $alpha_nums{$letter};
		$wordsum += $value;
	}

	$wordsum *= $number;
	$total += $wordsum;

	$number++;
}

print "$total\n";
