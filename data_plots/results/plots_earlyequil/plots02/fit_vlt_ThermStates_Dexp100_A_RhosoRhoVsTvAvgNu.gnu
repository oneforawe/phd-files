#filename: fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvAvgNu.gnu
# this file depends on the results of fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTv.gnu
f01(x) = A01*x**0.67168386
f02(x) = A02*x**0.67168386
f03(x) = A03*x**0.67168386
f04(x) = A04*x**0.67168386
f05(x) = A05*x**0.67168386
f06(x) = A06*x**0.67168386
f07(x) = A07*x**0.67168386
f08(x) = A08*x**0.67168386
f09(x) = A09*x**0.67168386
f10(x) = A10*x**0.67168386
f11(x) = A11*x**0.67168386
f12(x) = A12*x**0.67168386
f13(x) = A13*x**0.67168386
f14(x) = A14*x**0.67168386
f15(x) = A15*x**0.67168386
f16(x) = A16*x**0.67168386
f17(x) = A17*x**0.67168386
f18(x) = A18*x**0.67168386
f19(x) = A19*x**0.67168386
f20(x) = A20*x**0.67168386
f21(x) = A21*x**0.67168386
f22(x) = A22*x**0.67168386
fit [0:1e-5] f01(x) 'vlt_ThermStates_Dexp100_A_Cc1.20.dat' using 2:8 via A01
fit [0:1e-5] f02(x) 'vlt_ThermStates_Dexp100_A_Cc1.10.dat' using 2:8 via A02
fit [0:1e-5] f03(x) 'vlt_ThermStates_Dexp100_A_Cc1.06.dat' using 2:8 via A03
fit [0:1e-5] f04(x) 'vlt_ThermStates_Dexp100_A_Cc1.05.dat' using 2:8 via A04
fit [0:1e-5] f05(x) 'vlt_ThermStates_Dexp100_A_Cc1.04.dat' using 2:8 via A05
fit [0:1e-5] f06(x) 'vlt_ThermStates_Dexp100_A_Cc1.03.dat' using 2:8 via A06
fit [0:1e-5] f07(x) 'vlt_ThermStates_Dexp100_A_Cc1.02.dat' using 2:8 via A07
fit [0:1e-5] f08(x) 'vlt_ThermStates_Dexp100_A_Cc1.01.dat' using 2:8 via A08
fit [0:1e-5] f09(x) 'vlt_ThermStates_Dexp100_A_Cc1.00.dat' using 2:8 via A09
fit [0:1e-5] f10(x) 'vlt_ThermStates_Dexp100_A_Cc0.99.dat' using 2:8 via A10
fit [0:1e-5] f11(x) 'vlt_ThermStates_Dexp100_A_Cc0.98.dat' using 2:8 via A11
fit [0:1e-5] f12(x) 'vlt_ThermStates_Dexp100_A_Cc0.97.dat' using 2:8 via A12
fit [0:1e-5] f13(x) 'vlt_ThermStates_Dexp100_A_Cc0.90.dat' using 2:8 via A13
fit [0:1e-5] f14(x) 'vlt_ThermStates_Dexp100_A_Cc0.80.dat' using 2:8 via A14
fit [0:1e-5] f15(x) 'vlt_ThermStates_Dexp100_A_Cc0.70.dat' using 2:8 via A15
fit [0:1e-5] f16(x) 'vlt_ThermStates_Dexp100_A_Cc0.60.dat' using 2:8 via A16
fit [0:1e-5] f17(x) 'vlt_ThermStates_Dexp100_A_Cc0.55.dat' using 2:8 via A17
fit [0:1e-5] f18(x) 'vlt_ThermStates_Dexp100_A_Cc0.50.dat' using 2:8 via A18
fit [0:1e-5] f19(x) 'vlt_ThermStates_Dexp100_A_Cc0.40.dat' using 2:8 via A19
fit [0:1e-5] f20(x) 'vlt_ThermStates_Dexp100_A_Cc0.30.dat' using 2:8 via A20
fit [0:1e-5] f21(x) 'vlt_ThermStates_Dexp100_A_Cc0.20.dat' using 2:8 via A21
fit [0:1e-5] f22(x) 'vlt_ThermStates_Dexp100_A_Cc0.10.dat' using 2:8 via A22
update 'fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvAvgNu.par' 'fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvAvgNu.par'
set print 'fit_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvAvgNu.par'
print A01,"\n", \
      A02,"\n", \
      A03,"\n", \
      A04,"\n", \
      A05,"\n", \
      A06,"\n", \
      A07,"\n", \
      A08,"\n", \
      A09,"\n", \
      A10,"\n", \
      A11,"\n", \
      A12,"\n", \
      A13,"\n", \
      A14,"\n", \
      A15,"\n", \
      A16,"\n", \
      A17,"\n", \
      A18,"\n", \
      A19,"\n", \
      A20,"\n", \
      A21,"\n", \
      A22,"\n\n", \
      '     ',A01,'*x title " ',sprintf("%0.5f",A01),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A02,'*x title " ',sprintf("%0.5f",A02),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A03,'*x title " ',sprintf("%0.5f",A03),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A04,'*x title " ',sprintf("%0.5f",A04),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A05,'*x title " ',sprintf("%0.5f",A05),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A06,'*x title " ',sprintf("%0.5f",A06),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A07,'*x title " ',sprintf("%0.5f",A07),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A08,'*x title " ',sprintf("%0.5f",A08),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A09,'*x title " ',sprintf("%0.5f",A09),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A10,'*x title " ',sprintf("%0.5f",A10),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A11,'*x title " ',sprintf("%0.5f",A11),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A12,'*x title " ',sprintf("%0.5f",A12),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A13,'*x title " ',sprintf("%0.5f",A13),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A14,'*x title " ',sprintf("%0.5f",A14),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A15,'*x title " ',sprintf("%0.5f",A15),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A16,'*x title " ',sprintf("%0.5f",A16),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A17,'*x title " ',sprintf("%0.5f",A17),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A18,'*x title " ',sprintf("%0.5f",A18),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A19,'*x title " ',sprintf("%0.5f",A19),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A20,'*x title " ',sprintf("%0.5f",A20),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A21,'*x title " ',sprintf("%0.5f",A21),'*{/Symbol-Oblique t}^{0.67168386} ", \',"\n", \
      '     ',A22,'*x title " ',sprintf("%0.5f",A22),'*{/Symbol-Oblique t}^{0.67168386} "'
unset print
