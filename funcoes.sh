# criando a funçao
function mensagem {
	echo "salve carai"
}

cont=1
while [ $cont -le 10 ]
do
	mensagem #chamando a funçaõ
	cont=$[cont+1]
done

function quadrado {
	# OQUE FOR LIDO PELO TECLADO VAI PRA VARIAVEL num
	read -p "Digite um numero para ser calculado ao quadrado: " num
	# A função vai retornar o numero ao quadrado
	echo $[ $num * $num ]
}
# atribuindo o retorno da função á uma variavel
valor=`quadrado`
# mostrando a varivel com o retorno da função
echo "O quadrado é $valor"
