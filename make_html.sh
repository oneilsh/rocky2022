ls *.png | sort -k1,1n | awk -F _ '{print $0,$1}' | awk '
      BEGIN {print "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"utf-8\" /></head><body>\n"} 
      /clouds/ {print "<br /><p style=\"font-size: 50px; margin-left: 70px; font-family: sans-serif \"><a href=#"$2" id="$2" >Topics "$2"</a></p>\n<br /><img style=\"margin-left: 70px\" src="$1 " />"} 
      !/clouds/ {print "<br /><img style=\"margin-top: 20px\" src="$1" />"} END {print "</body></html>"}' | tee index.html
