function func(){
	echo "adding text to file"
	echo "$text" >> $1
}

file=append-text.txt
echo "Type text to append to $file"
read text
if [ -f "$file" ]
then
	echo "file $file exists"
	func "$file"
	#echo "$text" >> $file
else
	echo "file $file does not exist, creating the file"
	touch "$file"
	func "$file"
fi
