set terminal postscript eps color enhanced "Helvetica" 20
set size 1.5,1.5
set output 'vdet.eps'

set format x "%1.2f"
set format y "%.3tx10^{%T}"
unset key
#set key right inside
set xrange [0.0:0.5]
#set yrange [0.0:1.1]
set xlabel "Carbon-12 Mass Fraction"
set ylabel "Detonation Speed (cm/s)"
set title "Minimally Overdriven Detonation Speeds"
set xtics 0.1
set mxtics 10

plot 'scanrange_log.txt' u 7:3 with points ps 2.0 pt 7
