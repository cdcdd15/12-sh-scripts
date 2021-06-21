echo "Replaces all occurrences of letter e with - and write (no append) output to file."
file=awk-output.txt
awk '{ gsub(/e/, "-");print}' objects.txt > $file
