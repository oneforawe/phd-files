#filename: plot_2DKT_FPquench_vsl_T_1_0.1_lmax10_dl0.00454545_tmax10_dt01e-05_BC3_dbug_NewRK2v2_GammaVsl.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_2DKT_FPquench_vsl_T_1_0.1_lmax10_dl0.00454545_tmax10_dt01e-05_BC3_dbug_NewRK2v2_GammaVsl.ps'
#set size 1.0,1.1

set title "^4He Vortex-Pair Distribution {/Symbol-Oblique G} vs Pair Separation Parameter {/Times-Italic l}"

set ylabel "{/Symbol-Oblique G} (units...)"
set xlabel "{/Times-Italic l} (unitless)"
set xrange [0:0.02]
set yrange [5e-4:7e-4]
set logscale y
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot '2DKT_FPquench_vsl_T_1_0.1_lmax10_dl0.00454545_tmax10_dt01e-05_BC3_dbug_NewRK2v2.dat' using 3:6 with linespoints title " BC3 1.00 to 0.1 of Tc "
