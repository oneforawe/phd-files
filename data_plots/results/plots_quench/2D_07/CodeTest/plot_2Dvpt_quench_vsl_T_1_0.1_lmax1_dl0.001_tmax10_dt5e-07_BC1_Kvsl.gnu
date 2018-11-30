#filename: plot_2Dvpt_quench_vsl_T_1_0.1_lmax1_dl0.001_tmax10_dt5e-07_BC1_Kvsl.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_2Dvpt_quench_vsl_T_1_0.1_lmax1_dl0.001_tmax10_dt5e-07_BC1_Kvsl.ps'
#set size 1.0,1.1

set title "^4He Superfluid-Temperature Ratio {/Times-Italic K} vs Pair Separation Parameter {/Times-Italic l}"

set ylabel "{/Times-Italic K} (unitless)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0:1]
#set yrange [5:8]
#set logscale y
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot '2Dvpt_quench_vsl_T_1_0.1_lmax1_dl0.001_tmax10_dt5e-07_BC1_K1stInLoop.dat' using 3:4 with linespoints title " BC1 1.00 to 0.1 of Tc ", \
     '2Dvpt_quench_vsl_T_1_0.1_lmax1_dl0.001_tmax10_dt5e-07_BC1_K2ndInLoop.dat' using 3:4 with linespoints title " BC1 1.00 to 0.1 of Tc "
