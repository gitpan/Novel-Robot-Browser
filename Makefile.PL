use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Novel::Robot::Browser',
    AUTHOR           => q{Abby Pan <abbypan@gmail.com>},
    VERSION_FROM     => 'lib/Novel/Robot/Browser.pm',
    ABSTRACT_FROM    => 'lib/Novel/Robot/Browser.pm',
    LICENSE          => 'Artistic_2_0',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Encode::Detect::CJK' => 2.0.2,
        'HTTP::Tiny' => 0.024,
        'IO::Uncompress::Gunzip' => 2.059,
        'Moo' => 1.000007,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Novel-Robot-Browser-*' },
);
