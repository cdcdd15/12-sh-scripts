echo 'Use awk tool for building as programming routine.'
awk '
	BEGIN{print "Run once."}
	END{print "Run once (at the end)."}
' temperature.csv
echo 'Use awk too to aggregate values from input .csv file. -F is put to specify the data delimiter.'
awk -F',' '
	BEGIN{temp_sum=0; total_records=0; print "Begin calc of averate temparature."}
	($2=="F"){temp_sum += ($1 - 32) / 1.8; total_records += 1;}
	($2=="C"){temp_sum += $1; total_records += 1;}
	END{print "Average temperature (in C): " temp_sum/total_records}
' temperature.csv
