cat <<heredoc
Script proves the use of: while, until and for stmts
heredoc

count=10

while [ $count -lt 15 ]
do
	echo "$count"
	count=$(( count+1 ))
done

until [ $count -gt 20 ]
do
	echo "$count"
	count=$(( count+1 ))
done

for i in 1 2 3
do
	echo $i
done

for i in {0..8..2}
do
	echo $i
done

for (( i=100; i<145; i++ ))
do
	echo $i
	if [ $i -gt 105 ]
	then
		break
	fi
done