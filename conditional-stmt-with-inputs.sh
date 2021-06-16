cat <<heredoc
Heredoc comment: Call this script like this
./conditional-stmt-with-inputs.sh 100 1
heredoc

#and operator
if [ "$1" -gt "$2" ] && [ "$1" > 10 ]
then
	echo "good value 1"
fi

#and operator
if [ "$1" -gt "$2" -a "$1" > 10 ]
then
	echo "good value 2"
fi

#or operator
if [ "$1" -gt "$2" -o "$1" > 10 ]
then
	echo "good value 3"
fi