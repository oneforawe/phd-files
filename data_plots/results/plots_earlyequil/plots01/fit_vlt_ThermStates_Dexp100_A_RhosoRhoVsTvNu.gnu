#filename: fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvNu.gnu
f01(x) = A01*x
f02(x) = A02*x
f03(x) = A03*x
f04(x) = A04*x
f05(x) = A05*x
f06(x) = A06*x
f07(x) = A07*x
f08(x) = A08*x
f09(x) = A09*x
f10(x) = A10*x
f11(x) = A11*x
f12(x) = A12*x
f13(x) = A13*x
f14(x) = A14*x
f15(x) = A15*x
f16(x) = A16*x
f17(x) = A17*x
f18(x) = A18*x
f19(x) = A19*x
f20(x) = A20*x
f21(x) = A21*x
f22(x) = A22*x
fit [0:1e-5] f01(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.20.dat' using ($2)**0.6716883:9 via A01
fit [0:1e-5] f02(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.10.dat' using ($2)**0.6716883:9 via A02
fit [0:1e-5] f03(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.06.dat' using ($2)**0.6716883:9 via A03
fit [0:1e-5] f04(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.05.dat' using ($2)**0.6716883:9 via A04
fit [0:1e-5] f05(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.04.dat' using ($2)**0.6716883:9 via A05
fit [0:1e-5] f06(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.03.dat' using ($2)**0.6716883:9 via A06
fit [0:1e-5] f07(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.02.dat' using ($2)**0.6716883:9 via A07
fit [0:1e-5] f08(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.01.dat' using ($2)**0.6716883:9 via A08
fit [0:1e-5] f09(x) 'vlt_ThermStates_Dexp100_A_beta_Cc1.00.dat' using ($2)**0.6716883:9 via A09
fit [0:1e-5] f10(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.99.dat' using ($2)**0.6716883:9 via A10
fit [0:1e-5] f11(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.98.dat' using ($2)**0.6716883:9 via A11
fit [0:1e-5] f12(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.97.dat' using ($2)**0.6716883:9 via A12
fit [0:1e-5] f13(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.90.dat' using ($2)**0.6716883:9 via A13
fit [0:1e-5] f14(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.80.dat' using ($2)**0.6716883:9 via A14
fit [0:1e-5] f15(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.70.dat' using ($2)**0.6716883:9 via A15
fit [0:1e-5] f16(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.60.dat' using ($2)**0.6716883:9 via A16
fit [0:1e-5] f17(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.55.dat' using ($2)**0.6716883:9 via A17
fit [0:1e-5] f18(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.50.dat' using ($2)**0.6716883:9 via A18
fit [0:1e-5] f19(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.40.dat' using ($2)**0.6716883:9 via A19
fit [0:1e-5] f20(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.30.dat' using ($2)**0.6716883:9 via A20
fit [0:1e-5] f21(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.20.dat' using ($2)**0.6716883:9 via A21
fit [0:1e-5] f22(x) 'vlt_ThermStates_Dexp100_A_beta_Cc0.10.dat' using ($2)**0.6716883:9 via A22
update 'fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvNu.par' 'fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvNu.par'
set print 'fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvNu.par'
print '     ',A01,'*x, \',"\n", \
      '     ',A02,'*x, \',"\n", \
      '     ',A03,'*x, \',"\n", \
      '     ',A04,'*x, \',"\n", \
      '     ',A05,'*x, \',"\n", \
      '     ',A06,'*x, \',"\n", \
      '     ',A07,'*x, \',"\n", \
      '     ',A08,'*x, \',"\n", \
      '     ',A09,'*x, \',"\n", \
      '     ',A10,'*x, \',"\n", \
      '     ',A11,'*x, \',"\n", \
      '     ',A12,'*x, \',"\n", \
      '     ',A13,'*x, \',"\n", \
      '     ',A14,'*x, \',"\n", \
      '     ',A15,'*x, \',"\n", \
      '     ',A16,'*x, \',"\n", \
      '     ',A17,'*x, \',"\n", \
      '     ',A18,'*x, \',"\n", \
      '     ',A19,'*x, \',"\n", \
      '     ',A20,'*x, \',"\n", \
      '     ',A21,'*x, \',"\n", \
      '     ',A22,'*x'
unset print
