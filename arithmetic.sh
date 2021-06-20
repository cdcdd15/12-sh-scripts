echo "Type first number:"
read n1
echo "Type second number:"
read n2
echo "Without expr:"
echo $(( n1 + n2 ))
echo $(( n1 - n2 ))
echo $(( n1 * n2 ))
echo $(( n1 / n2 ))
echo "With expr:"
echo $(expr $n1 + $n2)
echo $(expr $n1 - $n2)
