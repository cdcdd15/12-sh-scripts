cat <<heredoc
Call this sctipt like this:
./inputs 10 20 30
heredoc

echo "$1" "$2" "$3"

#read inputs in array
argArray=("$@")

#read elements in array
echo "${argArray[0]}" "${argArray[1]}" "${argArray[2]}"

#array length
echo "${#argArray[@]}"

#print out all inputs
len=${#argArray[@]}
for (( i=0; i<$len; i++ )); do echo "${argArray[$i]}" ; done
