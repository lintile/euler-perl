$sum = 1;
$sidelen = 0;
$value = 1;

foreach (2 .. 1001) {
	if ($_ % 2 == 1) {
		$sidelen += 2;

		foreach (1 .. 4) {
			$value += $sidelen;
			$sum += $value;
		}
	}
}

print "$sum\n";
