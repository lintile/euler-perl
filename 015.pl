@i = reverse (0 .. 20);
@j = reverse (0 .. 20);

%hash = ();

$hash{"20, 20"} = 1;

foreach $x (@i) {
	foreach $y (@j) {
		next if exists $hash{"$x, $y"};

		$sum = 0;

		$nextx = $x + 1;
		$nexty = $y + 1;

		$sum += $hash{"$nextx, $y"} if $x < 20;
		$sum += $hash{"$x, $nexty"} if $y < 20;

		$hash{"$x, $y"} = $sum;
		#print "$x, $y\n";
	}
}

print $hash{"0, 0"} . "\n";
