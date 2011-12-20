use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Namnsdag',
    AUTHOR              => 'Jan Lindblom <lindblom.jan@gmail.com>',
    VERSION_FROM        => 'lib/Namnsdag.pm',
    ABSTRACT_FROM       => 'lib/Namnsdag.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'BSD')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Namnsdag-*' },
);
