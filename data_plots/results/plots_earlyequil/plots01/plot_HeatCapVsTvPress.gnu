#filename: plot_HeatCapVsTvPress.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_HeatCapVsTvPress.ps'

set title "^4He Molar? Heat Capacity {/Times-Italic C_V} vs Temperature Variable {/Symbol-Oblique t}"

set ylabel "{/Times-Italic C_V} (units?)"
set xlabel "{/Symbol-Oblique t} = {/Times-Italic 1 - T / T}_{/Symbol-Oblique l}({/Times-Italic P}) (unitless)"
set xrange [1:10**(-8)]
set yrange [0:150]
set logscale x
set grid
set key inside top left box width -8.5 height 0.5 spacing 1.4 title " Calculated using \n {/CM-Typewriter vlt\\_HeatCap.c} "
set rmargin 2

plot 'vlt_HeatCap_DK0_1e-7.dat' using 1:2 title ' DK0 = 1e-7; {/Times-Italic P} = {/Times-Italic P}_{sv} = 0.05 bar ({/Times-Italic T}_{/Symbol-Oblique l} = 2.176 K)' with linespoints
