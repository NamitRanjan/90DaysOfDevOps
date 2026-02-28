#/bin/bash

read -p "Enter the package name" package_name
echo "Checking if $package_name is already installed..."

if dpkg -s $package_name >/dev/null 2>&1 ;then
      echo "$package_name is already installed"
      exit 1
else
      echo "$package_name is not installed. Continuing with installation..."
fi

echo "Updating the system"
sudo apt update
echo "Installing  $package_name"
sudo apt  install $package_name
echo "Starting the service"
sudo   systemctl start $package_name
echo "Checking the status of the installed service"
sudo systemctl status $package_name



