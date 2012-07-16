use warnings;

$total = 0;

foreach $a ('0' .. '9') {
	foreach $b ('0' .. '9') {
		next if ($a == $b);
		foreach $c ('0' .. '9') {
			next if ($a == $c or $b == $c);
			foreach $d ('0' .. '9') {
				next if ($a == $d or $b == $d or $c == $d);
				foreach $e ('0' .. '9') {
					next if ($a == $e or $b == $e or $c == $e or $d == $e);
					foreach $f ('0' .. '9') {
						next if ($a == $f or $b == $f or $c == $f or $d == $f or $e == $f);
						foreach $g ('0' .. '9') {
							next if ($a == $g or $b == $g or $c == $g or $d == $g or $e == $g or $f == $g);
							foreach $h ('0' .. '9') {
								next if ($a == $h or $b == $h or $c == $h or $d == $h or $e == $h or $f == $h or $g == $h);
								foreach $i ('0' .. '9') {
									next if ($a == $i or $b == $i or $c == $i or $d == $i or $e == $i or $f == $i or $g == $i or $h == $i);
									foreach $j ('0' .. '9') {
										next if ($a == $j or $b == $j or $c == $j or $d == $j or $e == $j or $f == $j or $g == $j or $h == $j or $i == $j);
										$total++;
										# print "$total: $a$b$c$d$e$f$g$h$i$j\n";
										if ($total == 1000000) {
											print "$a$b$c$d$e$f$g$h$i$j\n";
											exit 0;
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

