echo "Example of awk tool (mainly used for parsing and calculating data from .csv). Selects only the rows expressed in Fahrenheit and converts them in Celsius. (NR==1) (NR>1) are added to correctly print the header (the first line of the original input .csv file) in the result (NR being the row number). -F is put to specify the column separator from the original file."
input_filename=temperature.csv
echo ""
echo "Simple column separation:"
awk -F',' '{print "First column item: " $1 "; Second column item: " $2}' $input_filename
echo ""
echo "Convert corresponding temperatures. NR=1 is the header row."
awk -F',' '(NR==1){print $1 " " $2}; (NR>1){print ($2=="F" ? ($1-32)/1.8 : $1)" C"}' $input_filename
echo ""
echo "Next, improving the output by applying formatter to the decimal point number in order to make them all have the same number of decimals."
awk -F',' '(NR==1){print $1 " " $2}; (NR>1){printf("%.1f %c\n",($2=="F" ? ($1-32) / 1.8 : $1),"C")}' $input_filename
echo ""
echo "Next, print the header (first row) and data rows between from 3 to 7"
awk -F',' '(NR==1){print $1 " " $2}; (NR>2 && NR<7){printf("%.1f %c\n",($2=="F" ? ($1-32) / 1.8 : $1),"C")}' $input_filename
