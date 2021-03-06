#filename: plot_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvNu.gnu
reset
set terminal postscript color eps enhanced
set output 'plot_vlt_ThermStates_Dexp100_A_RhosoRhoVsTvNu.ps'
set size 1.3,1.1

set title "^4He Superfluid Fraction {/Symbol-Oblique r}_s / {/Symbol-Oblique r} \n vs Exponentiated Temperature Variable {/Symbol-Oblique t}^{/Symbol-Oblique n}"

set ylabel "{/Symbol-Oblique r}_s / {/Symbol-Oblique r} (unitless)"
set xlabel "{/Symbol-Oblique t}^{/Symbol-Oblique n} = [{/Times-Italic 1 - T / T}_{/Symbol-Oblique l}{/Times-Italic (P)}]^{/Symbol-Oblique n} (unitless)"
#set xrange [0:4e-5]
#set xrange [0:4.38e-4]
#set yrange [0:3e-5]
set grid
set key outside right box width -20 height 0.5 spacing 1.2 title " Calculated from {/CM-Typewriter vlt\\_ThermStates.c} \n Fit: {/Symbol-Oblique r}_s / {/Symbol-Oblique r} = {/Times-Italic A}{/Symbol \242}{/Symbol-Oblique t}^{/Symbol-Oblique n} \n {/Symbol-Oblique n} = 0.6716883522798452"
set rmargin 18

plot 'vlt_ThermStates_Dexp100_A_Cc1.20.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.20 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.10.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.10 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.06.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.06 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.05.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.05 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.04.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.04 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.03.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.03 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.02.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.02 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.01.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.01 ", \
     'vlt_ThermStates_Dexp100_A_Cc1.00.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 1.00 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.99.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.99 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.98.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.98 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.97.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.97 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.90.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.90 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.80.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.80 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.70.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.70 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.60.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.60 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.55.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.55 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.50.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.50 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.40.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.40 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.30.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.30 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.20.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.20 ", \
     'vlt_ThermStates_Dexp100_A_Cc0.10.dat' using ($2**0.6716883522798452):8 with points title " {/Times-Italic C}_c = 0.10 ", \
     2.54752133171441*x title " {/Times-Italic A}{/Symbol \242} = 2.54752 ", \
     2.45688842265775*x title " {/Times-Italic A}{/Symbol \242} = 2.45689 ", \
     2.41845739478421*x title " {/Times-Italic A}{/Symbol \242} = 2.41846 ", \
     2.40863256472317*x title " {/Times-Italic A}{/Symbol \242} = 2.40863 ", \
     2.39872565752255*x title " {/Times-Italic A}{/Symbol \242} = 2.39873 ", \
     2.38873513701844*x title " {/Times-Italic A}{/Symbol \242} = 2.38874 ", \
     2.37864896879619*x title " {/Times-Italic A}{/Symbol \242} = 2.37865 ", \
     2.36847023394493*x title " {/Times-Italic A}{/Symbol \242} = 2.36847 ", \
     2.35820009049208*x title " {/Times-Italic A}{/Symbol \242} = 2.35820 ", \
     2.34783609609295*x title " {/Times-Italic A}{/Symbol \242} = 2.34784 ", \
     2.33737649594887*x title " {/Times-Italic A}{/Symbol \242} = 2.33738 ", \
     2.32681489447351*x title " {/Times-Italic A}{/Symbol \242} = 2.32681 ", \
     2.25001593388393*x title " {/Times-Italic A}{/Symbol \242} = 2.25002 ", \
     2.13051113264748*x title " {/Times-Italic A}{/Symbol \242} = 2.13051 ", \
     1.99728264555925*x title " {/Times-Italic A}{/Symbol \242} = 1.99728 ", \
     1.84708671534601*x title " {/Times-Italic A}{/Symbol \242} = 1.84709 ", \
     1.76427384440652*x title " {/Times-Italic A}{/Symbol \242} = 1.76427 ", \
     1.67537208227608*x title " {/Times-Italic A}{/Symbol \242} = 1.67537 ", \
     1.47543594219411*x title " {/Times-Italic A}{/Symbol \242} = 1.47544 ", \
     1.23669326864058*x title " {/Times-Italic A}{/Symbol \242} = 1.23669 ", \
     0.940540914286037*x title " {/Times-Italic A}{/Symbol \242} = 0.94054 ", \
     0.547503621170097*x title " {/Times-Italic A}{/Symbol \242} = 0.54750 "
