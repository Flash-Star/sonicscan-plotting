if (!exists("inpref")) inpref='foo_'
if (!exists("outfile")) outfile='pres.eps'
if (!exists("startxcstr")) startxcstr=''

set terminal postscript eps color enhanced "Helvetica" 20
set size 1.5,1.5
set output outfile

set format x "10^{%T}" 
set format y "%1.2f"
set key right inside
set xrange [1e-2:1e10] 
set yrange [0.5:1.2]
set xlabel "Distance behind shock (cm)" 
set ylabel "Pressure (x10^{25} erg/cm^3)"
set logscale x
set title "Pressure vs. distance"." ".startxcstr
set xtics 10
set mxtics 10
plot inpref."0001_z1.dat" u 3:($7/1.0e25) w l linetype 1 lw 3 lc rgb "black" title "vdet", \
 inpref."ovr_"."0001_z1.dat" u 3:($7/1.0e25) w l linetype 1 lw 3 lc rgb "blue" title "vdet+dv", \
 inpref."udr_"."0001_z1.dat" u 3:($7/1.0e25) w l linetype 1 lw 3 lc rgb "red" title "vdet-dv"
