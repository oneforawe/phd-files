#filename: plot_3Dvlt_macro_Tv_lmax100_dl0.001_Op2_Kvsl.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_3Dvlt_macro_Tv_lmax100_dl0.001_Op2_Kvsl.ps'
#set size 1.0,1.1

set title "^4He Coupling Parameter {/Times-Italic K} vs Length Scale {/Times-Italic l}"

set ylabel "{/Times-Italic K} (unitless)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0:1]
#set yrange [5:8]
#set logscale y
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot '3Dvlt_macro_Tv_Cc1.20_lmax100_dl0.001_Op2.dat'   using 1:4 with linespoints title " Kthresh=5 "
