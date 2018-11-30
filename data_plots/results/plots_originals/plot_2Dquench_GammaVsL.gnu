#filename: plot_2Dquench_GammaVsL.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_2Dquench_GammaVsL.ps'

set title "2D Quench Probability Density {/Symbol-Oblique G} vs Vortex-Pair Separation {/Times-Italic l}"

set ylabel "{/Symbol-Oblique G} (units...)"
set xlabel "{/Times-Italic l} = ln({/Times-Italic r}/{/Times-Italic r}_0) (unitless)"
set logscale y
#set xrange [0:1]
#set yrange [0:300]
set grid
set key inside left top box width -1 spacing 1.2 title "Calculated from \n {/CM-Typewriter 2Dquench4\\_26\\_00.c}"
#set rmargin 4

plot '2Dquench_ProbDensG.dat' using 1:3 with linespoints title " works? "
#'testgamma1.txt' using 1:3 with linespoints title " works? "