#!/usr/bin/perl

use strict;
use warnings;

my $name="arabtex";
my $master="$name.maps";
my $output="mappings/$name";
mkdir("mappings");

#languages = arab maghribi farsi urdu pashto sindhi kashmiri kurdish turk malay uighur
# but kurdish and uighur are coded separately

# First the mappings for fonts that have the glyph U+FDF2 with initial alif

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@An // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*n // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#-[BPUTSKOM]+n // ;
	s/^#-[BPUTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Av // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*v // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#-[BPUTSKOM]+v // ;
	s/^#-[BPUTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Af // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*[vf] // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#-[BPUTSKOM]+[vf] // ;
	s/^#-[BPUTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

## maghribi

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-maghribi-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Bn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*n // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#[A-Z]*B[A-Z]*n // ;
	s/^#[A-Z]*B[A-Z]* // ;
	s/^#-[PUTSKOM]+n // ;
	s/^#-[PUTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-maghribi-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Bv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*v // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#[A-Z]*B[A-Z]*v // ;
	s/^#[A-Z]*B[A-Z]* // ;
	s/^#-[PUTSKOM]+v // ;
	s/^#-[PUTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-maghribi-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Bf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*[vf] // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#[A-Z]*B[A-Z]*[vf] // ;
	s/^#[A-Z]*B[A-Z]* // ;
	s/^#-[PUTSKOM]+[vf] // ;
	s/^#-[PUTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

### farsi

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-farsi-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Pn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*P[A-Z]*n // ;
	s/^#[A-Z]*P[A-Z]* // ;
	s/^#-[ABUTSKOM]+n // ;
	s/^#-[ABUTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-farsi-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Pv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*P[A-Z]*v // ;
	s/^#[A-Z]*P[A-Z]* // ;
	s/^#-[ABUTSKOM]+v // ;
	s/^#-[ABUTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-farsi-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Pf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*P[A-Z]*[vf] // ;
	s/^#[A-Z]*P[A-Z]* // ;
	s/^#-[ABUTSKOM]+[vf] // ;
	s/^#-[ABUTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

### urdu

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-urdu-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Un // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*U[A-Z]*n // ;
	s/^#[A-Z]*U[A-Z]* // ;
	s/^#-[ABPTSKOM]+n // ;
	s/^#-[ABPTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-urdu-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Uv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*U[A-Z]*v // ;
	s/^#[A-Z]*U[A-Z]* // ;
	s/^#-[ABPTSKOM]+v // ;
	s/^#-[ABPTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-urdu-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Uf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*U[A-Z]*[vf] // ;
	s/^#[A-Z]*U[A-Z]* // ;
	s/^#-[ABPTSKOM]+[vf] // ;
	s/^#-[ABPTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###sindhi

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-sindhi-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Sn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*S[A-Z]*n // ;
	s/^#[A-Z]*S[A-Z]* // ;
	s/^#-[ABPUTKOM]+n // ;
	s/^#-[ABPUTKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-sindhi-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Sv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*S[A-Z]*v // ;
	s/^#[A-Z]*S[A-Z]* // ;
	s/^#-[ABPUTKOM]+v // ;
	s/^#-[ABPUTKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-sindhi-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Sf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*S[A-Z]*[vf] // ;
	s/^#[A-Z]*S[A-Z]* // ;
	s/^#-[ABPUTKOM]+[vf] // ;
	s/^#-[ABPUTKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###pashto

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-pashto-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Tn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*T[A-Z]*n // ;
	s/^#[A-Z]*T[A-Z]* // ;
	s/^#-[ABPUSKOM]+n // ;
	s/^#-[ABPUSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-pashto-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Tv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*T[A-Z]*v // ;
	s/^#[A-Z]*T[A-Z]* // ;
	s/^#-[ABPUSKOM]+v // ;
	s/^#-[ABPUSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-pashto-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Tf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*T[A-Z]*[vf] // ;
	s/^#[A-Z]*T[A-Z]* // ;
	s/^#-[ABPUSKOM]+[vf] // ;
	s/^#-[ABPUSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


