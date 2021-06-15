count=10

if [ $count -eq 10 ]
then
	echo "corrent value"
fi

if [ $count -eq 9 ]
then
	echo "corrent value"
else
	echo "incorrect value"
fi

if [ $count -ne 9 ]
then
	echo "not equal"
fi

if [ $count -gt 9 ]
then
	echo "greater than"
fi

if (( $count > 9 ))
then
	echo "greater than with > operator"
fi

if (( $count < 9 ))
then
	echo "greater than with > operator"
elif (( $count <= 11 ))
then
	echo "in elif"
else
	echo "in else"
fi