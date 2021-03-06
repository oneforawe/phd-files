#filename: splot_BrooksDonnelly_AlphaVsTP_5order.gnu
reset
set terminal postscript color eps enhanced
#set output 'splot_BrooksDonnelly_AlphaVsTP_5order.ps'
set output 'splot_fit_BrooksDonnelly_AlphaVsTP_5order.ps'
#set size 1.3,1

set title "^4He Thermal Expansion Coefficient {/Symbol-Oblique a} \n vs Temperature {/Times-Italic T} and Pressure {/Times-Italic P} "

set zlabel "{/Symbol-Oblique a} (K^{-1})"
set xlabel "{/Times-Italic P} (bar)"
set ylabel "{/Times-Italic T} (K)"
#set logscale x
set xrange [0:2.5]
set yrange [0:30]
set zrange [-0.1:0.01]
#set grid
#set key top box spacing 1.2 title " Data from Brooks/Donnelly "
set key top box spacing 1.2 title " Fit of data from Brooks/Donnelly "
set lmargin 5

set pm3d
splot 'fit_BrooksDonnelly_AlphaVsTP_5order_3d.dat' with pm3d


#alph00 = 0.00120673408479773
#alph10 = -0.0126061525392927
#alph20 = 0.0382298396193444
#alph30 = -0.0449709473723542
#alph40 = 0.0231844768884579
#alph50 = -0.00476097415370813
#alph01 = -0.000841338800841999
#alph11 = 0.00805391043840071
#alph21 = -0.0215426453874764
#alph31 = 0.0221989923024447
#alph41 = -0.00972810221599954
#alph51 = 0.0014345549584231
#alph02 = 0.000194561608318754
#alph12 = -0.00180688452961725
#alph22 = 0.00456062720160694
#alph32 = -0.00424504943631106
#alph42 = 0.00154591027212502
#alph52 = -0.000164425646756456
#alph03 = -1.47852368829067e-05
#alph13 = 0.000126867589339339
#alph23 = -0.000267739403505057
#alph33 = 0.000152633572601404
#alph43 = 1.71039522564236e-05
#alph53 = -2.27420415331646e-05
#alph04 = 5.22077062736666e-07
#alph14 = -4.16773389473999e-06
#alph24 = 7.07017493445762e-06
#alph34 = -1.78946409468883e-07
#alph44 = -4.79259212839344e-06
#alph54 = 1.92189668959333e-06
#alph05 = -6.97627915268333e-09
#alph15 = 5.19247562282404e-08
#alph25 = -6.51831746916322e-08
#alph35 = -6.32199888822147e-08
#alph45 = 1.18516241437886e-07
#alph55 = -4.08341076950598e-08
#alph(x,y) = #alph00      + #alph10*x      + #alph20*x**2      + #alph30*x**3      + #alph40*x**4      + #alph50*x**5      + #alph01*y    + #alph11*x*y    + #alph21*x**2*y    + #alph31*x**3*y    + #alph41*x**4*y    + #alph51*x**5*y    + #alph02*y**2 + #alph12*x*y**2 + #alph22*x**2*y**2 + #alph32*x**3*y**2 + #alph42*x**4*y**2 + #alph52*x**5*y**2 + #alph03*y**3 + #alph13*x*y**3 + #alph23*x**2*y**3 + #alph33*x**3*y**3 + #alph43*x**4*y**3 + #alph53*x**5*y**3 + #alph04*y**4 + #alph14*x*y**4 + #alph24*x**2*y**4 + #alph34*x**3*y**4 + #alph44*x**4*y**4 + #alph54*x**5*y**4 + #alph05*y**5 + #alph15*x*y**5 + #alph25*x**2*y**5 + #alph35*x**3*y**5 + #alph45*x**4*y**5 + #alph55*x**5*y**5

#set pm3d
#splot #alph(x,y) with pm3d
