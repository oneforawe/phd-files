#filename: plot_vlt_ThermStates_Dexp100_A_RhosoRhoVsTv.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_vlt_ThermStates_Dexp100_A_RhosoRhoVsTv.ps'
set size 1.3,1.1

set title "^4He "Helmholtz parameter" {/Times-Italic e} vs Length Scale {/Times-Italic l}"

set ylabel "{/Symbol-Oblique r}_s / {/Symbol-Oblique r} (unitless)"
set xlabel "{/Symbol-Oblique t} = [{/Times-Italic 1 - T / T}_{/Symbol-Oblique l}{/Times-Italic (P)}] (unitless)"
#set xrange [0:4e-8]
#set yrange [0:3e-5]
set grid
set key outside right box width -16 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n}"
set rmargin 21

plot 'vlt_ThermStates_Dexp100_A_Cc1.20.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.20 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.10.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.10 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.06.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.06 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.05.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.05 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.04.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.04 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.03.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.03 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.02.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.02 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.01.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.01 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.00.dat' using 2:8 with points title " {/Times-Italic C}_c = 1.00 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.99.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.99 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.98.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.98 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.97.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.97 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.90.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.90 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.80.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.80 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.70.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.70 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.60.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.60 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.55.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.55 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.50.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.50 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.40.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.40 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.30.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.30 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.20.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.20 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.10.dat' using 2:8 with points title " {/Times-Italic C}_c = 0.10 ", \
     2.54747506101744*x**0.67168685707507 title " 2.54748*{/Symbol-Oblique t}^{0.671687} ", \
     2.45679237380661*x**0.671685134000311 title " 2.45679*{/Symbol-Oblique t}^{0.671685} ", \
     2.41843602973407*x**0.671687625043027 title " 2.41844*{/Symbol-Oblique t}^{0.671688} ", \
     2.40853162213389*x**0.671684902260578 title " 2.40853*{/Symbol-Oblique t}^{0.671685} ", \
     2.3986266215537*x**0.671684953446481 title " 2.39863*{/Symbol-Oblique t}^{0.671685} ", \
     2.38872232885108*x**0.671687910883687 title " 2.38872*{/Symbol-Oblique t}^{0.671688} ", \
     2.37862667447326*x**0.671687580711435 title " 2.37863*{/Symbol-Oblique t}^{0.671688} ", \
     2.36842816768112*x**0.671686890175443 title " 2.36843*{/Symbol-Oblique t}^{0.671687} ", \
     2.35815086912014*x**0.671686634030767 title " 2.35815*{/Symbol-Oblique t}^{0.671687} ", \
     2.34779530267585*x**0.67168692195527 title " 2.34780*{/Symbol-Oblique t}^{0.671687} ", \
     2.33735997267139*x**0.671687770340804 title " 2.33736*{/Symbol-Oblique t}^{0.671688} ", \
     2.32675997184314*x**0.671686409144073 title " 2.32676*{/Symbol-Oblique t}^{0.671686} ", \
     2.249964409563*x**0.671686467154714 title " 2.24996*{/Symbol-Oblique t}^{0.671686} ", \
     2.13046988107717*x**0.671686758349257 title " 2.13047*{/Symbol-Oblique t}^{0.671687} ", \
     1.99723458428688*x**0.671686371348192 title " 1.99723*{/Symbol-Oblique t}^{0.671686} ", \
     1.84697118860517*x**0.671683203348517 title " 1.84697*{/Symbol-Oblique t}^{0.671683} ", \
     1.76413190317785*x**0.671681729078397 title " 1.76413*{/Symbol-Oblique t}^{0.671682} ", \
     1.67521908171355*x**0.671680834157191 title " 1.67522*{/Symbol-Oblique t}^{0.671681} ", \
     1.47525533048758*x**0.671678274617044 title " 1.47526*{/Symbol-Oblique t}^{0.671678} ", \
     1.23651394412774*x**0.6716764146807 title " 1.23651*{/Symbol-Oblique t}^{0.671676} ", \
     0.94038333860611*x**0.671674559368929 title " 0.94038*{/Symbol-Oblique t}^{0.671675} ", \
     0.547385925579202*x**0.671670654116521 title " 0.54739*{/Symbol-Oblique t}^{0.671671} "
