BEGIN {print "Begin. Script to print only rows containing text patters"}
/a/ {print "Entire row="$0}
