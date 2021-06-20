echo "Type file name:"
read file
if [ -f "$file" ]
then
	echo "file $file exists"
else
	echo "file $file does not exist"
fi
