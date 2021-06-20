echo "Press a key:"
while [ true ]
do
	read -t 1 -n 1
if [ $? = 0 ]
then
	echo "you have terminated the script"
	exit
else
	echo "Type:"
fi
done

