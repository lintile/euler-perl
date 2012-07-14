use warnings;
use Switch;
use integer;

$letters = 0;

foreach (1 .. 1000) {
	$i = "";

	switch ($_ / 100){
	  case(1) { $i .= "OneHundred"; }
	  case(2) { $i .= "TwoHundred"; }
	  case(3) { $i .= "ThreeHundred"; }
	  case(4) { $i .= "FourHundred"; }
	  case(5) { $i .= "FiveHundred"; }
	  case(6) { $i .= "SixHundred"; }
	  case(7) { $i .= "SevenHundred"; }
	  case(8) { $i .= "EightHundred"; }
	  case(9) { $i .= "NineHundred"; }
	  case(10){ $i .= "OneThousand"; }
	}

	$i .= "And" if ($_ > 100 && $_ % 100 != 0);

	switch (($_ / 10) % 10){
	  case(2) { $i .= "Twenty"; }
	  case(3) { $i .= "Thirty"; }
	  case(4) { $i .= "Forty"; }
	  case(5) { $i .= "Fifty"; }
	  case(6) { $i .= "Sixty"; }
	  case(7) { $i .= "Seventy"; }
	  case(8) { $i .= "Eighty"; }
	  case(9) { $i .= "Ninety"; }
	}

	if ($_ % 100 >= 10 and $_ % 100 <= 19) {
		switch ($_ % 100){
		  case(10) { $i .= "Ten"; }
		  case(11) { $i .= "Eleven"; }
		  case(12) { $i .= "Twelve"; }
		  case(13) { $i .= "Thirteen"; }
		  case(14) { $i .= "Fourteen"; }
		  case(15) { $i .= "Fifteen"; }
		  case(16) { $i .= "Sixteen"; }
		  case(17) { $i .= "Seventeen"; }
		  case(18) { $i .= "Eighteen"; }
		  case(19) { $i .= "Nineteen"; }
		}
	}
	else {
		switch ($_ % 10){
		  case(1) { $i .= "One"; }
		  case(2) { $i .= "Two"; }
		  case(3) { $i .= "Three"; }
		  case(4) { $i .= "Four"; }
		  case(5) { $i .= "Five"; }
		  case(6) { $i .= "Six"; }
		  case(7) { $i .= "Seven"; }
		  case(8) { $i .= "Eight"; }
		  case(9) { $i .= "Nine"; }
		  #case(0) { $i .= "Zero"; }
		}
	}

	$letters += length ($i);
	#print length($i) . ": $i\n";
}

print $letters . "\n";
