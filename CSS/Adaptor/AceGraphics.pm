package CSS::Adaptor::AceGraphics;

use strict;
use vars qw($VERSION @ISA);
$VERSION = '0.01';
@ISA = 'CSS::Adaptor';

sub convert {
  my $self = shift;
  my $tag  = shift;

  my %mapped = ('color'            => 'fgcolor',
                'background-color' => 'fillcolor',
               );

  return $tag unless $mapped{$tag};
  return $mapped{$tag};
}

1;
