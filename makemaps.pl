#!/usr/bin/perl

use strict;
use warnings;

my $name="arabtex";
my $master="$name.maps";
my $output="mappings/$name";
mkdir("mappings");

#languages = arab maghribi farsi urdu pashto sindhi kashmiri kurdish turk malay uighur
# but kurdish and uighur are coded separately

open MAPS, "<$master" ;
open OUTPUT, ">$output-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-maghribi-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-maghribi-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-maghribi-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-farsi-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-farsi-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-farsi-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-urdu-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-urdu-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-urdu-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-sindhi-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-sindhi-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-sindhi-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-pashto-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-pashto-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-pashto-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-turk-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-turk-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-turk-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-kashmiri-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-kashmiri-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-kashmiri-fullvoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-malay-novoc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-malay-voc.map";
while (<MAPS>) {
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
open OUTPUT, ">$output-malay-fullvoc.map";
while (<MAPS>) {
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

# Let's compile them now
system("cp *.map mappings/");
system("for map in mappings/*.map; do echo \"compiling \$map ...\" && teckit_compile \$map; done");


