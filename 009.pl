
$a = 1;

foreach $a (1 .. 1000) {
	foreach $b ($a + 1 .. 1000) {
		$c = 1000 - $a - $b;

		last if $c < $b;

		print $a*$b*$c . "\n" if (($a + $b + $c) == 1000 and ($a * $a + $b * $b) == ($c * $c));
	}
}
