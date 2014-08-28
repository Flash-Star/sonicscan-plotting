if (!exists("inpref")) inpref='foo_'
if (!exists("outfile")) outfile='pres_multi.eps'
if (!exists("startxcstr")) startxcstr=''

set terminal postscript eps color enhanced "Helvetica" 20
set size 1.5,1.5
set output outfile

set format x "10^{%T}"
set format y "%1.2f"
set key right inside
set xrange [1e-2:1e10]
#set yrange [0.0:1.1]
set xlabel "Distance behind shock (cm)"
set ylabel "Pressure (x10^{25} erg/cm^3)"
set logscale x
set title "Pressure vs. distance"." ".startxcstr
set xtics 10
set mxtics 10

#set palette maxcolors 7
#set palette defined (0 '#D2CCFF',1 '#B5AAFF',2 '#9788FF',3 '#7A65FF',4 '#5C43FF',5 '#3F21FF',6 '#2200FF')	

set style line 1 lc rgb '#B1A5FF' lt 1 lw 3
set style line 2 lc rgb '#A193FF' lt 1 lw 3
set style line 3 lc rgb '#9180FF' lt 1 lw 3
set style line 4 lc rgb '#816EFF' lt 1 lw 3
set style line 5 lc rgb '#715CFF' lt 1 lw 3
set style line 6 lc rgb '#6149FF' lt 1 lw 3
set style line 7 lc rgb '#5137FF' lt 1 lw 3
set style line 8 lc rgb '#4124FF' lt 1 lw 3
set style line 9 lc rgb '#3112FF' lt 1 lw 3
set style line 10 lc rgb '#2200FF' lt 1 lw 3

plot for [i=1:10] inpref.sprintf('%u',(i-1)*5)."_0001_z1.dat" u 3:($7/1.0e25) w l ls i title sprintf('xc12=%1.2f',0.5-(i-1)*0.05)
