#!/bin/bash

read -p "Mention a service name" service
read -p "Do you want to check the status?(y/n)" status
if [ $status = "y" ];then
	sudo systemctl status $service
elif
   [ $status = "n" ];then
       echo "skipped.."
else
       echo "Invalid input"
fi
    
