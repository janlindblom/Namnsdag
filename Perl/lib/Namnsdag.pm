package Namnsdag;

use warnings;
use strict;

require Exporter;
@ISA = qw(Exporter);
@EXPORT = qw/namnsdag/;

use Namnsdag::Storage qw/names/;

=head1 NAME

Namnsdag - The Perl Namnsdag library.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Namnsdag retrieves the namnsdag of a given day.

    use Namnsdag;

    my $foo = Namnsdag->new();

=head1 EXPORT

=head1 FUNCTIONS

=head2 namnsdag

=cut

sub namnsdag {
}

=head1 AUTHOR

Jan Lindblom, C<< <lindblom.jan at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to L<https://github.com/janlindblom/Namnsdag/issues>.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Namnsdag


You can also look for information at:

=over 1

=item * GitHub Issues:

L<https://github.com/janlindblom/Namnsdag/issues>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2011 Jan Lindblom, all rights reserved.

This program is released under the following license: bsd


=cut

1; # End of Namnsdag
