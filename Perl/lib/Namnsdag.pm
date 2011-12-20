package Namnsdag;

use strict;
use warnings;

use DBI;
use DynaLoader();

use vars qw($VERSION @ISA);

BEGIN {
    $VERSION = '1.0';
    @ISA     = 'DynaLoader';
}

__PACKAGE__->bootstrap($VERSION);

