echo "digite um numero para ver os pares e impares até ele "
read num

for ((i=1;i<=$num;i++))
do
	par=$[$i % 2]

	if [ $par -eq 1 ]
	then
		echo "$i é impar"
	else
		echo "$i é par"
	fi
done

