#filename: plot_DelokFits.gnu
reset
set terminal png
set output 'plot_DelokFits.png'
set title "Roton Energy Gap (Del/kB) \n vs Temperature"
set ylabel "Del/kB (K)"
set xlabel "T (K)"
set xrange [1:2.21]
set yrange [4.5:9]
set grid
set multiplot
	set origin 0,0
	set size 1,1
	unset key
	plot 'DelokFit.dat' using 1:3 with points
	     #title " B&D data "
	f(x,y) = a+b*y+c*exp(-(a+b*y)/x)*x/y+d*exp(-2*(a+b*y)/x)*y+(e+f*y+g*y**2)*exp(-3*(a+b*y)/x)
	load 'BandD.par'
	plot 'DelokFit.dat' using 1:(0*$3) with points, \
	     'DelokFit.dat' using 1:(f($1,$2)) with linespoints
	     #title " B&D fit"
	load 'DFfin1a.par'
	plot 'DelokFit.dat' using 1:(0*$3) with points, \
	     'DelokFit.dat' using 1:(0*f($1,$2)) with linespoints, \
	     'DelokFit.dat' using 1:(f($1,$2)) with linespoints
	     #title " fit 1a"
	load 'DFfin2a.par'
	set key left bottom box
	plot 'DelokFit.dat' using 1:(0*$3) title " B&D data " with points, \
	     'DelokFit.dat' using 1:(0*f($1,$2)) title " B&D fit" with linespoints, \
	     'DelokFit.dat' using 1:(0*f($1,$2)) title " fit 1a" with linespoints, \
	     'DelokFit.dat' using 1:(f($1,$2)) title " fit 2a" with linespoints
unset multiplot
#another option besides multiplot: add2d (?)