###turk

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-turk-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@On // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*O[A-Z]*n // ;
	s/^#[A-Z]*O[A-Z]* // ;
	s/^#-[ABPUSKTM]+n // ;
	s/^#-[ABPUSKTM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-turk-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Ov // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*O[A-Z]*v // ;
	s/^#[A-Z]*O[A-Z]* // ;
	s/^#-[ABPUSKTM]+v // ;
	s/^#-[ABPUSKTM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-turk-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Of // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*O[A-Z]*[vf] // ;
	s/^#[A-Z]*O[A-Z]* // ;
	s/^#-[ABPUSKTM]+[vf] // ;
	s/^#-[ABPUSKTM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###kashmiri

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-kashmiri-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Kn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*K[A-Z]*n // ;
	s/^#[A-Z]*K[A-Z]* // ;
	s/^#-[ABPUSOTM]+n // ;
	s/^#-[ABPUSOTM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-kashmiri-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Kv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*K[A-Z]*v // ;
	s/^#[A-Z]*K[A-Z]* // ;
	s/^#-[ABPUSOTM]+v // ;
	s/^#-[ABPUSOTM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-kashmiri-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Kf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*K[A-Z]*[vf] // ;
	s/^#[A-Z]*K[A-Z]* // ;
	s/^#-[ABPUSOTM]+[vf] // ;
	s/^#-[ABPUSOTM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###malay

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-malay-novoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Mn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*M[A-Z]*n // ;
	s/^#[A-Z]*M[A-Z]* // ;
	s/^#-[ABPUSKOT]+n // ;
	s/^#-[ABPUSKOT]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-malay-voc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Mv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*M[A-Z]*v // ;
	s/^#[A-Z]*M[A-Z]* // ;
	s/^#-[ABPUSKOT]+v // ;
	s/^#-[ABPUSKOT]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2alif-malay-fullvoc.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	s/^\@Mf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*M[A-Z]*[vf] // ;
	s/^#[A-Z]*M[A-Z]* // ;
	s/^#-[ABPUSKOT]+[vf] // ;
	s/^#-[ABPUSKOT]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

## Now the mappings for fonts that do not include the initial alif in U+FDF2


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@An // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*n // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#-[BPUTSKOM]+n // ;
	s/^#-[BPUTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Av // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*v // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#-[BPUTSKOM]+v // ;
	s/^#-[BPUTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Af // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*[vf] // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#-[BPUTSKOM]+[vf] // ;
	s/^#-[BPUTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

## maghribi

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-maghribi-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Bn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*n // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#[A-Z]*B[A-Z]*n // ;
	s/^#[A-Z]*B[A-Z]* // ;
	s/^#-[PUTSKOM]+n // ;
	s/^#-[PUTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-maghribi-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Bv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*v // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#[A-Z]*B[A-Z]*v // ;
	s/^#[A-Z]*B[A-Z]* // ;
	s/^#-[PUTSKOM]+v // ;
	s/^#-[PUTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-maghribi-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Bf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*A[A-Z]*[vf] // ;
	s/^#[A-Z]*A[A-Z]* // ;
	s/^#[A-Z]*B[A-Z]*[vf] // ;
	s/^#[A-Z]*B[A-Z]* // ;
	s/^#-[PUTSKOM]+[vf] // ;
	s/^#-[PUTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
} ;
close OUTPUT;
close MAPS;

### farsi

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-farsi-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Pn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*P[A-Z]*n // ;
	s/^#[A-Z]*P[A-Z]* // ;
	s/^#-[ABUTSKOM]+n // ;
	s/^#-[ABUTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-farsi-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Pv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*P[A-Z]*v // ;
	s/^#[A-Z]*P[A-Z]* // ;
	s/^#-[ABUTSKOM]+v // ;
	s/^#-[ABUTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-farsi-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Pf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*P[A-Z]*[vf] // ;
	s/^#[A-Z]*P[A-Z]* // ;
	s/^#-[ABUTSKOM]+[vf] // ;
	s/^#-[ABUTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

