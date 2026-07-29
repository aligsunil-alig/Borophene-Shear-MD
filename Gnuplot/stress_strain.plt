#
clear
reset
pl '1e9_XY_Shear_1K' u ($1-100000)*0.001*0.001:(-$8) tit "Zigzag"   w l lw 8 lc rgb "#d00000" 
set term post col dl 0.3 eps enh "Helvetica" 24
se ou "Stress_Strain_1K_1e9.eps"
se xl "{/Helvetica-Bold=26 Shear strain}" offset 0,0.5
se yl "{/Helvetica-Bold=26 Shear stress (N/m)}" offset 2,0
se xr[0:0.45]
se yr[0:14]
se xtics 0.05 offset 0,0.5
se mxtics 10 
se ytics 2 offset 0.8,0
se mytics 10
se key top left tc variable samplen 2 spacing 1.3
se label "{/Helvetica-Bold=26 1 K}" at 0.22,13
se object 1 circle at 0.225,8.84 size 0.015 fc rgb "black" fs transparent solid 0.0  border lc rgb "black" lw 4 dt 3
repl '1e9_YX_Shear_1K' u ($1-100000)*0.001*0.001:(-$8) tit "Armchair"  w l  lw 8 lc rgb "#0000d0" 
