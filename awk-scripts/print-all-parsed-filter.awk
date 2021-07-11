#filters only the rows containing zy
/zy/ {print "Entire row="$0 "; First field=" $1 "; Second field=" $2}
