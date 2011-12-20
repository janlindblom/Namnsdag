#!/usr/bin/env perl
use Module::Build;

my $build = Module::Build->new(
	module_name	=> 'Namnsdag',
	license		=> 'BSD',
	dist_author => 'Jan Lindblom <lindblom.jan@gmail.com>',
	requires	=> { 'DBI'			=> '1.616.0',
					 'DBD::SQLite'	=> '1.310.0' },
	);

$build->dispatch('build');
$build->dispatch('test', verbose => 1);
$build->dispatch('install');