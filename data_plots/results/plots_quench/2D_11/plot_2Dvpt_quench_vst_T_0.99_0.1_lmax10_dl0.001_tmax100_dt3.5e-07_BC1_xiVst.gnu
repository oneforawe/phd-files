#filename: plot_2Dvpt_quench_vst_T_0.99_0.1_lmax10_dl0.001_tmax100_dt3.5e-07_BC1_xiVst.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_2Dvpt_quench_vst_T_0.99_0.1_lmax10_dl0.001_tmax100_dt3.5e-07_BC1_xiVst.ps'
#set size 1.0,1.1

set title "^4He Vortex-Pair Quench Correlation Length {/Symbol-Oblique x} vs Time {/Symbol-Oblique t}"

set ylabel "{/Times-Italic l}_c (unitless)"
set xlabel "{/Symbol-Oblique t} (unitless)"
#set xrange [0:2]
set yrange [0:10]
set logscale x
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot '2Dvpt_quench_vst_T_0.99_0.1_lmax10_dl0.001_tmax100_dt3.5e-07_BC1_new.dat' using 2:11 with linespoints title " {/Times-Italic l}_{c1}, BC1 0.99 to 0.1 of Tc ", \
     '2Dvpt_quench_vst_T_0.99_0.1_lmax10_dl0.001_tmax100_dt3.5e-07_BC1_new.dat' using 2:12 with linespoints title " {/Times-Italic l}_{c2}, BC1 0.99 to 0.1 of Tc ", \
     3.4967*x**(0.5) with lines title " 3.4967*{/Symbol-Oblique t}^{1/z} ", \
     0.5*log(1000*x) with lines title " 0.5*ln(10^3*{/Symbol-Oblique t}) "
