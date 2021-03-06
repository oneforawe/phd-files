#filename: plot_DelokFit0.gnu
reset
set terminal png
set output 'plot_DelokFit0.png'
set title "Roton Energy Gap (Del/kB) \n vs Temperature"
set ylabel "Del/kB (K)"
set xlabel "T (K)"
set xrange [1:2.21]
set yrange [4.5:9]
set grid
set key left bottom box
f(x,y) = a+b*y+c*exp(-(a+b*y)/x)*x/y+d*exp(-2*(a+b*y)/x)*y+(e+f*y+g*y**2)*exp(-3*(a+b*y)/x)
load 'BandD.par'
plot 'DelokFit.dat' using 1:3 title " B&D data " with points, \
     'DelokFit.dat' using 1:(f($1,$2)) title " B&D fit" with linespoints
