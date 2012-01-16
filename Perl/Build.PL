use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Namnsdag',
    license             => 'bsd',
    dist_author         => 'Jan Lindblom <lindblom.jan@gmail.com>',
    dist_version_from   => 'lib/Namnsdag.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Namnsdag-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
