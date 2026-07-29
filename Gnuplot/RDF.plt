#
clear
reset
pl "100000_XY_1e9_1K.txt" u 2:($3/3000) w l lw 5 
repl "150000_XY_1e9_1K.txt" u 2:(0.6+($3/1685)) w l lw 5 
repl "200000_XY_1e9_1K.txt" u 2:(1.2+($3/1685)) w l lw 5 
repl "300000_XY_1e9_1K.txt" u 2:(1.8+($3/1685)) w l lw 5 
repl "350000_XY_1e9_1K.txt" u 2:(2.4+($3/1685)) w l lw 5 
repl "400000_XY_1e9_1K.txt" u 2:(3.0+($3/1685)) w l lw 5 
repl "450000_XY_1e9_1K.txt" u 2:(3.6+($3/1685)) w l lw 5 
se term post col eps enh "Helvetica" 24
se ou 'RDF_1e9_1K_XY.eps'
set encoding iso_8859_1
se xl "{/Helvetica-Bold=24 r ({\305})}" offset 0,0.7
se yl "{/Helvetica-Bold=24 g(r) (Arbitrary units)}" offset 1, 0
se xr[1.5:]
se xtics 0.5 offset 0,0.4
se mxtics 10
se yr[:4.7]
unse ytics
se label 1  "{/Symbol e = 0.0}" at 5.3,0.2
se label 2  "{/Symbol e = 0.05}" at 5.3,0.8
se label 3  "{/Symbol e = 0.10}" at 5.3,1.4
se label 4  "{/Symbol e = 0.20}" at 5.3,2.0
se label 5  "{/Symbol e = 0.25}" at 5.3,2.6
se label 6  "{/Symbol e = 0.30}" at 5.3,3.2
se label 7  "{/Symbol e = 0.35}" at 5.3,3.8
se label 8  "{/Symbol e = 0.37}" at 5.3,4.4
se label 9 "{/Helvetica-Bold=24 Zigzag}" at 3.5, 4.5
unse key
repl "470000_XY_1e9_1K.txt" u 2:(4.1+($3/2000)) w l lw 5 
