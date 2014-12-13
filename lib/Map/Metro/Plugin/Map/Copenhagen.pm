use 5.20.0;

package Map::Metro::Plugin::Map::Copenhagen {

    use Moose;
    use File::ShareDir 'dist_dir';
    use Path::Tiny;
    with 'Map::Metro::Plugin::Map';

    has '+mapfile' => (
        default => sub { path(dist_dir('Map-Metro-Plugin-Map-Copenhagen'))->child('map-copenhagen.metro')->absolute },
    );
}

1;

__END__

=encoding utf-8

=head1 NAME

Map::Metro::Plugin::Map::Copenhagen - Map::Metro map for Copenhagen

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Copenhagen')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

Per 2014-dec-13 it contains both lines of the Copenhagen metro (L<wikipedia|https://en.wikipedia.org/wiki/Copenhagen_metro>)

=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2014 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