### urdu

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-urdu-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Un // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*U[A-Z]*n // ;
	s/^#[A-Z]*U[A-Z]* // ;
	s/^#-[ABPTSKOM]+n // ;
	s/^#-[ABPTSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-urdu-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Uv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*U[A-Z]*v // ;
	s/^#[A-Z]*U[A-Z]* // ;
	s/^#-[ABPTSKOM]+v // ;
	s/^#-[ABPTSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-urdu-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Uf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*U[A-Z]*[vf] // ;
	s/^#[A-Z]*U[A-Z]* // ;
	s/^#-[ABPTSKOM]+[vf] // ;
	s/^#-[ABPTSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###sindhi

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-sindhi-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Sn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*S[A-Z]*n // ;
	s/^#[A-Z]*S[A-Z]* // ;
	s/^#-[ABPUTKOM]+n // ;
	s/^#-[ABPUTKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-sindhi-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Sv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*S[A-Z]*v // ;
	s/^#[A-Z]*S[A-Z]* // ;
	s/^#-[ABPUTKOM]+v // ;
	s/^#-[ABPUTKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-sindhi-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Sf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*S[A-Z]*[vf] // ;
	s/^#[A-Z]*S[A-Z]* // ;
	s/^#-[ABPUTKOM]+[vf] // ;
	s/^#-[ABPUTKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###pashto

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-pashto-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Tn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*T[A-Z]*n // ;
	s/^#[A-Z]*T[A-Z]* // ;
	s/^#-[ABPUSKOM]+n // ;
	s/^#-[ABPUSKOM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-pashto-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Tv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*T[A-Z]*v // ;
	s/^#[A-Z]*T[A-Z]* // ;
	s/^#-[ABPUSKOM]+v // ;
	s/^#-[ABPUSKOM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-pashto-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Tf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*T[A-Z]*[vf] // ;
	s/^#[A-Z]*T[A-Z]* // ;
	s/^#-[ABPUSKOM]+[vf] // ;
	s/^#-[ABPUSKOM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


###turk

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-turk-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@On // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*O[A-Z]*n // ;
	s/^#[A-Z]*O[A-Z]* // ;
	s/^#-[ABPUSKTM]+n // ;
	s/^#-[ABPUSKTM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-turk-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Ov // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*O[A-Z]*v // ;
	s/^#[A-Z]*O[A-Z]* // ;
	s/^#-[ABPUSKTM]+v // ;
	s/^#-[ABPUSKTM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-turk-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Of // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*O[A-Z]*[vf] // ;
	s/^#[A-Z]*O[A-Z]* // ;
	s/^#-[ABPUSKTM]+[vf] // ;
	s/^#-[ABPUSKTM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###kashmiri

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-kashmiri-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Kn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*K[A-Z]*n // ;
	s/^#[A-Z]*K[A-Z]* // ;
	s/^#-[ABPUSOTM]+n // ;
	s/^#-[ABPUSOTM]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-kashmiri-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Kv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*K[A-Z]*v // ;
	s/^#[A-Z]*K[A-Z]* // ;
	s/^#-[ABPUSOTM]+v // ;
	s/^#-[ABPUSOTM]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-kashmiri-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Kf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*K[A-Z]*[vf] // ;
	s/^#[A-Z]*K[A-Z]* // ;
	s/^#-[ABPUSOTM]+[vf] // ;
	s/^#-[ABPUSOTM]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

###malay

open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-malay-novoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Mn // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*M[A-Z]*n // ;
	s/^#[A-Z]*M[A-Z]* // ;
	s/^#-[ABPUSKOT]+n // ;
	s/^#-[ABPUSKOT]+ // ;
	s/^#n // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-malay-voc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Mv // ;
	s/^\@v // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*M[A-Z]*v // ;
	s/^#[A-Z]*M[A-Z]* // ;
	s/^#-[ABPUSKOT]+v // ;
	s/^#-[ABPUSKOT]+ // ;
	s/^#v // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;


open MAPS, "<$master" ;
open OUTPUT, ">$output-fdf2noalif-malay-fullvoc.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	s/^\@Mf // ;
	s/^\@.+\n//m ;
	s/^#[A-Z]*M[A-Z]*[vf] // ;
	s/^#[A-Z]*M[A-Z]* // ;
	s/^#-[ABPUSKOT]+[vf] // ;
	s/^#-[ABPUSKOT]+ // ;
	s/^#[vf] // ;
	s/^#.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

# Now Kurdish and Uighur...

open MAPS, "<arabtex-kurdish.maps" ;
open OUTPUT, ">$output-fdf2noalif-kurdish.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<arabtex-uighur.maps" ;
open OUTPUT, ">$output-fdf2noalif-uighur.map";
while (<MAPS>) {
	s/^#0 // ;
	s/^#1.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<arabtex-kurdish.maps" ;
open OUTPUT, ">$output-fdf2alif-kurdish.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

open MAPS, "<arabtex-uighur.maps" ;
open OUTPUT, ">$output-fdf2alif-uighur.map";
while (<MAPS>) {
	s/^#1 // ;
	s/^#0.+\n//m ;
	print OUTPUT
}
close OUTPUT;
close MAPS;

# Let's compile them now
system("cp *.map mappings/");
system("for map in mappings/*.map; do echo \"compiling \$map ...\" && teckit_compile \$map; done");


