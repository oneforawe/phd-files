#filename: plot_3Dvlt_K0cFind_Plot_Ky.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_3Dvlt_K0cFind_Plot_Ky.ps'
set size 1.3,1.1

set title "^4He Coupling Parameter {/Times-Italic K} vs Length Scale {/Times-Italic l}"

set ylabel "{/Times-Italic K} (unitless)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0.20:0.55]
#set yrange [0.01:0.15]
set xrange [0.386:0.388]
set yrange [0.062:0.063]
set grid
set key outside right box width -5 height 0.5 spacing 1.2 title " Reaching K0c "
set rmargin 25

set pointsize 0.5

plot '3Dvlt_K0cFind_Plot_Cc1.20_K015.dat' using 2:3 with points title " Cc = 1.20; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.10_K015.dat' using 2:3 with points title " Cc = 1.10; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.06_K015.dat' using 2:3 with points title " Cc = 1.06; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.05_K015.dat' using 2:3 with points title " Cc = 1.05; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.04_K015.dat' using 2:3 with points title " Cc = 1.04; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.03_K015.dat' using 2:3 with points title " Cc = 1.03; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.02_K015.dat' using 2:3 with points title " Cc = 1.02; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.01_K015.dat' using 2:3 with points title " Cc = 1.01; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc1.00_K015.dat' using 2:3 with points title " Cc = 1.00; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.99_K015.dat' using 2:3 with points title " Cc = 1.99; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.98_K015.dat' using 2:3 with points title " Cc = 1.98; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.97_K015.dat' using 2:3 with points title " Cc = 1.97; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.90_K015.dat' using 2:3 with points title " Cc = 1.90; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.80_K015.dat' using 2:3 with points title " Cc = 1.80; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.70_K015.dat' using 2:3 with points title " Cc = 1.70; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.60_K015.dat' using 2:3 with points title " Cc = 1.60; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.55_K015.dat' using 2:3 with points title " Cc = 1.55; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.50_K015.dat' using 2:3 with points title " Cc = 1.50; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.40_K015.dat' using 2:3 with points title " Cc = 1.40; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.30_K015.dat' using 2:3 with points title " Cc = 1.30; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.20_K015.dat' using 2:3 with points title " Cc = 1.20; K01 = 5 ", \
     '3Dvlt_K0cFind_Plot_Cc0.10_K015.dat' using 2:3 with points title " Cc = 1.10; K01 = 5 "
