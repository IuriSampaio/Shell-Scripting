# AULA DE for in  
array=()
k=0
z=0
while [ $k -eq $z ] #ENQUANTO K=0 FAZER
do

	if [ ${#array[@]} -ne  0  ];then
		echo "DESEJA CONTINUAR?S/n"
		read res
		if [ $res = "n" ]
		then
			k=1
		else
			for j in ${#array[@]} # ESSA PROPRIEDADE RETORNA O NUMERO DE ELEMENTOS DO ARRAY
			do
				echo "digite um nome: "
				read nome
				array[$j]=$nome
			done
		fi
	else
		echo "Digite seu nome: "
		read nome
		array[0]=$nome
	fi
done

for i in ${array[*]}
do
echo "eu amo $i"
done
