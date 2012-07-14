use warnings;

sub is_prime {
    my $p = shift;
    if ($p == 2) {
        return 1;
    } elsif ($p <= 1 || $p % 2 == 0) {
        return 0;
    } else {
        my $limit = sqrt($p);
        for (my $i = 3; $i <= $limit; $i += 2) {
            return 0 if $p % $i == 0;
        }
        return 1;
    }
}

my $precision = 20000000000;   # maximum requested number of decimal places of 2 ** MP-1 #
my $long_bits_width = ($precision / log(2)) * log(10);
my $upb_prime = int(($long_bits_width - 1)/2);    # no unsigned #
my $upb_count = 10001;      # find 45 mprimes if int was given enough bits #

my $count = 0;

print $upb_prime;

foreach my $p (2 .. $upb_prime) {
    if (is_prime($p)) {
        print "$p\n";
        $count++;
    }
    last if $count >= $upb_count;
}
