echo $0 # retorna o nome do programa
# estas retornam os parametros passados pelo programa no momento em que ele é chamado 
echo $1 # bash parametros.sh parametroEquivalente=$1 parametroEsquivalente=$2 ... parametroEquivalente=$9
echo "$2, $3, $4"
# para adicionar mais parametros basta chama-los como:
#echo $(10)

# verificação do numero de parametros

echo "você passou $# parametros quando chamou o programa"
if [ $# -le 4 ]
then
	echo "você prescisa passar pelo menos 4 parametros"
else
	res=$[$3*$4]
	echo "$3 * $4 = $res"
fi
############## SHIFT #############
i=1
while [ -n "$1" ] # enquanto existir parametro:
do
	# vai mostrar uma vez cada valor passado como parametro
#	echo "O parametro $i tem o valor: $1"
#	i=$[$i+1]
#	shift # vai mudar o parametro posicional

	case "$1" in
		-a) echo "selecionou A";;
		-b) echo "selecionou B";;
		-i) echo "selecionou I";;
		-*) echo "opção incorreta";;
	esac
	shift
done

