#!/bin/bash
useradd test1 &> /dev/null
#read  password
echo $password | passwd --stdin test1 &> /dev/null
if [ $? -eq 0 ]
then
echo "user created"
else
echo "Password missing"
fi
