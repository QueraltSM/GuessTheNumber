#! /bin/bash
number=$(($RANDOM%9))
counter=0
while [ $counter -lt 3 ]
do
echo 'Introduce number: '
read numberEntered
	if [[ $numberEntered -eq $number ]]; then 
		echo "Perfect. You win! :)"
		break;
	else 
		if [ $counter -eq 2 ]; then 
	    		echo "Wrong again. You lost. The correct number was "$number". :("
			break;
		fi
	
	if [[ $numberEntered -gt $number ]]; then
		echo "Wrong. Try once more with a number lower."
	else
		echo "Wrong. Try once more with a number higher."
	fi
  
	let counter=counter+1
	
	fi 
done
