#filename: plot_rhos_compare_alpha.gnu
reset
set terminal png
set output 'plot_rhos_compare_alpha.png'
set title "Renormalized coupling constant fraction (Kr/K0 = rhos/rho0) \n vs Temperature T"
set ylabel "Kr/K0"
set xlabel "T (K)"
set grid
set key left bottom box
plot 'Donnelly_rhos.dat' using 1:2 with points title " Donnelly data  ", \
     'ring1_B_Dexp100.dat' using (2.1768*$1):9 with linespoints title " old calculation ", \
     'ring3_Dexp100_C_alpha.dat' using (2.1768*$1):9 with linespoints title " new calculation "
