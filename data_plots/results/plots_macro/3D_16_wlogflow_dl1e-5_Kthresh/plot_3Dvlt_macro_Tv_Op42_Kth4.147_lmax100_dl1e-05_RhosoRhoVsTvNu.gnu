#filename: plot_3Dvlt_macro_Tv_Op42_Kth4.147_lmax100_dl1e-05_RhosoRhoVsTvNu.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_3Dvlt_macro_Tv_Op42_Kth4.147_lmax100_dl1e-05_RhosoRhoVsTvNu.ps'
set size 1.0,1.1

set title "^4He Superfluid Fraction {/Symbol-Oblique r}_s / {/Symbol-Oblique r} \n vs Exponentiated Temperature Variable {/Symbol-Oblique t}^{/Symbol-Oblique n}"

set ylabel "{/Symbol-Oblique r}_s / {/Symbol-Oblique r} (unitless)"
set xlabel "{/Symbol-Oblique t}^{/Symbol-Oblique n} = [{/Times-Italic 1 - T / T}_{/Symbol-Oblique l}{/Times-Italic (P)}]^{/Symbol-Oblique n} (unitless)"
#set xrange [0:3e-5]
#set yrange [0:1e-4]
set xrange [0:(3.6e-8)**0.671688352279845358]
set yrange [0:3e-5]
#set xrange [0:4.38e-4]
#set yrange [0:1e-3]
#set xrange [0:4e-5]
#set xrange [0:1e-5]
#set yrange [0:0.1]
set grid
set key outside right box width -16 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter 3Dvlt\\_macro.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.671688352279845358 "
set rmargin 35

plot '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.20_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.20 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.25_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.25 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.30_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.30 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.35_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.35 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.40_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.40 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.45_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.45 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.50_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.50 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.55_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.55 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.60_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.60 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.65_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.65 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.70_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.70 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.75_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.75 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.80_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.80 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.85_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.85 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.90_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.90 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc0.95_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 0.95 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc1.00_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 1.00 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc1.05_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 1.05 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc1.10_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 1.10 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc1.15_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 1.15 ", \
     '3Dvlt_macro_Tv_Op42_Kth4.147_Cc1.20_lmax100_dl1e-05.dat' using ($4**0.671688352279845358):10 with points title " {/Times-Italic C}_c = 1.20 ", \
     0.940711128589212*x title " {/Times-Italic A}{/Symbol \242} = 0.94071 ", \
     1.09769368309177*x title " {/Times-Italic A}{/Symbol \242} = 1.09769 ", \
     1.23691939513233*x title " {/Times-Italic A}{/Symbol \242} = 1.23692 ", \
     1.36206177161439*x title " {/Times-Italic A}{/Symbol \242} = 1.36206 ", \
     1.47570817156149*x title " {/Times-Italic A}{/Symbol \242} = 1.47571 ", \
     1.57976445143453*x title " {/Times-Italic A}{/Symbol \242} = 1.57976 ", \
     1.67568365458932*x title " {/Times-Italic A}{/Symbol \242} = 1.67568 ", \
     1.76460241378045*x title " {/Times-Italic A}{/Symbol \242} = 1.76460 ", \
     1.84743269349756*x title " {/Times-Italic A}{/Symbol \242} = 1.84743 ", \
     1.92491419680755*x title " {/Times-Italic A}{/Symbol \242} = 1.92491 ", \
     1.99766012923053*x title " {/Times-Italic A}{/Symbol \242} = 1.99766 ", \
     2.06618225029649*x title " {/Times-Italic A}{/Symbol \242} = 2.06618 ", \
     2.13091478691812*x title " {/Times-Italic A}{/Symbol \242} = 2.13091 ", \
     2.1922291950562*x title " {/Times-Italic A}{/Symbol \242} = 2.19223 ", \
     2.25044413880105*x title " {/Times-Italic A}{/Symbol \242} = 2.25044 ", \
     2.30583559705111*x title " {/Times-Italic A}{/Symbol \242} = 2.30584 ", \
     2.35864881216256*x title " {/Times-Italic A}{/Symbol \242} = 2.35865 ", \
     2.40909428312468*x title " {/Times-Italic A}{/Symbol \242} = 2.40909 ", \
     2.45735966632072*x title " {/Times-Italic A}{/Symbol \242} = 2.45736 ", \
     2.50361404556906*x title " {/Times-Italic A}{/Symbol \242} = 2.50361 ", \
     2.54800578482214*x title " {/Times-Italic A}{/Symbol \242} = 2.54801 "
