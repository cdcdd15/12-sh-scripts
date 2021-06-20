car=('BMW' 'Honda' 'Renault' 'TESLA')
unset car[2]
echo "${car[@]}"
echo "${car[1]}"
echo "${!car[@]}"
echo "${#car[@]}"
