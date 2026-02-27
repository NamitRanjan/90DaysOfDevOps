#!/bin/bash

for i in {1..5}
do
	read -p "Enter the username" user_name
        sudo useradd -m $user_name
	echo "User $user_name has been added successfully"
done
