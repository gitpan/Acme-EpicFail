#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Acme::EpicFail' );
}

diag( "Testing Acme::EpicFail $Acme::EpicFail::VERSION, Perl $], $^X" );
