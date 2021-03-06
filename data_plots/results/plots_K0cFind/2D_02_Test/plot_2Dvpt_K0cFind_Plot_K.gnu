#filename: plot_2Dvpt_K0cFind_Plot_K.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_2Dvpt_K0cFind_Plot_K.ps'
#set size 0.85,0.85
set size 0.85,0.65

set title "^4He Film Coupling Parameter {/Times-Italic K} vs Length Scale {/Times-Italic l}"

set ylabel "{/Times-Italic K} (unitless)"
set xlabel "{/Times-Italic l} (unitless)"
set xrange [0:8e3]
#set yrange [0:0.8]
#set yrange [0.63:0.65]
set yrange [2.0/pi-0.01:2.0/pi+0.01]
set grid
set key at graph 0.982,0.96 box width -2 height 0.5 spacing 1.2 title " Finding {/Times-Italic K}_{0c}, using the Villain model^{} "
#set bmargin 9

set pointsize 0.5

plot '2Dvpt_K0cFind_Plot_Output.dat' using 1:2 with points title " Found {/Times-Italic K}_{0c} = 0.7478523792 ", \
     2.0/pi ls 0 notitle
