
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "\350\207\252\345\212\250\345\214\226\350\216\267\345\217\226\347\275\221\351\241\265\345\206\205\345\256\271\357\274\214\345\271\266\350\247\243\347\240\201\344\270\272unicode",
  "AUTHOR" => "abbypan <abbypan\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Novel-Robot-Browser",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Novel::Robot::Browser",
  "PREREQ_PM" => {
    "Encode::Detect::CJK" => "v2.0.2",
    "HTTP::Tiny" => "0.024",
    "IO::Uncompress::Gunzip" => "2.059",
    "Moo" => "1.000007"
  },
  "VERSION" => "0.06",
  "test" => {
    "TESTS" => ""
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



