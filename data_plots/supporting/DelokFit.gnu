#filename: DelokFit.gnu
FIT_LIMIT = 1e-5  # fin2n.par  n=a => 1e-5  n=b => 1e-6  etc.
f(x,y) = a+b*y+c*exp(-(a+b*y)/x)*x/y+d*exp(-2*(a+b*y)/x)*y+(e+f*y+g*y**2)*exp(-3*(a+b*y)/x)
##
## (option A) record fit
##
#fit f(x,y) 'DelokFit.dat' using 1:2:3:(3) via 'DFinit1.par'  #
#update 'DFinit1.par' 'DFfin1a.par'  ##
#set print 'DFfinal1a.par'  #
#print a,"\t",b,"\t",c,"\t",d,"\t",e,"\t",f,"\t",g
#unset print
##
## (option B) test fit
##
fit f(x,y) 'DelokFit.dat' using 1:2:3:(3) via a,b,c,d,e,f,g
update 'DFfin_test.par'
set print 'DFfinal_test.par'
print a,"\t",b,"\t",c,"\t",d,"\t",e,"\t",f,"\t",g
unset print
reset
set terminal png
set output 'plot_DelokFit_test.png'
set title "Roton Energy Gap (Del/kB) \n vs Temperature"
set ylabel "Del/kB (K)"
set xlabel "T (K)"
set xrange [1:2.21]
set yrange [4.5:9]
set grid
set key left bottom box
plot 'DelokFit.dat' using 1:3 title " B&D data " with points, \
     'DelokFit.dat' using 1:(f($1,$2)) title " test fit" with linespoints
