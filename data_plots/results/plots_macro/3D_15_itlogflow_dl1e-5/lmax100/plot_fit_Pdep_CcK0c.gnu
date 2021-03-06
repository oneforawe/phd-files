#filename: plot_fit_Pdep_CcK0c.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_fit_Pdep_CcK0c.ps'
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

#Defining the Cc(P) fit parameters and equation:
C00 = 1.08810120061343
C01 = -0.0292983769497877
C02 = 0.000368581647972188
C03 = -3.52081046231003e-06
C04 = 1.30707542673132e-08
C05 = 1.48364052601003e-09
C06 = -8.97709872061868e-11
C07 = 2.84450956271526e-12
C08 = -5.20406216097052e-14
C09 = 5.14058449663229e-16
C10 = -2.12115251246555e-18
fCc(x)  = C00 + C01*x + C02*x**2 + C03*x**3 + C04*x**4 + C05*x**5 + C06*x**6 + C07*x**7 + C08*x**8 + C09*x**9 + C10*x**10

#Defining the K0c(P) fit parameters and equation:
k00 = 0.298526872049726
k01 = 0.00511367145620362
k02 = 5.16275017489394e-05
k03 = 5.33573466318401e-07
k04 = 1.07070360303946e-08
k05 = -4.79519043638475e-10
k06 = 3.40776652631691e-11
k07 = -1.15967619351464e-12
k08 = 2.38727531713747e-14
k09 = -2.63203209205464e-16
k10 = 1.27323693980617e-18
fK0c(x)  = k00 + k01*x + k02*x**2 + k03*x**3 + k04*x**4 + k05*x**5 + k06*x**6 + k07*x**7 + k08*x**8 + k09*x**9 + k10*x**10


plot fCc(x)  title " {/Times-Italic C}_c fit ", \
     fK0c(x) title " {/Times-Italic K}@^{{} {/Times-Italic l}0^{^{}}}_{c  } fit ", \
     'Pdep_CcK0c.dat' using 4:1 with points linestyle 1 lc rgb "black" notitle, \
     'Pdep_CcK0c.dat' using 4:2 with points linestyle 1 lc rgb "black" notitle
