use strict;
use warnings;

use FindBin;

# What happens when you use bgcolor '11/8/c25' or '9/10/gap'
# Explanation: http://scrappy-do.blogspot.com/2004/08/little-rant-about-microsoft-internet.html


my ( $width, $height ) = ( '1229px', '770px' );
my ( $padding_top, $padding_right, $padding_bottom, $padding_left ) = ( '17px', '19px', '17px', '18px' );

my $filename = "$FindBin::Bin/../public/mondrian_crazy_colors.html";

my @columns_widths = ( 93, 9, 39, 9, 92, 9, 65, 9, 65, 9, 92, 9, 92, 9, 92, 9, 92, 9, 65, 9, 65, 9, 92, 9, 39, 9, 92 );
my $grid_template_columns = join "px ", @columns_widths;
$grid_template_columns .= "px";

my @rows_widths = ( 65, 9, 66, 9, 65, 9, 66, 9, 65, 9, 65, 9, 65, 9, 66, 9, 65, 9, 66 );
my $grid_template_rows = join "px ", @rows_widths;
$grid_template_rows .= "px";

my ( $color_white, $color_yellow, $color_blue, $color_black, $color_red, $background_color ) = ( '#f3f3f3', '#fae317', '#0d7fbf', '#000000', '#f50f0f', '#343434' );

my $divs = [
  { 'class' => 'c1',
    'grid-column' => '1/4', 'grid-row' => '1/2', 'background-color' => $color_white
  },
  { 'class' => 'c2',
    'grid-column' => '5/10', 'grid-row' => '1/2', 'background-color' => $color_white
  },
  { 'class' => 'c3',
    'grid-column' => '11/14', 'grid-row' => '1/2', 'background-color' => $color_yellow
  },
  { 'class' => 'c4',
    'grid-column' => '15/18', 'grid-row' => '1/4', 'background-color' => $color_blue
  },
  { 'class' => 'c5',
    'grid-column' => '19/20', 'grid-row' => '1/2', 'background-color' => $color_yellow
  },
  { 'class' => 'c6',
    'grid-column' => '21/22', 'grid-row' => '1/2', 'background-color' => $color_black
  },
  { 'class' => 'c7',
    'grid-column' => '23/28', 'grid-row' => '1/2', 'background-color' => $color_white
  },
  { 'class' => 'c8',
    'grid-column' => '1/2', 'grid-row' => '3/6', 'background-color' => $color_white
  },
  { 'class' => 'c9',
    'grid-column' => '3/10', 'grid-row' => '3/10', 'background-color' => $color_red
  },
  { 'class' => 'c10',
    'grid-column' => '11/14', 'grid-row' => '3/6', 'background-color' => $color_yellow
  },
  { 'class' => 'c11',
    'grid-column' => '15/18', 'grid-row' => '5/8', 'background-color' => $color_red
  },
  { 'class' => 'c12',
    'grid-column' => '19/22', 'grid-row' => '3/4', 'background-color' => $color_yellow
  },
  { 'class' => 'c13',
    'grid-column' => '23/26', 'grid-row' => '3/6', 'background-color' => $color_white
  },
  { 'class' => 'c14',
    'grid-column' => '27/28', 'grid-row' => '3/8', 'background-color' => $color_yellow
  },
  { 'class' => 'c15',
    'grid-column' => '19/22', 'grid-row' => '5/6', 'background-color' => $color_black
  },
  { 'class' => 'c16',
    'grid-column' => '1/2', 'grid-row' => '7/12', 'background-color' => $color_white
  },
  { 'class' => 'c17',
    'grid-column' => '11/12', 'grid-row' => '7/10', 'background-color' => $color_white
  },
  { 'class' => 'c18',
    'grid-column' => '13/14', 'grid-row' => '7/10', 'background-color' => $color_white
  },
  { 'class' => 'c19',
    'grid-column' => '19/22', 'grid-row' => '7/8', 'background-color' => $color_white
  },
  { 'class' => 'c20',
    'grid-column' => '23/26', 'grid-row' => '7/10', 'background-color' => $color_black
  },
  { 'class' => 'c21',
    'grid-column' => '15/18', 'grid-row' => '9/10', 'background-color' => $color_white
  },
  { 'class' => 'c22',
    'grid-column' => '19/22', 'grid-row' => '9/10', 'background-color' => $color_white
  },
  { 'class' => 'c23',
    'grid-column' => '27/28', 'grid-row' => '9/14', 'background-color' => $color_white
  },
  { 'class' => 'c24',
    'grid-column' => '3/6', 'grid-row' => '11/14', 'background-color' => $color_black
  },
  { 'class' => 'c25',
    'grid-column' => '7/10', 'grid-row' => '11/12', 'background-color' => $color_white
  },
  { 'class' => 'c26',
    'grid-column' => '11/14', 'grid-row' => '11/12', 'background-color' => $color_white
  },
  { 'class' => 'c27',
    'grid-column' => '15/16', 'grid-row' => '11/14', 'background-color' => $color_white
  },
  { 'class' => 'c28',
    'grid-column' => '17/18', 'grid-row' => '11/14', 'background-color' => $color_white
  },
  { 'class' => 'c29',
    'grid-column' => '19/26', 'grid-row' => '11/18', 'background-color' => $color_blue
  },
  { 'class' => 'c30',
    'grid-column' => '1/2', 'grid-row' => '13/18', 'background-color' => $color_yellow
  },
  { 'class' => 'c31',
    'grid-column' => '3/6', 'grid-row' => '15/18', 'background-color' => $color_white
  },
  { 'class' => 'c32',
    'grid-column' => '7/10', 'grid-row' => '13/14', 'background-color' => $color_white
  },
  { 'class' => 'c33',
    'grid-column' => '7/10', 'grid-row' => '15/16', 'background-color' => $color_black
  },
  { 'class' => 'c34',
    'grid-column' => '11/14', 'grid-row' => '13/16', 'background-color' => $color_blue
  },
  { 'class' => 'c35',
    'grid-column' => '15/18', 'grid-row' => '15/18', 'background-color' => $color_yellow
  },
  { 'class' => 'c36',
    'grid-column' => '27/28', 'grid-row' => '15/18', 'background-color' => $color_white
  },
  { 'class' => 'c37',
    'grid-column' => '1/6', 'grid-row' => '19/20', 'background-color' => $color_white
  },
  { 'class' => 'c38',
    'grid-column' => '7/8', 'grid-row' => '17/20', 'background-color' => $color_yellow
  },
  { 'class' => 'c39',
    'grid-column' => '9/10', 'grid-row' => '17/20', 'background-color' => $color_white
  },
  { 'class' => 'c40',
    'grid-column' => '11/14', 'grid-row' => '17/20', 'background-color' => $color_red
  },
  { 'class' => 'c41',
    'grid-column' => '15/16', 'grid-row' => '19/20', 'background-color' => $color_white
  },
  { 'class' => 'c42',
    'grid-column' => '17/18', 'grid-row' => '19/20', 'background-color' => $color_black
  },
  { 'class' => 'c43',
    'grid-column' => '19/24', 'grid-row' => '19/20', 'background-color' => $color_white
  },
  { 'class' => 'c44',
    'grid-column' => '25/28', 'grid-row' => '19/20', 'background-color' => $color_white
  }
];


