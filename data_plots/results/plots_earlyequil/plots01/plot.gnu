#filename: plot.gnu
reset
set terminal postscript color eps enhanced
set output 'plot.ps'
#set size 1.3,1

set title "^4He Minimal Vortex Diameter {/Times-Italic a}_0 vs Pressure {/Times-Italic P} \n at Different Temperatures {/Times-Italic T} "

plot 2.173494256 -0.009824996*x - 0.000118194*x**2 - 0.000000437*x**3 + 0.000000007*x**4, \
     'file.dat' using 2:1 with points
