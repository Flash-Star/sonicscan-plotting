set terminal postscript eps color enhanced "Helvetica" 20
set size 1.5,1.5
set output 'mindens_dist-vdet.eps'

set format y "%.1t"
set format x "%.4t"
#unset key
set key right inside
#set xrange [0.0:0.5]
#set yrange [0.0:1.1]
set xlabel "Detonation Speed (x10^9 cm/s)"
set ylabel "Distance to Density Minimum (x10^7 cm)"
set title "Location of Density Minima Dependence on Vdet"
#set xtics 10
#set mxtics 10

plot 'mindens_ovr.log' u 2:4 with points ps 2.0 pt 7 title "Overdriven", \
     'mindens_udr.log' u 2:4 with points ps 2.0 pt 5 title "Underdriven"
