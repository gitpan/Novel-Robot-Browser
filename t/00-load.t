#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Novel::Robot::Browser' ) || print "Bail out!\n";
}

diag( "Testing Novel::Robot::Browser $Novel::Robot::Browser::VERSION, Perl $], $^X" );
