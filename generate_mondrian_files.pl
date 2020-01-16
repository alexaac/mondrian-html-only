#!/usr/bin/perl
use strict;
use warnings;

# Generate mondrian.html, mondrian.css, mondrian_html_only.html files

my ( $width, $height ) = ( '1229px', '770px' );

my @columns_widths = ( 18, 93, 9, 39, 9, 92, 9, 65, 9, 65, 9, 92, 9, 92, 9, 92, 9, 92, 9, 65, 9, 65, 9, 92, 9, 39, 9, 92, 19 );
my @rows_widths = ( 17, 65, 9, 66, 9, 65, 9, 66, 9, 65, 9, 65, 9, 65, 9, 66, 9, 65, 9, 66, 17 );

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

&generate_grid_files(\@columns_widths, \@rows_widths, $divs);
&generate_html_only_files(\@columns_widths, \@rows_widths, $divs);

sub generate_grid_files() {

  my $grid_template_columns = join "px ", @columns_widths;
  $grid_template_columns .= "px";
  my $grid_template_rows = join "px ", @rows_widths;
  $grid_template_rows .= "px";

  my $filename = 'mondrian.html';
  open(my $fh, '>', $filename) or die "Can't open '$filename' $!";

  my $html_content = <<'END_MESSAGE';

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Mondrian Painting Using Grid</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Mondrian Painting Using Grid. After https://github.com/jen4web/fem-layout">
  <link href="mondrian.css" rel="stylesheet">
</head>

<html>
  <body>
    <div class="wrapper">
END_MESSAGE
  print $fh $html_content;

  foreach my $div (@$divs) {
    print $fh "     <div class=\"$div->{'class'}\"><\/div>\n";
  }

  $html_content = <<'END_MESSAGE';
    </div>
  </body>
</html>
END_MESSAGE
  print $fh $html_content;
  close $fh;

  $filename = 'mondrian.css';
  open($fh, '>', $filename) or die "Can't open '$filename' $!";

  my $css_content = <<'END_MESSAGE';

.wrapper {
END_MESSAGE
  print $fh $css_content;

  print $fh "  width: $width;\n  height: $height;\n";

  $css_content = <<'END_MESSAGE';
  font-size: 2em;
  text-shadow: -1px 0 white, 0 1px white, 1px 0 white, 0 -1px white;
  font-family: Arial, helvetica, sans-serif;
  display: grid;
END_MESSAGE
  print $fh $css_content;

  print $fh "  grid-template-rows: $grid_template_rows;
    grid-template-columns: $grid_template_columns;
    background-color: $background_color;
  ";

  $css_content = <<'END_MESSAGE';
  grid-gap: 0px; 
/*  background: url(mondrian.png) no-repeat; */
}

div {
  border: 1px solid black;
/*	background-color: white; */
}

.wrapper > div {
/*  box-shadow: 0.5px 0.5px 5px #111; */
}

END_MESSAGE
  print $fh $css_content;

  foreach my $div (@$divs) {
    my $grid_column_up_one = join "/", map { $_ + 1 } split("/", $div->{'grid-column'});
    my $grid_row_up_one = join "/", map { $_ + 1 } split("/", $div->{'grid-row'});

    print $fh ".$div->{'class'} {\n  grid-column: $grid_column_up_one; \n  grid-row: $grid_row_up_one; \n  background-color: $div->{'background-color'}; \n} \n";
  }

  close $fh;
};

sub generate_html_only_files() {
  
  my $filename = 'mondrian_html_only.html';
  open(my $fh, '>', $filename) or die "Can't open '$filename' $!";

  my $html_content = <<'END_MESSAGE';

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Mondrian Painting Using Only HTML5</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Mondrian Painting Using Only HTML5 page by Alexa C.">
</head>

<html>
  <body text ="#33">
END_MESSAGE
  print $fh $html_content;

  print $fh "   <table width='$width' height='$height' bgcolor='#f50f0f' cellspacing='0px'>
  ";

  my $grid = {};

  foreach my $div (@$divs) {
    my ( $grid_column_start, $grid_column_end ) = split '/', $div->{'grid-column'};
    my ( $grid_row_start, $grid_row_end ) = split '/', $div->{'grid-row'};

    for (my $i_r = $grid_row_start; $i_r < $grid_row_end; $i_r++) {
      for (my $j_c = $grid_column_start; $j_c < $grid_column_end; $j_c++) {
        $grid->{$i_r + 1}->{$j_c + 1}->{'class'} = $div->{'class'};
        $grid->{$i_r + 1}->{$j_c + 1}->{'background_color'} = $div->{'background-color'};
      };
    };
  };

  for (my $i = 0; $i <= $#rows_widths; $i++) {
    print $fh "     <tr height='$rows_widths[$i]px'><!-- row ${\($i+1)} -->\n";
    print $fh "       <td width='$columns_widths[0]px' bgcolor='$background_color' align='center'></td><!-- col 1 -->\n";
    for (my $j = 1; $j < $#columns_widths; $j++) {
      my ( $grid_cell_label, $grid_cell_bkg, $grid_cell_width ) = ('', $background_color, '9px');
      if ( $grid->{$i+1}->{$j+1} ) {
        $grid_cell_label = "${\($i+1)}/${\($j+1)}/$grid->{${\($i+1)}}->{${\($j+1)}}->{'class'}";
        $grid_cell_bkg = "$grid->{${\($i+1)}}->{${\($j+1)}}->{'background_color'}";
        $grid_cell_width = "$columns_widths[$j]px";
      };
      print $fh "       <td width='$grid_cell_width' bgcolor='$grid_cell_bkg' align='center'></td><!-- col ${\($j+1)} -->\n";
      # print $fh "       <td width='$grid_cell_width' bgcolor='$grid_cell_bkg' align='center'>$grid_cell_label</td><!-- col ${\($j+1)} -->\n";
    };
    print $fh "       <td width='$columns_widths[$#columns_widths]px' bgcolor='$background_color' align='center'></td><!-- col ${\($#columns_widths+1)} -->\n";
  }
  print $fh "      </tr>
      </table>
    </body>
  </html>
  ";

  close $fh;
}
