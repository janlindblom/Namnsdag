#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Namnsdag' );
}

diag( "Testing Namnsdag $Namnsdag::VERSION, Perl $], $^X" );
