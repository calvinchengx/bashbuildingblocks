echo "Enter your name with title:"
set -x  # Turns on debugging
read name
echo "~~~~~~~~~~~~~~~~~~~~~"
echo "My title is ${name:0:3}"
echo "My name is ${name#*.}"
set +x  # Turns off debugging
echo "~~~~~~~~~~~~~~~~~~~~~"
