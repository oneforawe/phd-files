#filename: plot_vlt_HeatCap_P_18.180_DK0_5e-07_i47_CpVsTv_termcheck.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_vlt_HeatCap_P_18.180_DK0_5e-07_i47_CpVsTv_termcheck.ps'

set title "^4He Molar Specific Heat Capacity at Constant Pressure {/Times-Italic c_P} \n vs Temperature Variable {/Symbol-Oblique t} = {/Times-Italic 1 - T / T}_{/Symbol-Oblique l}"

set ylabel "{/Times-Italic c_P} (J mol^{-1} K^{-1})"
set xlabel "{/Symbol-Oblique t} = {/Times-Italic 1 - T / T}_{/Symbol-Oblique l}{/Times-Italic (P)} (unitless)"
set logscale x
set xrange [1:1e-8]
#set xrange [1e-2:1e-8]
set mxtics 10
#set yrange [0:300]
set yrange [-1:5]
set grid
set key inside left top box width -8 spacing 1.2 title "Calculated from \n {/CM-Typewriter vlt\\_HeatCap\\_P.c}"
set rmargin 4

plot 'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:9  with linespoints title " {/Times-Italic P} = 18.180 bar ({/Times-Italic T}_{/Symbol-Oblique l} = 2.954 K) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:10 with linespoints title " {/Times-Italic P} = 18.180 bar (cp01) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:11 with linespoints title " {/Times-Italic P} = 18.180 bar (cp02) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:12 with linespoints title " {/Times-Italic P} = 18.180 bar (cp03) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:13 with linespoints title " {/Times-Italic P} = 18.180 bar (cp04) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:14 with linespoints title " {/Times-Italic P} = 18.180 bar (cp05) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:15 with linespoints title " {/Times-Italic P} = 18.180 bar (cp06) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:16 with linespoints title " {/Times-Italic P} = 18.180 bar (cp07) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:17 with linespoints title " {/Times-Italic P} = 18.180 bar (cp08) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:18 with linespoints title " {/Times-Italic P} = 18.180 bar (cp09) ", \
     'vlt_HeatCap_P_18.180_DK0_5e-07_i47_termcheck.dat' using 2:19 with linespoints title " {/Times-Italic P} = 18.180 bar (cp10) "
