#filename: thesis_plot_3Dvlt_flow_nolog_Ky.gnu
reset
set terminal postscript color eps enhanced
set output 'thesis_plot_3Dvlt_flow_nolog_Ky.ps'
set size 0.85,0.85
##set size 1.00,0.85
#set size 0.85,1.20

#set samples 1000000

set title "^4He Fugacity {/Times-Italic y} vs Coupling Parameter {/Times-Italic K}"

set ylabel "{/Times-Italic y} (unitless)"
set xlabel "{/Times-Italic K} (unitless)"



PISQ = 9.86960440108935861883
PICU = 31.00627668029981620634
A3 = 4.0*PICU/3.0

KstarD = 0.607927101854026652
ystarD = 0.039788735772973836

KstarC = 0.0
ystarC = 0.0

KstarA = 4.146766416946759293
ystarA = 0.0058331356032128735

KstarB = 0.387508189712343409
ystarB = 0.0624210054576019

#peek
#set xrange [-0.1:12.0]
#set yrange [-0.01:0.6]


#set log y
#set xrange [1.0e-10:1.0e5]
#set xrange [-5.0:250.0]
#set xrange [-5.0:5000.0]
#set yrange [1.0e-323:1.0e10]
#set xrange [-5.0:35.0]


#set xrange [-0.1:10.0]
#set xrange [-0.1:8.0]
set xrange [-0.1:5.0]
set yrange [-0.01:0.26]

#set xrange [KstarD-0.25:KstarD+0.25]
#set yrange [ystarD-0.025:ystarD+0.025]

#set xrange [6:8]
#set yrange [0:0.01]
#set xrange [-0.1:50.0]
#set yrange [-0.4:0.4]
#set xrange [-0.006:0.006]
#set yrange [-0.002:0.002]

#set xrange [-0.1:50]
#set yrange [-0.1:0.4]
#set xrange [-0.1:35]
#set yrange [-0.01:0.4]

#set xrange [30.5:31.5]
#set yrange [-0.01:0.01]

#set xrange [-0.1:32]
#set yrange [-0.1:0.3]
##set xrange [-0.1:9]
##set yrange [-0.03:0.27]
##############set xrange [0.2:2]
##############set yrange [0.02:0.22]
#set xrange [-0.1:9]
#set yrange [-0.03:0.1]
#set xrange [-0.1:10.5]
#set yrange [-0.01:0.1]

#set xrange [-0.1:5.5]
#set yrange [-0.01:0.3]
#set xrange [-0.1:1]
#set yrange [-0.01:0.1]

##set xrange [0.25:0.5]
##set yrange [0.04:0.08]
###set xrange [0.2:1.5]
###set yrange [0.01:0.15]
#set xrange [KstarD-3e-4:KstarD+3e-4]
#set yrange [ystarD-5e-5:ystarD+5e-5]

#set xrange [KstarD-3e-5:KstarD+3e-5]
#set yrange [ystarD-5e-6:ystarD+5e-6]

###set xrange [KstarD-3e-6:KstarD+3e-6]
###set yrange [ystarD-5e-7:ystarD+5e-7]
####set xrange [KstarD-1.1e-6:KstarD+1.1e-6]
####set yrange [ystarD-4e-7:ystarD+4e-7]

#set xrange [KstarD-3e-7:KstarD+3e-7]
#set yrange [ystarD-5e-8:ystarD+5e-8]

#set xrange [KstarD-3e-14:KstarD+3e-14]
#set yrange [ystarD-5e-15:ystarD+5e-15]
#set xrange [KstarD-3e-15:KstarD+3e-15]
#set yrange [ystarD-5e-16:ystarD+5e-16]
#set xrange [KstarD-3e-16:KstarD+3e-16]
#set yrange [ystarD-5e-17:ystarD+5e-17]

##set xrange [3.4:5.2]
##set yrange [0.003:0.012]

set grid
#####set key at graph 0.85,-0.21 box width -5 height 0.5 spacing 1.6 title " Finding {/Times-Italic K}@^{{} {/Times-Italic l}0^{^{}}}_{c  }, given a {/Times-Italic C}_c^ "
##set key at graph 0.875,-0.21 box width -5 height 0.5 spacing 1.6 title " Finding {/Times-Italic K}@^{{} {/Times-Italic l}0^{^{}}}_{c  }, given a {/Times-Italic C}_c^ "
#set key outside below center box width -5 height 0.5 spacing 1.2 title " Finding {/Times-Italic K}_{0c}, given a {/Times-Italic C}@_c^ "
#####set bmargin 9.7

