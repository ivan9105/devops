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
#show files in current directory
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
