#filename: plot_3Dvlt_K0cFind_Plot_2.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_3Dvlt_K0cFind_Plot_2.ps'
#set size 1.3,1.1

set title "^4He Coupling Parameter {/Times-Italic K} vs Length Scale {/Times-Italic l}"

set ylabel "{/Times-Italic K} (unitless)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0:4e-8]
set yrange [0:1.5]
set grid
set key outside bottom center box width -5 height 0.5 spacing 1.2 title " Reaching K0c "
#set rmargin 25

plot '3Dvlt_K0cFind_Plot_Cc1.02_K015.dat' using 1:2 with points title " Cc = 1.02; K0c = 0.311077467512369 ", \
     '3Dvlt_K0cFind_Plot_Cc0.99_K015.dat' using 1:2 with points title " Cc = 1.99; K0c = 0.317065868648624 "