set rmargin 5
##set key outside right
#set bmargin 20
#set key outside below
set key off

#set pointsize 0.4
set pointsize 0.5
#set pointsize 0.125


plot 1.0/(A3*x) notitle ls 0, \
     '3Dvlt_flow_plot_Op31133_K0.161_y0.150_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.161_y0.150_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K0.388_y0.062_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.388_y0.062_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K0.608_y0.005_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.608_y0.005_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K0.608_y0.020_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.608_y0.020_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K0.608_y0.060_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.608_y0.060_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K0.608_y0.125_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.608_y0.125_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K0.608_y0.200_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.608_y0.200_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K0.922_y0.026_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K0.922_y0.026_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K2.100_y0.012_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K2.100_y0.012_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31133_K4.147_y0.006_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op31144_K4.147_y0.006_step1000000.dat' using 2:3 with lines ls 2 lc rgb "black"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op35464_K0.608_y0.040_step1000000.dat' using 2:3 with lines ls 1 lc rgb "red"     title "(ds limtd)", \
     '3Dvlt_flow_plot_Op35454_K0.608_y0.040_step1000000.dat' using 2:3 with lines ls 1 lc rgb "blue"    title "(ds limtd)", \
     '3Dvlt_flow_plot_Op35563_K0.608_y0.040_step1000000.dat' using 2:3 with lines ls 1 lc rgb "green"   title "(ds limtd)", \
     '3Dvlt_flow_plot_Op35553_K0.608_y0.040_step1000000.dat' using 2:3 with lines ls 1 lc rgb "magenta" title "(ds limtd)", \
     "<echo 0.607927101854026652 0.039788735772973836"  with points ls 7 lc rgb "black" title "Fixed pts", \
     "<echo 0.0                  0.0                 "  with points ls 7 lc rgb "black" notitle, \
     "<echo 0.387508189712343409 0.0624210054576019  "  with points ls 7 lc rgb "#777777" notitle, \
     "<echo 4.146766416946759293 0.0058331356032128735" with points ls 7 lc rgb "#777777" notitle

#     exp(-PISQ*0.40*x) lt 2 lc rgb "orange" notitle, \
#     exp(-PISQ*1.10*x) lt 2 lc rgb "purple" notitle, \




#     exp(-PISQ*0.10*x) lt 2 lc rgb "yellow" notitle, \
#     exp(-PISQ*0.20*x) lt 2 lc rgb "yellow" notitle, \
#     exp(-PISQ*0.30*x) lt 2 lc rgb "yellow" notitle, \
#     exp(-PISQ*0.40*x) lt 2 lc rgb "blue" notitle, \
#     exp(-PISQ*0.50*x) lt 2 notitle, \
#     exp(-PISQ*0.60*x) lt 2 notitle, \
#     exp(-PISQ*0.70*x) lt 2 notitle, \
#     exp(-PISQ*0.80*x) lt 2 notitle, \
#     exp(-PISQ*0.90*x) lt 2 notitle, \
#     exp(-PISQ*1.00*x) lt 2 notitle, \
#     exp(-PISQ*1.10*x) lt 2 lc rgb "red"  notitle, \
#     exp(-PISQ*1.20*x) lt 2 lc rgb "yellow" notitle, \
#     1.0/(A3*x) notitle ls 0, \







#    '3Dvlt_K0cFind3_Plot_Op2132_K0.388_y0.062_step2000000.dat' using 2:3 with points title "Cc = 0.80 (dl const)", \
#    '3Dvlt_K0cFind3_Plot_Op2134_K0.388_y0.062_step2000000.dat' using 2:3 with points title "Cc = 0.80 (dl const)", \

#     "<echo KstarD ystarD" with points lc rgb "black" title " Fixed pts ", \
#     "<echo 0.38750818971 0.062421005458"
#     'FixedPoints.dat' using 2:3 with points lc rgb "black" title " Fixed pts "

#ls 2 lc rgb "red"     title " Adjusted theory, {/Times-Italic c}@_{/Times-Italic P}^{adj} ", \
#ls 2 lc rgb "blue"    notitle, \
#ls 2 lc rgb "magenta" notitle, \
#ls 2 lc rgb "cyan"    notitle, \
#ls 2 lc rgb "yellow"  notitle, \
#ls 2 lc rgb "black"   notitle
