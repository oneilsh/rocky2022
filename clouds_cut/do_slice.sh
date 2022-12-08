echo for file in $(ls topics* | sed "s/.png//"); do for i in $(seq 0 5); do echo convert $file.png -crop 3650x453+18+$(echo "105 + 453*$i" | bc -l) slice-$file-$i.png; done; done

# rename files
ls -1 slice*.png | tr '_-.' '   ' | awk '{print "cp " $1 "-" $2 "_" $3 "-" $4 "-" $5 ".png" "    " $3+7*$5 "-" ($3+7*($5+1))-1 "_clouds.png"}' | bash
