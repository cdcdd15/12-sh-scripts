echo "Debugging is active (made) only for the lines between set -x and set +x"
set -x
n1=400
n2=200
echo $(( n1 + n2 ))
echo "line-1"
set +x
echo $(( n1 - n2 ))
echo "line-2"
