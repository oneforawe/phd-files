#filename: fit_Pdep_Cc.gnu
#See "changed.txt" for the 12th-order version of this file
fCc(x)  = C00 + C01*x + C02*x**2 + C03*x**3 + C04*x**4 + C05*x**5 + C06*x**6 + C07*x**7 + C08*x**8
fit fCc(x) 'Pdep_Cc.dat' using 3:1 via C00,C01,C02,C03,C04,C05,C06,C07,C08
update 'fit_Pdep_Cc.par' 'fit_Pdep_Cc.par'
set print 'fit_Pdep_Cc.par'
print "#filename: fit_Pdep_Cc.par\n\n", \
      "#Cc(P) fit parameters\n", \
      C00,"\n", \
      C01,"\n", \
      C02,"\n", \
      C03,"\n", \
      C04,"\n", \
      C05,"\n", \
      C06,"\n", \
      C07,"\n", \
      C08
unset print
set print 'fit_Pdep_Cc_results.dat'
print "filename: fit_Pdep_Cc_results.dat\n\n", \
      "Cc(P) fit parameters\n", \
      C00,"\n", \
      C01,"\n", \
      C02,"\n", \
      C03,"\n", \
      C04,"\n", \
      C05,"\n", \
      C06,"\n", \
      C07,"\n", \
      C08,"\n\n\n", \
      "If you want to plot the fit in gnuplot, use this:\n", \
      "#Defining the fit parameters and equation:\n", \
      "C00 = ",C00,"\n", \
      "C01 = ",C01,"\n", \
      "C02 = ",C02,"\n", \
      "C03 = ",C03,"\n", \
      "C04 = ",C04,"\n", \
      "C05 = ",C05,"\n", \
      "C06 = ",C06,"\n", \
      "C07 = ",C07,"\n", \
      "C08 = ",C08,"\n", \
      "fCc(x)  = C00 + C01*x + C02*x**2 + C03*x**3 + C04*x**4 + C05*x**5 + C06*x**6 + C07*x**7 + C08*x**8\n\n\n", \
      "So we have...\n", \
      "P\t","Cc(P)\n", \
      "0.050\t",fCc(0.050),"\n", \
      "1.646\t",fCc(1.646),"\n", \
      "7.328\t",fCc(7.328),"\n", \
      "15.031\t",fCc(15.031),"\n", \
      "18.180\t",fCc(18.180),"\n", \
      "22.533\t",fCc(22.533),"\n", \
      "25.868\t",fCc(25.868),"\n\n\n", \
      "Place the following in a vlt_CcK01Input.dat file and run vlt_K0cFind.c to find the K0c:\n\n", \
      "Cc\t","K01\n", \
      fCc(0.050),"\t",0.30,"\n", \
      fCc(1.646),"\t",0.31,"\n", \
      fCc(7.328),"\t",0.35,"\n", \
      fCc(15.031),"\t",0.40,"\n", \
      fCc(18.180),"\t",0.43,"\n", \
      fCc(22.533),"\t",0.47,"\n", \
      fCc(25.868),"\t",0.50,"\n"
unset print
