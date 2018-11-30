#filename: thesis_plot_3Dvlt_constT_Cc1.11_lmax10_dl0.001_Op1_GammaVsl.gnu
reset
set terminal postscript color eps enhanced
set output 'thesis_plot_3Dvlt_constT_Cc1.11_lmax10_dl0.001_Op1_GammaVsl.ps'
set size 0.85,0.85

set title "^4He Vortex-Loop Distribution {/Symbol-Oblique G} (times {/Times-Italic a}_0^6) vs Length Scale {/Times-Italic l}"

set ylabel "{/Symbol-Oblique G} {/Times-Italic a}_0^6 (unitless)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0:0.005]
#set xrange [0:0.02]
#set yrange [1e-20:1]
set yrange [1e-50:1]
set logscale y
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
set key outside top right box width -2 height 0.5 spacing 1.2 title " ^{}Vortex Loop Theory "
#set rmargin 35

plot '3Dvlt_constT_1_Cc1.11_lmax10_dl0.001_Op1.dat'      using 3:7 with lines lw 2 title " {/Times-Italic T} = 1.0000*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.9999_Cc1.11_lmax10_dl0.001_Op1.dat' using 3:7 with lines lw 2 title " 0.9999*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.999_Cc1.11_lmax10_dl0.001_Op1.dat'  using 3:7 with lines lw 2 title " 0.999*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.99_Cc1.11_lmax10_dl0.001_Op1.dat'   using 3:7 with lines lw 2 title " 0.99*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.9_Cc1.11_lmax10_dl0.001_Op1.dat'    using 3:7 with lines lw 2 title " 0.9*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.5_Cc1.11_lmax10_dl0.001_Op1.dat'    using 3:7 with lines lw 2 title " 0.5*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.4_Cc1.11_lmax10_dl0.001_Op1.dat'    using 3:7 with lines lw 2 title " 0.4*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.3_Cc1.11_lmax10_dl0.001_Op1.dat'    using 3:7 with lines lw 2 title " 0.3*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.2_Cc1.11_lmax10_dl0.001_Op1.dat'    using 3:7 with lines lw 2 title " 0.2*{/Times-Italic T}_{/Symbol-Oblique l} ", \
     '3Dvlt_constT_0.1_Cc1.11_lmax10_dl0.001_Op1.dat'    using 3:7 with lines lw 2 title " 0.1*{/Times-Italic T}_{/Symbol-Oblique l} "
