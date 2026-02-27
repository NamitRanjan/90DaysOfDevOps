#!/bin/bash

read -p "Enter the file path" file_path
if [ -f $file_path ];then
	echo "File Exists"
else 
	echo "File Doesn't exist"
fi
