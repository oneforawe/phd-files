#filename: thesis_plot_3Dvlt_macro_T_Cc1.11_dl0.001_Op7_NumVorticesPera03vsT.gnu

# This is meant to show how the number of loops increases with increasing temperature.

reset
set terminal postscript color eps enhanced
set output 'thesis_plot_3Dvlt_macro_T_Cc1.11_dl0.001_Op7_NumVorticesPera03vsT.ps'
set size 0.85,0.85

set title "^4He Number of Vortex Loops per {/Times-Italic a}_0^3 vs Temperature Fraction {/Times-Italic T} / {/Times-Italic T}_{/Symbol-Oblique l}"

set ylabel "{/Times-Italic (N / V)} {{/Times-Italic a}_0}^3 (unitless)"
set xlabel "{/Times-Italic T} / {/Times-Italic T}_{/Symbol-Oblique l} (unitless)"
#set xrange [0:1]
#set yrange [-0.5:12]
set yrange [-0.1:2]
##set yrange [-0.05*1:1]
#set logscale y
#set grid
#set key inside left bottom box width -2 height 0.5 spacing 1.2 title " ^{}Vortex Loop Theory "
set key at graph 0.34,0.37 box width -2 height 0.5 spacing 1.2 title " ^{}Vortex Loop Theory "
#set rmargin 35

#set pointsize 0.5

plot '3Dvlt_macro_T_Cc1.11_lmax0_dl-nan_Op7.dat'    using 1:(-(4.0/pi)**2*$8) with lines title " {/Times-Italic l}_{max} = 0 ", \
     '3Dvlt_macro_T_Cc1.11_lmax1_dl0.001_Op7.dat'   using 1:(-(4.0/pi)**2*$8) with lines title " {/Times-Italic l}_{max} = 1 ", \
     '3Dvlt_macro_T_Cc1.11_lmax2_dl0.001_Op7.dat'   using 1:(-(4.0/pi)**2*$8) with lines title " {/Times-Italic l}_{max} = 2 ", \
     '3Dvlt_macro_T_Cc1.11_lmax10_dl0.001_Op7.dat'  using 1:(-(4.0/pi)**2*$8) with lines title " {/Times-Italic l}_{max} = 10 "

#     '3Dvlt_macro_T_Cc1.11_lmax100_dl0.001_Op7.dat' using 1:(-(4.0/pi)**2*$8) with lines title " {/Times-Italic l}_{max} = 100 "
