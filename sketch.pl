#!/usr/bin/env perl

use constant DEBUG => 1;
use if DEBUG, diagnostics;
use Getopt::Long qw(GetOptions);
use Pod::Usage   qw(pod2usage);
use feature 'say';

my $VERSION = "v0.0.1";

my $man     = 0;
my $help    = 0;
my $version = 0;
my $debug   = 0;
GetOptions(
    'h|help'    => \$help,
    'v|version' => \$version,
    'man'       => \$man,
) or pod2usage(2);
pod2usage(1)               if $help;
pod2usage( -verbose => 2 ) if $man;

if ($version) {
    say "$VERSION";
    exit 0;
}

say "Running...";

__END__

=head1 NAME

sketch - Create throwaway project using a language template

=head1 SYNOPSIS

    sketch [OPTION]... LANGUAGE

=head1 OPTIONS

=over 4

=item B<-h, --help>

Show usage

=item B<-v, --version>

Show SemVer

=item B<--man>

Open documentation with man pager

=back

=head1 DESCRIPTION

B<This program> ... .

=head1 AUTHOR

Breno Pacheco <github.com/brenopacheco>

=cut
