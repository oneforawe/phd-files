#filename: plot_3Dvlt_quench_vst_T_1_0.7_P_00.050_lmax10_dl0.001_tmax1_dt5e-07_BC1_RhosRhoVst.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_3Dvlt_quench_vst_T_1_0.7_P_00.050_lmax10_dl0.001_tmax1_dt5e-07_BC1_RhosRhoVst.ps'
#set size 1.0,1.1

set title "^4He Macroscopic Superfluid Density {/Symbol-Oblique r}_s/{/Symbol-Oblique r} vs Time {/Times-Italic t}/{/Times-Italic t}_0"

set ylabel "{/Symbol-Oblique r}_s/{/Symbol-Oblique r} (unitless)"
set xlabel "{/Times-Italic t}/{/Times-Italic t}_0 (unitless)"
#set xrange [0:1]
#set yrange [1e-4:1e-1]
set logscale xy
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot '3Dvlt_quench_vst_T_1_0.7_P_00.050_lmax10_dl0.001_tmax1_dt5e-07_BC1.dat'  using 2:8 with linespoints  title " BC1 1.00 to 0.7 of Tc "
