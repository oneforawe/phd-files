#filename: FitPdep_Tc.gnu
# Fit to find the pressure dependence of Tc

reset
f(x) = a+b*x+c*x**2+d*x**3+e*x**4
#FIT_LIMIT = 1e-3
fit f(x) 'FitPdep_Tc.dat' using 2:1 via a,b,c,d,e

update 'FitPdep_Tc.par' 'FitPdep_Tc.par'
set print 'FitPdep_Tc.par'
print "#filename: FitPdep_Tc.par\n\n", \
      "Tc(P) fit parameters (Tc = Tc00 + Tc01*P + Tc02*P^2 + Tc03*P^3 + Tc04*P^4 )\n", \
      "Tc00 = ",a,"\n", \
      "Tc01 = ",b,"\n", \
      "Tc02 = ",c,"\n", \
      "Tc03 = ",d,"\n", \
      "Tc04 = ",e,"\n"
unset print
