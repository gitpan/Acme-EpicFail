package Acme::EpicFail;

use warnings;
use strict;
use Data::Dumper;

BEGIN {
	no strict "refs";
	
	my $name = '::die';

	*{$name} = sub {
		my $quantifier = _rand_quantifier();
		die "EPIC$quantifier FAIL! ", @_;
	};
}

sub _rand_quantifier {
	if (rand > 0.5) {
		return ""
	} else {
		return " MEGA"
	}
}

=head1 NAME

Acme::EpicFail - die in EPIC FAIL style

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

    use Acme::EpicFail;

		die;

=head1 FUNCTIONS

=head2 die

The EPIC FAIL die!

=head1 AUTHOR

Alberto Simoes, C<< <ambs at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-acme-epicfail at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Acme-EpicFail>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Acme::EpicFail

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Acme-EpicFail>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Acme-EpicFail>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Acme-EpicFail>

=item * Search CPAN

L<http://search.cpan.org/dist/Acme-EpicFail>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2008 Alberto Simoes, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

"FAIL!"; # End of Acme::EpicFail
