#filename: plot_3Dvlt_macro_Tv_lmax100_dl0.001_Op2_RhosoRhoVsTv.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_3Dvlt_macro_Tv_lmax100_dl0.001_Op2_RhosoRhoVsTv.ps'
set size 1.3,1.1

set title "^4He Superfluid Fraction {/Symbol-Oblique r}_s / {/Symbol-Oblique r} \n vs Exponentiated Temperature Variable {/Symbol-Oblique t}^{/Symbol-Oblique n}"

set ylabel "{/Symbol-Oblique r}_s / {/Symbol-Oblique r} (unitless)"
set xlabel "{/Symbol-Oblique t} = [{/Times-Italic 1 - T / T}_{/Symbol-Oblique l}{/Times-Italic (P)}] (unitless)"
#set xrange [0:4e-8]
#set yrange [0:3e-5]
set grid
set key outside right box width -16 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n}"
set rmargin 21

plot '3Dvlt_macro_Tv_Cc1.20_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.20 ", \
     '3Dvlt_macro_Tv_Cc1.10_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.10 ", \
     '3Dvlt_macro_Tv_Cc1.06_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.06 ", \
     '3Dvlt_macro_Tv_Cc1.05_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.05 ", \
     '3Dvlt_macro_Tv_Cc1.04_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.04 ", \
     '3Dvlt_macro_Tv_Cc1.03_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.03 ", \
     '3Dvlt_macro_Tv_Cc1.02_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.02 ", \
     '3Dvlt_macro_Tv_Cc1.01_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.01 ", \
     '3Dvlt_macro_Tv_Cc1.00_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 1.00 ", \
     '3Dvlt_macro_Tv_Cc0.99_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.99 ", \
     '3Dvlt_macro_Tv_Cc0.98_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.98 ", \
     '3Dvlt_macro_Tv_Cc0.97_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.97 ", \
     '3Dvlt_macro_Tv_Cc0.90_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.90 ", \
     '3Dvlt_macro_Tv_Cc0.80_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.80 ", \
     '3Dvlt_macro_Tv_Cc0.70_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.70 ", \
     '3Dvlt_macro_Tv_Cc0.60_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.60 ", \
     '3Dvlt_macro_Tv_Cc0.55_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.55 ", \
     '3Dvlt_macro_Tv_Cc0.50_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.50 ", \
     '3Dvlt_macro_Tv_Cc0.40_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.40 ", \
     '3Dvlt_macro_Tv_Cc0.30_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.30 ", \
     '3Dvlt_macro_Tv_Cc0.20_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.20 ", \
     '3Dvlt_macro_Tv_Cc0.10_lmax100_dl0.001_Op2.dat' using 2:6 with points title " {/Times-Italic C}_c = 0.10 ", \
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

