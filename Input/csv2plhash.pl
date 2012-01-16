use strict;
use warnings;
use utf8;
use Text::CSV;

binmode(STDOUT, ":utf8");

my $namnsdagar = 'Namnsdagar.csv';
my $exception_reasons = 'Undantag.csv';

my %ndays = ();

my $csv = Text::CSV->new ({ binary => 1 }) or
    die "Cannot use CSV: ".Text::CSV->error_diag();

open my $fh, "<:encoding(utf8)", $namnsdagar or die "$namnsdagar: $!";
my $row = $csv->getline($fh);
print "sub inithash {\n";
print "\tmy \%namehash = ();\n";
my @rows = ();
while (my $row = $csv->getline($fh)) {
    my ($month,$day,$name) = ($row->[0],$row->[1],$row->[2]);
    if ($ndays{$month}{$day}) {
        $ndays{$month}{$day} = [$ndays{$month}{$day},$name];
        push @rows, "\t\$namehash{$month}{$day} = [${$ndays{$month}{$day}}[0],$name];\n";
    } else {
        $ndays{$month}{$day} = $name;
        push @rows, "\t\$namehash{$month}{$day} = $name;\n";
    }
}
foreach my $month (sort { $a <=> $b } keys %ndays) {
    print "$month: $ndays{$month}\n";
    foreach my $day (sort { $a <=> $b } keys %{$ndays{$month}}) {
        if (@{$ndays{$month}{$day}}) {
            print "tjo!\n";
        }
        print "$month-$day: $ndays{$month}{$day}\n";
    }
}
#print $_ foreach @rows;
print "\treturn %namehash;\n";
print "}\n";
$csv->eof or $csv->error_diag();
close $fh;
