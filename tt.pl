#!/usr/bin/perl
use strict;
use warnings;
use Template;
my $tt = Template->new;
my %data = (
	tmpPath => '/tmp/a',
	bounds => '10,45,2',
	pMut => '0.1',
);
my $a;
do {local $/ = undef;  $a = <DATA>};

print $tt->process(\$a, \%data)
    || die $tt->error;

__DATA__
path = [% tmpPath %]
bounds = [% bounds %]
pmut = [% pMut %]
