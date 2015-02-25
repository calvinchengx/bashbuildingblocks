# A simple for loop
sum=0
for i in 1 2 3 4
do
    sum=$(($sum+$i))
done
echo "The sum of $i numbers is: $sum"

# Combine the use of a for-loop with a case statement
for filename in $(ls)
do
    # Take extension available in a filename
    ext=${filename##*\.}
    case "$ext" in
        c) echo "$filename : C source file" ;;
        o) echo "$filename : Object file" ;;
        sh) echo "$filename : Shell script" ;;
        txt) echo "$filename : Text file" ;;
        *) echo "$filename : Unknown file type/Not processed" ;;
esac
done

echo "Enter the number"
read no
fact=1
i=1
while [ $i -le $no ]
do 
    fact=$(($fact * $i))
    i=$(($i+1))
done
echo "The factorial of $no is $fact"


# Display contents of existing file

echo -e "Enter the absolute path of the file name you want to read"
read file
exec <$file # redirects stdin to a file
while read line
do
    echo $line
done


