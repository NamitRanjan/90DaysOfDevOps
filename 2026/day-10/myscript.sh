 #!/bin/bash

 #This is my first script and i want to learn more!

read -p "Enter your name: " name
echo "Your name is $name"

#checks if the user already exists.

if [ "$name" != ""];then
	echo "This user already exists"
fi
