#filename: fit_vlt_ThermStates_lmax100_A_RhosoRhoVsTv.gnu
# THIS FIT FILE WON'T COMPILE CORRECTLY FOR SOME REASON !!!!  (but the other file compiles fine: fit_vlt_ThermStates_lmax100_A_RhosoRhoVsTvNu.gnu)
# It'll compile if you delete all but one (say, the last) function and associated code.
reset
f01(x) = A01*x**nu01
f02(x) = A02*x**nu02
f03(x) = A03*x**nu03
f04(x) = A04*x**nu04
f05(x) = A05*x**nu05
f06(x) = A06*x**nu06
f07(x) = A07*x**nu07
f08(x) = A08*x**nu08
f09(x) = A09*x**nu09
f10(x) = A10*x**nu10
f11(x) = A11*x**nu11
f12(x) = A12*x**nu12
f13(x) = A13*x**nu13
f14(x) = A14*x**nu14
f15(x) = A15*x**nu15
f16(x) = A16*x**nu16
f17(x) = A17*x**nu17
f18(x) = A18*x**nu18
f19(x) = A19*x**nu19
f20(x) = A20*x**nu20
f21(x) = A21*x**nu21
fit [0:3.6e-8] f01(x) 'vlt_ThermStates_lmax100_A_Cc1.20.dat' using 2:8 via A01,nu01
fit [0:3.6e-8] f02(x) 'vlt_ThermStates_lmax100_A_Cc1.10.dat' using 2:8 via A02,nu02
fit [0:3.6e-8] f03(x) 'vlt_ThermStates_lmax100_A_Cc1.06.dat' using 2:8 via A03,nu03
fit [0:3.6e-8] f04(x) 'vlt_ThermStates_lmax100_A_Cc1.05.dat' using 2:8 via A04,nu04
fit [0:3.6e-8] f05(x) 'vlt_ThermStates_lmax100_A_Cc1.04.dat' using 2:8 via A05,nu05
fit [0:3.6e-8] f06(x) 'vlt_ThermStates_lmax100_A_Cc1.03.dat' using 2:8 via A06,nu06
fit [0:3.6e-8] f07(x) 'vlt_ThermStates_lmax100_A_Cc1.02.dat' using 2:8 via A07,nu07
fit [0:3.6e-8] f08(x) 'vlt_ThermStates_lmax100_A_Cc1.01.dat' using 2:8 via A08,nu08
fit [0:3.6e-8] f09(x) 'vlt_ThermStates_lmax100_A_Cc1.00.dat' using 2:8 via A09,nu09
fit [0:3.6e-8] f10(x) 'vlt_ThermStates_lmax100_A_Cc0.99.dat' using 2:8 via A10,nu10
fit [0:3.6e-8] f11(x) 'vlt_ThermStates_lmax100_A_Cc0.98.dat' using 2:8 via A11,nu11
fit [0:3.6e-8] f12(x) 'vlt_ThermStates_lmax100_A_Cc0.97.dat' using 2:8 via A12,nu12
fit [0:3.6e-8] f13(x) 'vlt_ThermStates_lmax100_A_Cc0.90.dat' using 2:8 via A13,nu13
fit [0:3.6e-8] f14(x) 'vlt_ThermStates_lmax100_A_Cc0.80.dat' using 2:8 via A14,nu14
fit [0:3.6e-8] f15(x) 'vlt_ThermStates_lmax100_A_Cc0.70.dat' using 2:8 via A15,nu15
fit [0:3.6e-8] f16(x) 'vlt_ThermStates_lmax100_A_Cc0.60.dat' using 2:8 via A16,nu16
fit [0:3.6e-8] f17(x) 'vlt_ThermStates_lmax100_A_Cc0.55.dat' using 2:8 via A17,nu17
fit [0:3.6e-8] f18(x) 'vlt_ThermStates_lmax100_A_Cc0.50.dat' using 2:8 via A18,nu18
fit [0:3.6e-8] f19(x) 'vlt_ThermStates_lmax100_A_Cc0.40.dat' using 2:8 via A19,nu19
fit [0:3.6e-8] f20(x) 'vlt_ThermStates_lmax100_A_Cc0.30.dat' using 2:8 via A20,nu20
fit [0:3.6e-8] f21(x) 'vlt_ThermStates_lmax100_A_Cc0.20.dat' using 2:8 via A21,nu21
update 'fit_vlt_ThermStates_lmax100_A_RhosoRhoVsTv.par' 'fit_vlt_ThermStates_lmax100_A_RhosoRhoVsTv.par'
set print 'fit_vlt_ThermStates_lmax100_A_RhosoRhoVsTv.par'
print A01,"\t",nu01,"\n", \
      A02,"\t",nu02,"\n", \
      A03,"\t",nu03,"\n", \
      A04,"\t",nu04,"\n", \
      A05,"\t",nu05,"\n", \
      A06,"\t",nu06,"\n", \
      A07,"\t",nu07,"\n", \
      A08,"\t",nu08,"\n", \
      A09,"\t",nu09,"\n", \
      A10,"\t",nu10,"\n", \
      A11,"\t",nu11,"\n", \
      A12,"\t",nu12,"\n", \
      A13,"\t",nu13,"\n", \
      A14,"\t",nu14,"\n", \
      A15,"\t",nu15,"\n", \
      A16,"\t",nu16,"\n", \
      A17,"\t",nu17,"\n", \
      A18,"\t",nu18,"\n", \
      A19,"\t",nu19,"\n", \
      A20,"\t",nu20,"\n", \
      A21,"\t",nu21,"\n\n", \
      '     ',A01,'*x**',nu01,' title " ',sprintf("%0.5f",A01),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu01),'} ", \',"\n", \
      '     ',A02,'*x**',nu02,' title " ',sprintf("%0.5f",A02),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu02),'} ", \',"\n", \
      '     ',A03,'*x**',nu03,' title " ',sprintf("%0.5f",A03),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu03),'} ", \',"\n", \
      '     ',A04,'*x**',nu04,' title " ',sprintf("%0.5f",A04),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu04),'} ", \',"\n", \
      '     ',A05,'*x**',nu05,' title " ',sprintf("%0.5f",A05),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu05),'} ", \',"\n", \
      '     ',A06,'*x**',nu06,' title " ',sprintf("%0.5f",A06),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu06),'} ", \',"\n", \
      '     ',A07,'*x**',nu07,' title " ',sprintf("%0.5f",A07),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu07),'} ", \',"\n", \
      '     ',A08,'*x**',nu08,' title " ',sprintf("%0.5f",A08),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu08),'} ", \',"\n", \
      '     ',A09,'*x**',nu09,' title " ',sprintf("%0.5f",A09),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu09),'} ", \',"\n", \
      '     ',A10,'*x**',nu10,' title " ',sprintf("%0.5f",A10),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu10),'} ", \',"\n", \
      '     ',A11,'*x**',nu11,' title " ',sprintf("%0.5f",A11),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu11),'} ", \',"\n", \
      '     ',A12,'*x**',nu12,' title " ',sprintf("%0.5f",A12),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu12),'} ", \',"\n", \
      '     ',A13,'*x**',nu13,' title " ',sprintf("%0.5f",A13),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu13),'} ", \',"\n", \
      '     ',A14,'*x**',nu14,' title " ',sprintf("%0.5f",A14),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu14),'} ", \',"\n", \
      '     ',A15,'*x**',nu15,' title " ',sprintf("%0.5f",A15),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu15),'} ", \',"\n", \
      '     ',A16,'*x**',nu16,' title " ',sprintf("%0.5f",A16),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu16),'} ", \',"\n", \
      '     ',A17,'*x**',nu17,' title " ',sprintf("%0.5f",A17),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu17),'} ", \',"\n", \
      '     ',A18,'*x**',nu18,' title " ',sprintf("%0.5f",A18),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu18),'} ", \',"\n", \
      '     ',A19,'*x**',nu19,' title " ',sprintf("%0.5f",A19),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu19),'} ", \',"\n", \
      '     ',A20,'*x**',nu20,' title " ',sprintf("%0.5f",A20),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu20),'} ", \',"\n", \
      '     ',A21,'*x**',nu21,' title " ',sprintf("%0.5f",A21),'*{/Symbol-Oblique t}^{',sprintf("%0.6f",nu21),'} "'
unset print
