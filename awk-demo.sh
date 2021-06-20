echo "Prints content of file (from currnent folder):"
awk {print} arrays.sh
echo "Prints line in file containing specific string:"
awk '/2/ {print}' arrays.sh
echo "Print second word and third word of all the lines containing specific string (from the specifies .txt file from current folder):"
awk '/Joe/ {print $2,$3}' awk-demo.txt
