ls *.png | sort -k1,1n | awk -F _ '{print $0,$1}' | awk '
      BEGIN {print "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"utf-8\" /></head><body>\n"} 
      /clouds/ {print "<br /><p style=\"font-size: 1.5em; font-family: sans-serif \"><a href=#"$2" id="$2" >Topics "$2"</a></p>\n<img style=\"margin-left: 0px; width: 100%\" src="$1 " />"} 
      !/clouds/ {print "<br /><img style=\"margin-top: 5px; width: 100% \" src="$1" />"} END {print "</body></html>"}' | tee clouds_contrasts.html
