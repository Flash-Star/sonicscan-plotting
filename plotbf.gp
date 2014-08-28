set terminal postscript eps color enhanced "Helvetica" 20
#set size 0.75,0.75

set output "bruteforce_wide_xc12_0.5.eps"

set format x "%.2tx10^{%T}" 
unset key
#set xrange [1e-12:1e-6] 
set yrange [0:1]
set xlabel "vdet (cm/s)" 
set ylabel "1=nan, 0=notnan"

set title "(Initial xc12 = 0.5)"
set lmargin 9
set bmargin 3.5
set rmargin 5
set tmargin 2.5
plot "bruteforce.log" u 1:2 with points ps 2.0 pt 7
