#filename: plot_2Dvpt_constT_lmax100_dl0.001_Op1_GammaVsl.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_2Dvpt_constT_lmax100_dl0.001_Op1_GammaVsl.ps'
#set size 1.0,1.1

set title "^4He Vortex-Pair Distribution {/Symbol-Oblique G} vs Pair Separation Parameter {/Times-Italic l}"

set ylabel "{/Symbol-Oblique G} (units...)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0:0.005]
#set xrange [0:0.02]
#set yrange [1e-20:1]
set logscale y
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot '2Dvpt_constT_1_lmax100_dl0.001_Op1.dat'   using 3:7 with linespoints title " 1.0*Tc ", \
     '2Dvpt_constT_0.9_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.9*Tc ", \
     '2Dvpt_constT_0.8_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.8*Tc ", \
     '2Dvpt_constT_0.7_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.7*Tc ", \
     '2Dvpt_constT_0.6_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.6*Tc ", \
     '2Dvpt_constT_0.5_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.5*Tc ", \
     '2Dvpt_constT_0.4_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.4*Tc ", \
     '2Dvpt_constT_0.3_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.3*Tc ", \
     '2Dvpt_constT_0.2_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.2*Tc ", \
     '2Dvpt_constT_0.1_lmax100_dl0.001_Op1.dat' using 3:7 with linespoints title " 0.1*Tc "
