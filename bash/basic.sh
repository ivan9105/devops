#!/bin/bash
current_dir=$(pwd)
echo "The current directory is: $current_dir"
pwd;
echo "The user logged in is:"
whoami;
echo "Max ARG size:"
getconf ARG_MAX;
echo "Home for the current user is: $HOME"
age=27
person="Jone Doe"
echo "$person a good programmer, he is in age $age"
var1=$(( 5 + 5 ))
#math
echo "5 + 5 = $var1"
var2=$(( $var1 * 2 ))
echo "$var1 * 2 = $var2"
#if sample
if pwd 
then 
echo "If works!"
fi
#if else sample
if [ -d /etc/passwd ]; then
echo "The dir /etc/passwd exists"
else
echo "The dir /etc/passwd doesn't exists"
fi
#compare numbers
val11=6
if [ $val11 -gt 5 ]
then
echo "The test value $val11 is greater than 5"
else
echo "The test value $val11 is not greater than 5"
fi
#compare strings
user = "unknownUser"
if [$user = $USER]
then
echo "The user $user  is the current logged in user"
fi
str1=text
str2="another text"
if [ $str1 \> "$str2" ]
then
echo "$str1 is greater than $str2"
else
echo "$str1 is less than $str2"
fi
#sort strings
sort sort_str.txt