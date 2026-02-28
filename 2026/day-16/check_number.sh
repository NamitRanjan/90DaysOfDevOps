 #!/bin/bash
 read -p "Enter any number" x
 if [ $x -gt 0 ];then
	 echo "The number is positive"
 elif
    [ $x -lt 0 ];then
         echo "The number is negative"
else
       echo "The number entered is 0"
 fi       
