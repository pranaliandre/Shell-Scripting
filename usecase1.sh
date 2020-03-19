
#!/bin/Bash -x
isPresent=1;
randomChecking=$((RANDOM%2))
if [ $isPresent -eq $randomChecking ];
then
	echo "Empoyee is present";
else
   echo "Employee is absent";
fi


