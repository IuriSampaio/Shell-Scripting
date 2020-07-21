var=50
#contrario do while, ou seja, quando ATINGIR a condição ele para
until [ $var -eq 0 ]
do
	echo $var
	var=$[$var-2]
done
