echo "Example of awk tool (mainly used for parsing and calculating data from .csv). Selects only the rows expressed in Fahrenheit and converts them in Celsius. NR==1;NR>1 is added to correctly print the header (the first line of the original input .csv file) in the result (NR being the row number). -F is put to specify the column separator from the original file"
input_filename=temperature.csv
#awk '{print "First column item: " $1 "; Second column item: " $2}' $input_filename
awk -F',' 'NR==1;NR>1{print ($2=="F" ? ($1-32)/1.8 : $1)" C"}' $input_filename
echo "Next, improving the output by applying formatter to the decimal point number in order to make them all have the same number of decimals."
awk -F',' 'NR==1; NR>1{printf("%.1f %c\n",($2=="F" ? ($1-32) / 1.8 : $1),"C")}' $input_filename
