select car in BMW HYUNDAI TESLA
do
	echo "The selected car is $car"
	case $car in
	BMW)
		echo "<BMW>";;
	HYUNDAI)
		echo "<Hyundai>";;
	TESLA)
		echo "Tesla";;
	*)
		echo "Error.";;
	esac
done
