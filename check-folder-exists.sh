echo "Type folder name:"
read folder
if [ -d "$folder" ]
then
	echo "Folder $folder exists"
else
	echo "Folder $folder does not exist"
fi
