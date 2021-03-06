#filename: fit_vlt_HeatCap_P_DK0_1e-07_CpVsTv_LogForm.gnu
reset
#FIT_LIMIT = 1e-5
f(x) = c*log10(x) + d
set print 'fit_vlt_HeatCap_P_DK0_1e-07_CpVsTv_LogForm.par'
print "c","\t","d","\t","(in c_P = c*log_10(1-T/T_lambda) + d)","\n"
fit [1:1e-6] f(x) 'vlt_HeatCap_P_00.050_DK0_1e-07.dat' using 1:2 via c,d
print c,"\t",d
fit [1:1e-6] f(x) 'vlt_HeatCap_P_01.646_DK0_1e-07.dat' using 1:2 via c,d
print c,"\t",d
fit [1:1e-6] f(x) 'vlt_HeatCap_P_07.328_DK0_1e-07.dat' using 1:2 via c,d
print c,"\t",d
fit [1:1e-6] f(x) 'vlt_HeatCap_P_15.031_DK0_1e-07.dat' using 1:2 via c,d
print c,"\t",d
fit [1:1e-6] f(x) 'vlt_HeatCap_P_18.180_DK0_1e-07.dat' using 1:2 via c,d
print c,"\t",d
fit [1:1e-6] f(x) 'vlt_HeatCap_P_22.533_DK0_1e-07.dat' using 1:2 via c,d
print c,"\t",d
fit [1:1e-6] f(x) 'vlt_HeatCap_P_25.868_DK0_1e-07.dat' using 1:2 via c,d
print c,"\t",d
unset print
