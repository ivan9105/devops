#for in
echo "For in basic variables"
for var in one two three four five six
do
echo The $var item
done
echo "For in strings variables"
for var in first "the second" "the third" "I’ll do it"
do
echo "This is: $var"
done
echo "Read list from file"
for_in_list_file="for_in_list.txt"
#separator
IFS=$'\n'
for var in $(cat $for_in_list_file)
do
echo " $var"
done
echo "Show files in current directory"
for file in $(pwd)/*
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
fi
done
echo "Numberic cycle"
for (( i=1; i <= 10; i++ ))
do
echo "number is $i"
done
echo "While"
int1=5
while [ $int1 -gt 0 ]
do
echo $int1
int1=$[ $int1 - 1 ]
done
echo "Inner for in"
for (( external = 1; external <= 3; external++ ))
do
echo "Start $external:"
for (( inner = 1; inner <= 3; inner++ ))
do
echo " Inner loop: $inner"
done
done
echo "Do process list from file"
IFS=$'\n'
for entry in $(cat for_in_list_with_separator.txt)
do
echo "Values in $entry –"
IFS=:
for value in $entry
do
echo " $value"
done
done
echo "Break sample"
for int2 in 1 2 3 4 5 6 7 8 9 10
do
if [ $int2 -eq 5 ]
then
break
fi
echo "Number: $int2"
done
echo "Continue sample"
for (( int3 = 1; int3 < 15; int3++ ))
do
if [ $int3 -gt 5 ] && [ $int3 -lt 10 ]
then
continue
fi
echo "Iteration number: $int3"
done
echo "Fill file sample"
for (( int4 = 1; int4 < 10; int4++ ))
do
echo "Number is $int4"
done > numbers_file.txt
echo "finished."
echo "Find executable files"
IFS=:
for folder in $PATH
do
echo "$folder:"
for file in $folder/*
do
if [ -x $file ]
then
echo " $file"
fi
done
done