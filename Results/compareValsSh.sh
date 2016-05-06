gnuplot <<_EOF_
set term png
set output "compVals.png"
set key bottom right
set title "Comparison between the power consumption with each decision formula"
set ylabel "Power consumption (Joules)"
set xlabel "Iteration #"
plot 'compareVals.dat' using 1:5 title "Formula 1"  with lines, 'compareVals.dat' using 1:6 title "Formula 2 - QueueWeight = 0"  with lines, 'compareVals.dat' using 1:3 title "Formula 2 - QueueWeight = 0.25"  with lines, 'compareVals.dat' using 1:2 title "Formula 2 - QueueWeight = 0.5"  with lines,  'compareVals.dat' using 1:4 title "Formula 2 - QueueWeight = 0.75"  with lines,  'compareVals.dat' using 1:7 title "Formula 2 - QueueWeight = 1"  with lines
_EOF_
