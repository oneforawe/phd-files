#filename: plot_vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_GammaVsa_dl.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_GammaVsa_dl.ps'
#set size 1.0,1.1

set title "^4He Vortex-Loop Distribution {/Symbol-Oblique G} vs Loop Diameter Scale {/Times-Italic l}"

set ylabel "{/Symbol-Oblique G} (units...)"
set xlabel "{/Times-Italic l} (unitless)"
#set xrange [0:4e-5]
#set xrange [0:4.38e-4]
set yrange [1e-30:1]
set logscale y
set grid
#set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
#set rmargin 35

plot 'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_0.dat' using 3:7 with linespoints title "t = 0", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_0.01.dat' using 3:7 with linespoints title "t = 0.01", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_0.1.dat' using 3:7 with linespoints title "t = 0.1", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_1.dat' using 3:7 with linespoints title "t = 1", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_10.dat' using 3:7 with linespoints title "t = 10", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_20.dat' using 3:7 with linespoints title "t = 20", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_30.dat' using 3:7 with linespoints title "t = 30", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_40.dat' using 3:7 with linespoints title "t = 40", \
     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_50.dat' using 3:7 with linespoints title "t = 50"

#     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_2.dat' using 3:7 with linespoints title "t = 2", \
#     'vlt_FPquench_vsl_3_T_1_0.1_P_00.050_lmax10_dl0.008_tmax100_dt00.0001_t_5.dat' using 3:7 with linespoints title "t = 5", \
