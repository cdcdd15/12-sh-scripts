echo "Type first string:"
read str1
echo "Type second string"
read str2
echo "$str1"
echo "$str2"
if [ "$str1" == "$str2" ]
then
	echo "The 2 string are the same."
fi
str3=$str1$str2
echo "Concat string is $str3."
echo "Upper case of $str1 is ${str1^^}".
