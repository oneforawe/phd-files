#filename: fit_3Dvlt_macro_cp_DK05e-07_i47_CpVsTv_LogForm.gnu
reset
#FIT_LIMIT = 1e-5

# f(x) = c*log(x) + d
f1(x) = c1*log(x) + d1
f2(x) = c2*log(x) + d2
f3(x) = c3*log(x) + d3
f4(x) = c4*log(x) + d4
f5(x) = c5*log(x) + d5
f6(x) = c6*log(x) + d6
f7(x) = c7*log(x) + d7

fit [1e-3:5e-6] f1(x) '3Dvlt_macro_cp_P00.050_DK05e-07_i47.dat' using 2:9 via c1,d1
fit [1e-3:5e-6] f2(x) '3Dvlt_macro_cp_P01.646_DK05e-07_i47.dat' using 2:9 via c2,d2
fit [1e-3:5e-6] f3(x) '3Dvlt_macro_cp_P07.328_DK05e-07_i47.dat' using 2:9 via c3,d3
fit [1e-3:5e-6] f4(x) '3Dvlt_macro_cp_P15.031_DK05e-07_i47.dat' using 2:9 via c4,d4
fit [1e-3:5e-6] f5(x) '3Dvlt_macro_cp_P18.180_DK05e-07_i47.dat' using 2:9 via c5,d5
fit [1e-3:5e-6] f6(x) '3Dvlt_macro_cp_P22.533_DK05e-07_i47.dat' using 2:9 via c6,d6
fit [1e-3:5e-6] f7(x) '3Dvlt_macro_cp_P25.868_DK05e-07_i47.dat' using 2:9 via c7,d7

set print 'fit_3Dvlt_macro_cp_DK05e-07_i47_CpVsTv_LogForm.par'
print "filename: fit_3Dvlt_macro_cp_DK05e-07_i47_CpVsTv_LogForm.par\n\n", \
      "c","\t","d","\t","(in c_P = c*log(1-T/T_lambda) + d)","\n", \
      c1,"\t",d1,"\n", \
      c2,"\t",d2,"\n", \
      c3,"\t",d3,"\n", \
      c4,"\t",d4,"\n", \
      c5,"\t",d5,"\n", \
      c6,"\t",d6,"\n", \
      c7,"\t",d7,"\n\n\n\n", \
      "If you want to plot the fits in gnuplot (with plot_3Dvlt_macro_cp_PDK05e-07_i47_CpVsTv_AhlersCompare.gnu), use this:\n", \
      '     ', c1, '*log(x) + ', d1, ' ls 0 title " Fits ", \',"\n", \
      '     ', c2, '*log(x) + ', d2, ' ls 0 notitle, \',"\n", \
      '     ', c3, '*log(x) + ', d3, ' ls 0 notitle, \',"\n", \
      '     ', c4, '*log(x) + ', d4, ' ls 0 notitle, \',"\n", \
      '     ', c5, '*log(x) + ', d5, ' ls 0 notitle, \',"\n", \
      '     ', c6, '*log(x) + ', d6, ' ls 0 notitle, \',"\n", \
      '     ', c7, '*log(x) + ', d7, ' ls 0 notitle'
unset print
