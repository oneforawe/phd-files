#filename: thesis_plot_2Dvpt_flow_Ky.gnu
reset
set terminal postscript color eps enhanced
set output 'thesis_plot_2Dvpt_flow_Ky.ps'
set size 0.85,0.85
##set size 1.00,0.85
#set size 0.85,1.20

#set samples 1000000

#set title "^4He Fugacity {/Times-Italic y} vs Coupling Parameter {/Times-Italic K}"
set title "2D Fugacity {/Times-Italic y} vs Coupling Parameter {/Times-Italic K} (Physical Scaling Equation Flow)"

set ylabel "{/Times-Italic y} (unitless)"
set xlabel "{/Times-Italic K} (unitless)"

PI   = 3.14159265358979323846
PISQ = 9.86960440108935861883
PICU = 31.00627668029981620634
A2 = 4.0*PICU


#set xrange [-0.1*4.0/PI:4.0/PI]
set xrange [1.0/PI:4.0/PI]
set yrange [-0.1*0.001:0.001]
#set yrange [-0.1*0.00005:0.00005]

#set xrange [-32.0/PI:32.0/PI]
#set yrange [-0.15:0.15]
#set yrange [-0.3:0.3]

#set xrange [0:8.0/PI]
#set yrange [0:2]
#set xrange [0:64.0/PI]
#set yrange [0.35:0.55]

#set xrange [0:64.0/PI]
#set yrange [-0.55:0.55]

#set xtic 4.0*2.0/PI
#set xtics ("-32/{/Symbol p}" -32.0/PI, "-24/{/Symbol p}" -24.0/PI, "-16/{/Symbol p}" -16.0/PI, "-8/{/Symbol p}" -8.0/PI, "0" 0, "8/{/Symbol p}" 8.0/PI, "16/{/Symbol p}" 16.0/PI, "24/{/Symbol p}" 24.0/PI, "32/{/Symbol p}" 32.0/PI)
#set xtics ("0" 0.0, "2/{/Symbol p}" 2.0/PI, "4/{/Symbol p}" 4.0/PI)
set xtics ("1/{/Symbol p}" 1.0/PI, "2/{/Symbol p}" 2.0/PI, "3/{/Symbol p}" 3.0/PI, "4/{/Symbol p}" 4.0/PI)

#set mxtics 4

set grid
set key inside top right box width -5 height 0.5 spacing 1.2 notitle
#####set key at graph 0.85,-0.21 box width -5 height 0.5 spacing 1.6 title " Finding {/Times-Italic K}@^{{} {/Times-Italic l}0^{^{}}}_{c  }, given a {/Times-Italic C}_c^ "
#set key outside below center box width -5 height 0.5 spacing 1.2 title " Finding {/Times-Italic K}_{0c}, given a {/Times-Italic C}@_c^ "
#####set bmargin 9.7
#set rmargin 20
set rmargin 2
##set key outside right
#set bmargin 20
#set key outside below
#set key off

set pointsize 0.5
#set pointsize 0.125


## Vertical Line Flows ##
#set arrow from 0,0     to 0,0.074 lt 1 lc rgb "red" nohead
#set arrow from 0,0.074 to 0,0.15  lt 2 lc rgb "red" nohead

#set arrow from 0,0      to 0,-0.075 lt 1 lc rgb "red" nohead
#set arrow from 0,-0.075 to 0,-0.15  lt 2 lc rgb "red" nohead


plot '2Dvpt_flow_Op3_K10.622_y0.095_step20000000.dat' using 2:3 with lines lt 1 lc rgb "red" notitle, \
     '2Dvpt_flow_Op3_K0.696_y0.001_step5000000.dat' using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.712_y0.001_step5000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.730_y0.001_step5000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.748_y0.001_step10000000.dat' using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.767_y0.001_step5000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.787_y0.000_step5000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.808_y0.000_step5000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.831_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.880_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.935_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K0.997_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K1.068_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K1.151_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op3_K1.246_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "black" notitle, \
     '2Dvpt_flow_Op4_K0.696_y0.001_step1000000.dat' using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.712_y0.001_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.730_y0.001_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.767_y0.001_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.787_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.808_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.831_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.880_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.935_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K0.997_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K1.068_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K1.151_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     '2Dvpt_flow_Op4_K1.246_y0.000_step1000000.dat'   using 2:3 with lines lt 2 lc rgb "#CCCCCC" notitle, \
     exp(-PISQ*x) lt 5 lc rgb "orange" title "Bare ({/Times-Italic l} = 0) values", \
     "<echo 0.636619772367581382 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 0.71281897593572241 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 0.74980946853024499 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 0.78149746654756969 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 0.81114751145292452 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 0.86907803180012466 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 0.92910214546719028 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 0.99423682011126857 0.0" with points ls 7 lc rgb "black" notitle, \
     "<echo 1.0669854664350484 0.0"  with points ls 7 lc rgb "black" notitle, \
     "<echo 1.149946966364656 0.0"   with points ls 7 lc rgb "black" notitle, \
     "<echo 1.2461921844875257 0.0"  with points ls 7 lc rgb "black" notitle

#     '2Dvpt_flow_Op4_K0.003_y9.127_step20000000.dat'  using 2:3 with lines lt 3 lc rgb "red" notitle, \

#     '2Dvpt_flow_Op4_K0.748_y0.001_step1000000.dat'  using 2:3 with lines lt 4 lc rgb "red"     notitle, \

#     '3Dvlt_flow_Op11144_K0.135_y0.232_step1000000.dat' using 2:3 with lines ls 2 lc rgb "#CCCCCC"   title "(ds limtd)", \
#     '3Dvlt_flow_Op11144_K0.148_y0.200_step1000000.dat'      using 2:3 with lines ls 2 lc rgb "#CCCCCC"   title "(ds limtd)", \


# y0 = exp(-2pi*K0*C)
#    = exp(-factor*pi^2*K0)   by Villain model
#
# Villain model:  U  =  factor*pi^2*K0*kB*T + (kappa^2*sigma^r_s/(2pi))*ln(a/a0)
#                 U0 =  factor*pi^2*K0*kB*T
#


#     4.0/(A2*x) notitle ls 0, \
#     (2.0*PI/A2)*log(x)-0.005 notitle ls 0




#     exp(-PISQ*0.10*x) lt 2 lc rgb "yellow" notitle, \
#     exp(-PISQ*0.40*x) lt 2 lc rgb "blue" notitle, \
#     exp(-PISQ*1.00*x) lt 2 notitle, \
#     exp(-PISQ*1.10*x) lt 2 lc rgb "red"  notitle, \
#     exp(-PISQ*1.20*x) lt 2 lc rgb "yellow" notitle, \
#     1.0/(A3*x) notitle ls 0, \

