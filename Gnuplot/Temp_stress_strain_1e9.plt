#
clear
reset
pl 1/0 w l lw 8 lc "#000000" t "{/Helvetica-Bold=20 Zigzag}","1e9_XY_Shear_1K" u (($1-100000)*0.001*0.001):(-$2) w l lw 0.01 lc rgb "#f00000" notit
repl 1/0 w l dt 2 lw 8 lc "#000000" t "{/Helvetica-Bold=20 Armchair}","1e9_XY_Shear_1K" u (($1-100000)*0.001*0.001):(-$2) w p pt 1 ps 0.01 lc rgb "#f00000" notit
repl '1e9_XY_Shear_1K' u ($1-100000)*0.001*0.001:(-$2) notit "1 K"   w l lw 8 lc rgb "#d00000" 
repl '1e9_XY_Shear_100K' u ($1-100000)*0.001*0.001:(-$2) every 5 notit "100 K"   w l lw 8 lc rgb "#0000d0" 
repl '1e9_XY_Shear_200K' u ($1-100000)*0.001*0.001:(-$2) every 5 notit "200 K"   w l lw 8 lc rgb "#008000"  
repl '1e9_XY_Shear_300K' u ($1-100000)*0.001*0.001:(-$2) every 10 notit "300 K"   w l lw 8 lc rgb "#f000f0" 
repl '1e9_YX_Shear_1K' u ($1-100000)*0.001*0.001:(-$2) notit "1 K"  w l dt 2 lw 8 lc rgb "#d00000" 
repl '1e9_YX_Shear_100K' u ($1-100000)*0.001*0.001:(-$2) every 5 notit "100 K"   w l dt 2 lw 8 lc rgb "#0000d0" 
repl '1e9_YX_Shear_200K' u ($1-100000)*0.001*0.001:(-$2) every 5 notit "200 K"   w l dt 2 lw 8 lc rgb "#008000"  
set term post dl 0.3 col eps enh "Helvetica" 24
se ou "Stress_Strain_Temp_1e9.eps"
se xl "{/Helvetica-Bold=26 Shear strain}" offset 0,0.7
se yl "{/Helvetica-Bold=26 Shear stress (N/m)}" offset 2,0
se xr[0:0.45]
se yr[0:14]
se xtics 0.05 offset 0,0.5
se mxtics 10 
se ytics 2 offset 0.8,0
se mytics 10
se label 1 "{/Helvetica-Bold=26 1 K}" at 0.05,11.0 tc rgb "#f00000"
se label 2 "{/Helvetica-Bold=26 100 K}" at 0.05,10 tc rgb "#0000d0"
se label 3 "{/Helvetica-Bold=26 200 K }" at 0.05,9 tc rgb "#008000"
se label 4 "{/Helvetica-Bold=26 300 K}" at 0.05,8 tc rgb "#f000f0"
se label 5 "{/Helvetica-Bold=26 10^9 s^{-1}}" at 0.2,13 tc rgb "#000000"
se object 1 circle at 0.22,8.75 size 0.015 fc rgb "black" fs transparent solid 0.0  border lc rgb "black" lw 4 dt 3
se key top left tc variable samplen 3 spacing 1.3
#repl '1e9_YX_Shear_1K' u ($1-100000)*0.001*0.001:(-$2) notit "Armchair"  w l  lw 8 lc rgb "#0000d0" 
repl '1e9_YX_Shear_300K' u ($1-100000)*0.001*0.001:(-$2) every 10 notit "300 K"   w l dt 2 lw 8 lc rgb "#f000f0" 
