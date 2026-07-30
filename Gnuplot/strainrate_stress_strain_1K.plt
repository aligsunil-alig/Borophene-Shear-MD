#
clear
reset
pl 1/0 w l lw 8 lc "#000000" t "{/Helvetica-Bold=20 Zigzag}","1e9_XY_Shear_1K" u (($1-100000)*0.001*0.001):(-$2) w l lw 0.01 lc rgb "#f00000" notit
repl 1/0 w l dt 2 lw 8 lc "#000000" t "{/Helvetica-Bold=20 Armchair}","1e9_XY_Shear_1K" u (($1-100000)*0.001*0.001):(-$2) w p pt 1 ps 0.01 lc rgb "#f00000" notit
repl '1e9_XY_Shear_1K' u ($1-100000)*0.001*0.001:(-$2) every 1 notit "10^9 s^{-1}"   w l lw 8 lc rgb "#f00000" 
repl '1e9_YX_Shear_1K' u ($1-100000)*0.001*0.001:(-$2) every 5 notit "1e9/s"  w l dt 2 lw 8 lc rgb "#f00000"
repl '1e8_XY_Shear_1K' u ($1-100000)*0.0001*0.001:(-$2) every 100 notit "10^8 s^{-1}"   w l lw 8 lc rgb "#008000" 
repl '1e8_YX_Shear_1K' u ($1-100000)*0.0001*0.001:(-$2) every 100 notit "1e8/s" w l dt 2 lw 8 lc rgb "#008000" 
repl '1e7_XY_Shear_1K' u ($1-100000)*0.00001*0.001:(-$2) every 300 notit "10^7 s^{-1}"   w l lw 8 lc rgb "#0000f0" 
set term post dl 0.3 col eps enh "Helvetica" 24
se ou "Stress_Strain.eps"
se xl "{/Helvetica-Bold=26 Shear strain}" offset 0, 0.7
se yl "{/Helvetica-Bold=26 Shear stress (N/m)}" offset 1.5,0
se xr[0:0.45]
se yr[0:]
se xtics 0.05 offset 0,0.4
se mxtics 10
se ytics 2 offset 0.6,0
se mytics 10
se label 4 "{/Helvetica-Bold=26 1 K}" at 0.2,13 
se label 1 "{/Helvetica-Bold=26 10^9 s^{-1}}" at 0.05,10.5 tc rgb "#f00000"
se label 2 "{/Helvetica-Bold=26 10^8 s^{-1}}" at 0.05,9 tc rgb "#008000"
se label 3 "{/Helvetica-Bold=26 10^7 s^{-1}}" at 0.05,7.5 tc rgb "#0000f0"
se object 1 circle at 0.217,8.6 size 0.015 fc rgb "magenta" fs transparent solid 0.0  border lc rgb "magenta" lw 4 dt 3
se key top left tc variable samplen 3 spacing 1.4
repl '1e7_YX_Shear_1K' u ($1-100000)*0.00001*0.001:(-$2) every 300 notit "1e7/s"   w l dt 2 lw 8  lc rgb "#0000f0"
