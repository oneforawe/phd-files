#filename: fit_vlt_HeatCap_P_DK0_1e-07_CapVsTv_log_AhlersCompare_adjust.gnu
reset
#FIT_LIMIT = 1e-5
f(x) = a*log10(x) + b
set print 'fit_vlt_HeatCap_P_DK0_1e-07_CapVsTv_log_AhlersCompare_adjust.par'
print "a","\t","b","\t","(in C_V = a*log_10(1-T/T_lambda) + b)","\n"
fit [1:10**(-6)] f(x) 'vlt_HeatCap_P_00.050bar_DK0_1e-07_adjust.dat' using 1:2 via a,b
print a,"\t",b
fit [1:10**(-6)] f(x) 'vlt_HeatCap_P_01.646bar_DK0_1e-07_adjust.dat' using 1:2 via a,b
print a,"\t",b
fit [1:10**(-6)] f(x) 'vlt_HeatCap_P_07.328bar_DK0_1e-07_adjust.dat' using 1:2 via a,b
print a,"\t",b
fit [1:10**(-6)] f(x) 'vlt_HeatCap_P_15.031bar_DK0_1e-07_adjust.dat' using 1:2 via a,b
print a,"\t",b
fit [1:10**(-6)] f(x) 'vlt_HeatCap_P_18.180bar_DK0_1e-07_adjust.dat' using 1:2 via a,b
print a,"\t",b
fit [1:10**(-6)] f(x) 'vlt_HeatCap_P_22.533bar_DK0_1e-07_adjust.dat' using 1:2 via a,b
print a,"\t",b
fit [1:10**(-6)] f(x) 'vlt_HeatCap_P_25.868bar_DK0_1e-07_adjust.dat' using 1:2 via a,b
print a,"\t",b
unset print
