#!/usr/bin/perl
my $title = shift;

my $dn = lc($title);
$dn =~ s@ @-@g;
mkdir($dn);
my $fn = "$dn/index.md";
open(OF,">$fn");
open(F,"template/index.md");
while(<F>) {
    s@TITLE@$title@e;
    print OF $_;
}
close(F);
close(OF);
print "Now:\ngit add $fn\n";