open(my $fh, '>', $filename) or die "Can't open '$filename' $!";

my $html_content = <<'END_MESSAGE';

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Crazy Colors</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Crazy Colors - find the easter egg; Alexa C.">
</head>

<html>
  <body text ="#33">
END_MESSAGE
print $fh $html_content;

print $fh "   <table width='$width' height='$height' bgcolor='#f50f0f' cellspacing='1px'>
     <tr height='$padding_top'><td colspan='$#columns_widths' bgcolor='$background_color'></td></tr>
      <tr width='$height - $padding_top - $padding_bottom'>
       <td width='$padding_left' bgcolor='$background_color'></td>
        <td width='$width - $padding_left - $padding_right'>
         <table cellspacing='1px'>
";

my $grid = {};

foreach my $div (@$divs) {
  my ( $grid_column_start, $grid_column_end ) = split '/', $div->{'grid-column'};
  my ( $grid_row_start, $grid_row_end ) = split '/', $div->{'grid-row'};

  for (my $i_r = $grid_row_start; $i_r < $grid_row_end; $i_r++) {
    for (my $j_c = $grid_column_start; $j_c < $grid_column_end; $j_c++) {
      $grid->{$i_r}->{$j_c}->{'class'} = $div->{'class'};
      $grid->{$i_r}->{$j_c}->{'background_color'} = $div->{'background-color'};
    };
  };
};

for (my $i = 0; $i <= $#rows_widths; $i++) {
  print $fh "           <tr height='$rows_widths[$i]px'><!-- row ${\($i+1)} -->\n";
  for (my $j = 0; $j <= $#columns_widths; $j++) {
    $grid->{$i+1}->{$j+1}->{'class'} = $grid->{$i+1}->{$j+1}->{'class'} || 'gap';
    $grid->{$i+1}->{$j+1}->{'background_color'} = $grid->{$i+1}->{$j+1}->{'background_color'} || 'black';
    my $grid_cell_label = "${\($i+1)}/${\($j+1)}/$grid->{${\($i+1)}}->{${\($j+1)}}->{'class'}";
    my $grid_cell_bkg = "${\($i+1)}/${\($j+1)}/$grid->{${\($i+1)}}->{${\($j+1)}}->{'class'}";
    print $fh "            <td width='$columns_widths[$j]px' bgcolor='" . $grid_cell_bkg . "' align='center'>$grid_cell_label</td><!-- col ${\($j+1)} -->\n";
  };
  print $fh "           </tr>\n";
}

print $fh "         </table>
        </td>
        <td width='$padding_right' bgcolor='$background_color'></td>
      </tr>
      <tr height='$padding_bottom'><td colspan='$#columns_widths' bgcolor='$background_color'></td></tr>
    </table>
  </body>
</html>
";

close $fh;