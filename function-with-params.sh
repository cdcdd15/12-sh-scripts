function func1(){
	echo "$1"
	echo "$2"
	a=1
}
a=2
echo "$a"
func1 hello world
echo "$a"
