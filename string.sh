
# String comparison
export name1="hello1"
export name2="hello2"

if [[ $name1 > $name2 ]]
then
    echo "name1 precedes name2"
else
    echo "name does not precede name2"
fi

if [[ "$name1" = "$name2" ]]
then 
    echo "same string" 
else
    echo "not the same string"
fi

myLen=${#name1}
echo $myLen

# String manipulation
export name="bagend.hobbiton.com"
loco=${name:2:6}; echo $loco;  # from the variable name, take the substring from 2 (0,1,2) and offset by 6
moto=${name#*.}; echo $moto;   # from the variable name, take whatever is after the first .
