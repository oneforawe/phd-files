#filename: plot_3Dvlt_macro_Tv_lmax100_dl0.001_Op2_RhosoRhoVsTvNu.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_3Dvlt_macro_Tv_lmax100_dl0.001_Op2_RhosoRhoVsTvNu.ps'
set size 1.0,1.1

set title "^4He Superfluid Fraction {/Symbol-Oblique r}_s / {/Symbol-Oblique r} \n vs Exponentiated Temperature Variable {/Symbol-Oblique t}^{/Symbol-Oblique n}"

set ylabel "{/Symbol-Oblique r}_s / {/Symbol-Oblique r} (unitless)"
set xlabel "{/Symbol-Oblique t}^{/Symbol-Oblique n} = [{/Times-Italic 1 - T / T}_{/Symbol-Oblique l}{/Times-Italic (P)}]^{/Symbol-Oblique n} (unitless)"
#set xrange [0:3e-5]
#set yrange [0:1e-4]
set xrange [0:(3.6e-8)**0.671696337558]
set yrange [0:3e-5]
#set xrange [0:4.38e-4]
#set yrange [0:1e-3]
#set xrange [0:4e-5]
#set xrange [0:1e-5]
#set yrange [0:0.1]
set grid
set key outside right box width -16 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter 3Dvlt\\_macro.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.671696337558 "
set rmargin 35

plot '3Dvlt_macro_Tv_Cc1.20_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.20 ", \
     '3Dvlt_macro_Tv_Cc1.10_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.10 ", \
     '3Dvlt_macro_Tv_Cc1.06_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.06 ", \
     '3Dvlt_macro_Tv_Cc1.05_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.05 ", \
     '3Dvlt_macro_Tv_Cc1.04_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.04 ", \
     '3Dvlt_macro_Tv_Cc1.03_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.03 ", \
     '3Dvlt_macro_Tv_Cc1.02_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.02 ", \
     '3Dvlt_macro_Tv_Cc1.01_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.01 ", \
     '3Dvlt_macro_Tv_Cc1.00_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 1.00 ", \
     '3Dvlt_macro_Tv_Cc0.99_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.99 ", \
     '3Dvlt_macro_Tv_Cc0.98_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.98 ", \
     '3Dvlt_macro_Tv_Cc0.97_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.97 ", \
     '3Dvlt_macro_Tv_Cc0.90_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.90 ", \
     '3Dvlt_macro_Tv_Cc0.80_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.80 ", \
     '3Dvlt_macro_Tv_Cc0.70_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.70 ", \
     '3Dvlt_macro_Tv_Cc0.60_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.60 ", \
     '3Dvlt_macro_Tv_Cc0.55_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.55 ", \
     '3Dvlt_macro_Tv_Cc0.50_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.50 ", \
     '3Dvlt_macro_Tv_Cc0.40_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.40 ", \
     '3Dvlt_macro_Tv_Cc0.30_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.30 ", \
     '3Dvlt_macro_Tv_Cc0.20_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.20 ", \
     '3Dvlt_macro_Tv_Cc0.10_lmax100_dl0.001_Op2.dat' using ($2**0.671696337558):6 with points title " {/Times-Italic C}_c = 0.10 ", \
     4.07572341084034*x title " {/Times-Italic A}{/Symbol \242} = 4.07572 ", \
     3.9070765404645*x title " {/Times-Italic A}{/Symbol \242} = 3.90708 ", \
     3.83480479788876*x title " {/Times-Italic A}{/Symbol \242} = 3.83480 ", \
     3.81627218522264*x title " {/Times-Italic A}{/Symbol \242} = 3.81627 ", \
     3.79754395245331*x title " {/Times-Italic A}{/Symbol \242} = 3.79754 ", \
     3.77862453691557*x title " {/Times-Italic A}{/Symbol \242} = 3.77862 ", \
     3.7595022817212*x title " {/Times-Italic A}{/Symbol \242} = 3.75950 ", \
     3.74017591676006*x title " {/Times-Italic A}{/Symbol \242} = 3.74018 ", \
     3.72064546506519*x title " {/Times-Italic A}{/Symbol \242} = 3.72065 ", \
     3.70090496146901*x title " {/Times-Italic A}{/Symbol \242} = 3.70090 ", \
     3.68095101543859*x title " {/Times-Italic A}{/Symbol \242} = 3.68095 ", \
     3.66078114960291*x title " {/Times-Italic A}{/Symbol \242} = 3.66078 ", \
     3.51317332965005*x title " {/Times-Italic A}{/Symbol \242} = 3.51317 ", \
     3.28070937774996*x title " {/Times-Italic A}{/Symbol \242} = 3.28071 ", \
     3.01801889438969*x title " {/Times-Italic A}{/Symbol \242} = 3.01802 ", \
     3.259055851654*x title " {/Times-Italic A}{/Symbol \242} = 3.25906 ", \
     1.41936865845807*x title " {/Times-Italic A}{/Symbol \242} = 1.41937 ", \
     3.34472091631192*x title " {/Times-Italic A}{/Symbol \242} = 3.34472 ", \
     2.46763338387028*x title " {/Times-Italic A}{/Symbol \242} = 2.46763 ", \
     1.82935921757991*x title " {/Times-Italic A}{/Symbol \242} = 1.82936 ", \
     2.34013855348071*x title " {/Times-Italic A}{/Symbol \242} = 2.34014 ", \
     0.698072488272875*x title " {/Times-Italic A}{/Symbol \242} = 0.69807 "
