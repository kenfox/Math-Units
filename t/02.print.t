
use warnings;
use strict;
use Test::More;

if ($] < 5.008) {
    plan skip_all => 'Test will not run on perl before version 5.8';
    # Redirecting STDOUT to a scalar variable was introduced in 5.8.
}
else {
    plan tests => 1;
}

use Math::Units qw(print_conversion);

my $expected;
my $fh;
my $out;
my $old_stdout;

open $fh, '>', \$out;
$old_stdout = select $fh;
print_conversion(1, 'm', 'cm');
select $old_stdout;
close $fh;

$expected = '1 m == 100 cm
';

is($out, $expected, 'stdout');

