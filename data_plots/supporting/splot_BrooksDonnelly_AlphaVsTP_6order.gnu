#filename: splot_BrooksDonnelly_AlphaVsTP_6order.gnu
reset
set terminal postscript color eps enhanced
#set output 'splot_BrooksDonnelly_AlphaVsTP_6order.ps'
set output 'splot_fit_BrooksDonnelly_AlphaVsTP_6order.ps'
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
splot 'fit_BrooksDonnelly_AlphaVsTP_6order_3d.dat' with pm3d


#alph00 = -0.00132545289717059
#alph10 = 0.0179528212646871
#alph20 = -0.077814417132819
#alph30 = 0.148812649901035
#alph40 = -0.135348183536229
#alph50 = 0.0575865394848149
#alph60 = -0.00942356361818271
#alph01 = 0.00169244447357293
#alph11 = -0.021665108348567
#alph21 = 0.0875997904161722
#alph31 = -0.155075446681196
#alph41 = 0.133241381828243
#alph51 = -0.0547135426838175
#alph61 = 0.00857815766443886
#alph02 = -0.000402016588457985
#alph12 = 0.00500646576912193
#alph22 = -0.0196997735925578
#alph32 = 0.0343311248462808
#alph42 = -0.0295791060596021
#alph52 = 0.0123277022988963
#alph62 = -0.00198704719059122
#alph03 = 3.50822131497139e-05
#alph13 = -0.000417434943625329
#alph23 = 0.00157100359153513
#alph33 = -0.0026926366274236
#alph43 = 0.00238134017220718
#alph53 = -0.00104902823471905
#alph63 = 0.000181757286633977
#alph04 = -1.51074156982117e-06
#alph14 = 1.69620331490882e-05
#alph24 = -6.10050371264495e-05
#alph34 = 0.000107369015843627
#alph44 = -0.000106541517748163
#alph54 = 5.44104698460238e-05
#alph64 = -1.08691954908159e-05
#alph05 = 3.11237240810798e-08
#alph15 = -3.20093978259846e-07
#alph25 = 1.08841581501832e-06
#alph35 = -2.12545135194623e-06
#alph45 = 2.63498247456092e-06
#alph55 = -1.62910668019171e-06
#alph65 = 3.71525294733195e-07
#alph06 = -2.37222132465804e-10
#alph16 = 2.08583118201288e-09
#alph26 = -6.5282210389408e-09
#alph36 = 1.6933030216303e-08
#alph46 = -2.89786898905826e-08
#alph56 = 2.12469804642866e-08
#alph66 = -5.29362586788296e-09
#alph(x,y) = #alph00      + #alph10*x      + #alph20*x**2      + #alph30*x**3      + #alph40*x**4      + #alph50*x**5      + #alph60*x**6      + #alph01*y    + #alph11*x*y    + #alph21*x**2*y    + #alph31*x**3*y    + #alph41*x**4*y    + #alph51*x**5*y    + #alph61*x**6*y    + #alph02*y**2 + #alph12*x*y**2 + #alph22*x**2*y**2 + #alph32*x**3*y**2 + #alph42*x**4*y**2 + #alph52*x**5*y**2 + #alph62*x**6*y**2 + #alph03*y**3 + #alph13*x*y**3 + #alph23*x**2*y**3 + #alph33*x**3*y**3 + #alph43*x**4*y**3 + #alph53*x**5*y**3 + #alph63*x**6*y**3 + #alph04*y**4 + #alph14*x*y**4 + #alph24*x**2*y**4 + #alph34*x**3*y**4 + #alph44*x**4*y**4 + #alph54*x**5*y**4 + #alph64*x**6*y**4 + #alph05*y**5 + #alph15*x*y**5 + #alph25*x**2*y**5 + #alph35*x**3*y**5 + #alph45*x**4*y**5 + #alph55*x**5*y**5 + #alph65*x**6*y**5 + #alph06*y**6 + #alph16*x*y**6 + #alph26*x**2*y**6 + #alph36*x**3*y**6 + #alph46*x**4*y**6 + #alph56*x**5*y**6 + #alph66*x**6*y**6

#set pm3d
#splot #alph(x,y) with pm3d
