#filename: plot_fit_Pdep_K0c_lmax100_dl0.001_Op2.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_fit_Pdep_K0c_lmax100_dl0.001_Op2.ps'
#set size 1.0,1.1

set title "^4He Critical Bare Coupling {/Times-Italic K}_{0c} vs Pressure {/Times-Italic P}"

set ylabel "{/Times-Italic K0}_c (unitless)"
set xlabel "{/Times-Italic P} (bar)"
#set xrange [0:4.38e-4]
#set yrange [0:3e-5]
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
set key inside right box width 0 height 0.5 spacing 1.2 title " VLT calculations \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.67168835 "
#set rmargin 35

#Defining the fit parameters and equation:
k00 = 0.295390109125547
k01 = 0.00508440693337029
k02 = 5.15936104537981e-05
k03 = 6.6840260137999e-07
k04 = -2.73682424131871e-08
k05 = 2.92445414526824e-09
k06 = -8.79753799932285e-11
k07 = -1.89938965286979e-13
k08 = 7.1196156273502e-14
k09 = -1.46975149440742e-15
k10 = 9.59795096881752e-18
fK0c(x)  = k00 + k01*x + k02*x**2 + k03*x**3 + k04*x**4 + k05*x**5 + k06*x**6 + k07*x**7 + k08*x**8 + k09*x**9 + k10*x**10


plot 'Pdep_K0c_lmax100_dl0.001_Op2.dat' using 4:2 with points title " Calculated points ", \
     'Pdep_CcK0c.dat' using 1:3 with points title " Calculated points (NoIfThen) ", \
     fK0c(x) title " Fit "
