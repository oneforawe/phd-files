#filename: thesis_plot_fit_Pdep_CcK0c_lmax100_dl0.001_Op2.gnu
reset
set terminal postscript color eps enhanced
set output 'thesis_plot_fit_Pdep_CcK0c_lmax100_dl0.001_Op2.ps'
#set size 0.85,0.85
set size 0.85,0.65

set title "^4He Critical Pair Parameters vs Pressure {/Times-Italic P}"

set ylabel "{/Times-Italic C}_c and {/Times-Italic K}@^{{} {/Times-Italic l}0^{^{}}}_{c  } (unitless)"
set xlabel "{/Times-Italic P} (bar)"
set xrange [0:30]
#set yrange [0:3e-5]
#set grid
set key inside right box width -5 height 0.5 spacing 1.6 title " Vortex loop theory^{} \n calculation fits "
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

#Defining the fit parameters and equation:
C00 = 1.1065072990556
C01 = -0.029968073256074
C02 = 0.000379637825435298
C03 = -4.10577834175105e-06
C04 = 1.58974797745796e-07
C05 = -1.45472153773608e-08
C06 = 7.66479650573406e-10
C07 = -2.15799161198247e-11
C08 = 3.19691154754537e-13
C09 = -2.19725076315562e-15
C10 = 4.42628104432153e-18
fCc(x)  = C00 + C01*x + C02*x**2 + C03*x**3 + C04*x**4 + C05*x**5 + C06*x**6 + C07*x**7 + C08*x**8 + C09*x**9 + C10*x**10

#Defining the fit parameters and equation:
k00 = 0.295359928991731
k01 = 0.00508413174676733
k02 = 5.15885451496554e-05
k03 = 6.69186316462475e-07
k04 = -2.74622551950506e-08
k05 = 2.92854219547921e-09
k06 = -8.80012434467914e-11
k07 = -1.93460846518787e-13
k08 = 7.13136752136051e-14
k09 = -1.47121339074112e-15
k10 = 9.60439029245856e-18
fK0c(x)  = k00 + k01*x + k02*x**2 + k03*x**3 + k04*x**4 + k05*x**5 + k06*x**6 + k07*x**7 + k08*x**8 + k09*x**9 + k10*x**10


plot fCc(x)  title " {/Times-Italic C}_c fit ", \
     fK0c(x) title " {/Times-Italic K}@^{{} {/Times-Italic l}0^{^{}}}_{c  } fit ", \
     'Pdep_CcK0c_lmax100_dl0.001_Op2.dat' using 4:1 with points linestyle 1 lc rgb "black" notitle, \
     'Pdep_CcK0c_lmax100_dl0.001_Op2.dat' using 4:2 with points linestyle 1 lc rgb "black" notitle

#     'Pdep_CcK0c.dat' using 1:2 with points linestyle 1 lc rgb "black" notitle, \
#     'Pdep_CcK0c.dat' using 1:3 with points linestyle 1 lc rgb "black" notitle

# Cc points
#     'Pdep_CcK0c.dat' using 1:2 with points linestyle 1 lc rgb "black" notitle, \
# K0c points
#     'Pdep_CcK0c.dat' using 1:3 with points linestyle 1 lc rgb "black" notitle, \
# Cc points
#     'Pdep_K0c_lmax100_dl0.001_Op2.dat' using 4:1 with points linestyle 1 lc rgb "black" notitle, \
# K0c points
#     'Pdep_K0c_lmax100_dl0.001_Op2.dat' using 4:2 with points linestyle 1 lc rgb "black" notitle
# Cc points (redundant)
#     'Pdep_Cc_lmax100_dl0.001_Op2.dat' using 3:1 with points linestyle 1 lc rgb "black" notitle
