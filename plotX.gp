if (!exists("inpref")) inpref='foo_'
if (!exists("outfile")) outfile='massfrac.eps'
if (!exists("startxcstr")) startxcstr=''

set terminal postscript eps color enhanced "Helvetica" 10

set output outfile

set logscale y
set format x "10^{%T}" 
set format y "10^{%T}"
set key right outside
set xrange [1e-2:1e10] 
set yrange [1e-4:1.0]
set xlabel "Distance behind shock (cm)" 
set ylabel "Mass Fraction"
set logscale x
set title "Mass fractions vs. distance"." ".startxcstr
set xtics 10
set mxtics 10

plot inpref u 2:8 w l linetype 1 lw 3 lc rgb '#ff0000' title "c12", \
     inpref u 2:9 w l linetype 1 lw 3 lc rgb '#0000ff' title "o16", \
     inpref u 2:10 w l linetype 1 lw 3 lc rgb '#984ea3' title "ne20", \
     inpref u 2:11 w l linetype 1 lw 3 lc rgb '#e7298a' title "ne22", \
     inpref u 2:12 w l linetype 1 lw 3 lc rgb '#66a61e' title "si28", \
     inpref u 2:13 w l linetype 1 lw 3 lc rgb '#e6ab02' title "ca40", \
     inpref u 2:14 w l linetype 1 lw 3 lc rgb '#000000' title "ni56", \
     inpref u 2:15 w l linetype 1 lw 3 lc rgb '#777777' title "fe54"






