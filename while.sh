a=1
echo "DIGITE SUA IDADE"
read year

while [ $a -lt $year ]
do
	echo "Feliz aniversario de $a anos"
	a=$[$a+1]
done

