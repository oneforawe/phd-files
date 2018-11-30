#filename: plot_2DKT_FPinject_vsl_lmax10_dl0.008_tmax10_dt01e-05_linj3_InjConst1e-06_GammaVsl.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_2DKT_FPinject_vsl_lmax10_dl0.008_tmax10_dt01e-05_linj3_InjConst1e-06_GammaVsl.ps'
#set size 1.0,1.1

set title "^4He Vortex-Pair Distribution {/Symbol-Oblique G} vs Pair Separation Parameter {/Times-Italic l}"

# I THINK THE BOUNDARY CONDITIONS ARE THE PROBLEM. TO SEE AN INCREASE IN GAMMA, WE NEED TO DESIGNATE WHERE THE CORRELATION LENGTH IS SO THE PROBABILITY DENSITY CAN FILL UP.

set ylabel "{/Symbol-Oblique G} (units...)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0:5]
#set yrange [1e-120:1e-40]
#set xrange [2:4]
#set yrange [1e-115:1e-75]
set xrange [1.5:4.5]
set yrange [1e-124:1e-62]
#set xrange [2.9:3.1]
#set yrange [1e-100:1e-90]
#set xrange [0:4]
#set yrange [1e-34:1]
#set xrange [0:5]
#set yrange [1e-15:10]
set logscale y
set grid
set key bottom left
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot '2DKT_FPinject_vsl_IC0_T0.1_lmax10_dl0.008_tmax10000_dt01e-05_linj3_InjConst1e+100.dat' using 3:6 with linespoints title " T=0.10*Tc ", \
     '2DKT_FPinject_vsl_IC1_T0.1_lmax10_dl0.008_tmax10_dt01e-05_linj3_InjConst1e-06.dat' using 3:6 with linespoints title " T=0.10*Tc ", \
     '2DKT_FPinject_vsl_IC0_T1_lmax10_dl0.008_tmax10_dt01e-05_linj3_InjConst1e+06.dat' using 3:6 with linespoints title " T=1.00*Tc "

#'InjConst1e+20_0.dat' using 3:6 with linespoints title " t=0.000 T=0.10*Tc ", \
#     'InjConst1e+20_1.dat' using 3:6 with linespoints title " t=0.010 T=0.10*Tc ", \
#     'InjConst1e+20_2.dat' using 3:6 with linespoints title " t=0.100 T=0.10*Tc ", \
#     'InjConst1e+20_3.dat' using 3:6 with linespoints title " t=1.000 T=0.10*Tc ", \
#     'InjConst1e+20_4.dat' using 3:6 with linespoints title " t=10.00 T=0.10*Tc ", \
#     'InjConst1e+20_5.dat' using 3:6 with linespoints title " t=100.0 T=0.10*Tc ", \
#     
#     '2DKT_FPinject_vsl_IC0_T0.1_lmax10_dl0.008_tmax10000_dt01e-05_linj3_InjConst1e+20.dat' using 3:6 with linespoints title " T=0.10*Tc ", \
#     '2DKT_FPinject_vsl_IC0_T0.1_lmax10_dl0.008_tmax10_dt01e-05_linj3_InjConst1e+06.dat' using 3:6 with linespoints title " T=0.10*Tc ", \
