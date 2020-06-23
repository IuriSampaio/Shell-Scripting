################# condicional simples ############
# o then pode ser colocado das duas seguintes maneiras:
# maneira 1 :
if cd /
then
	echo "Diretório raiz encontrado"
fi
# maneira 2 :
if cd /;then
	echo "Diretório raiz encontrado"
fi

############### condicional composto ##############
echo "digite um diretorio a partir do diretorio raiz : "
read dir

if ls $dir; then
	echo "o diretorio $dir existe"
else
	echo "esse diretorio não existe"
fi

############### condicional alinhado ##############
echo "Digite outro diretorio"
read dir2

if ls $dir
then
	echo "Diretorio $dir encontrado"
elif ls $dir2
then
	echo "Diretorio $dir2 encontrado"
else
	echo "Nenhum dos dois diretorios foi encontrado"
fi

########## comparações numéricas com test ##########

# 	PODE SER USADO DE DUAS MANEIRAS
## if test CONDIÇÃO; then  ou    if [ CONDIÇÃO ];then  ##

#		TIPOS DE CONDIÇÕES

##### CONDIÇÃO NUMERICA#####   NÃO SUPORTA FLOAT
# n1 -eq n2 -->  n1==n2
# n1 -ge n2 -->  n1>=n2
# n1 -gt n2 -->  n1>n2
# n1 -le n2 -->  n1<=n2
# n1 -lt n2 -->  n1<n2
# n1 -ne n2 -->  n1!=n2

#	EXEMPLO:

echo "Digite um numero para verificar se é par ou impar:"
read val

mod=`echo "n=$val;n%=2;n" | bc`

if [ $mod -eq  0 ]
then
	echo "$val é par"
else
	echo "$val é impar"
fi
##		Compareções com strings

# str1 = str2 --> se duas strings são iguais
# str1 != str2 --> se são diferentes
# str1 < str2 --> str1 é menor que str2 ? (em comprimento)
# str1 > str2 --> str1 é maior que str2 ? (em comprimento)
# -n str1 --> verifica se o comprimento da string é maior que 0
# -z str2 --> verifica se a string é vazia ou seja comprimento 0

# 	EXEMPLO
echo "Deseja continuar? S/n "
read des
if [ $des = "n" ]
then
	echo "obrigado por usar esse programa"
else
	echo "continuar"
fi
#	EXEMPLO 2
echo "Digite seu nome"
read nome
if [ $nome != $USER ]
then
	echo "vc não pode estar aqui"
else
	echo "ola $nome"
fi
#	EXEMPLO 3
echo "press any key:"
read any
if [ -z $any  ];then
	echo "voce não pressionou nada mano"
elif [ -n $any ];then
	echo "voce presionou $any"
else
	echo "aconteceu alguma coisa que não sei"
fi

##		 Comparando arquivos/diretorios

# -d arq  -> verifica se o arquivo existe no diretorio
# -e arq  -> verifica se o arquivo existe
# -f arq  -> verifica se o arquivo existe e se é um arquivo (não um diretorio)
# -r arq  -> verifica se o usuario atual pode ler o arquivo
# -s arq  -> verifica se existe e não esta vazio
# -w arq  -> verifica se o usr atual pode escrever no arquivo
# -x arq  -> verifica se o usr atual pode executar o arquivo
# -O arq  -> verifica se o arquivo pertence ao usuario atual
# -G arq  -> verifica se o grupo padrao do arquivo é o mesmo do usr atual
# arq1 -nt arq2 -> verifica se o arq1 é mais novo que o arq2
# arq1 -ot arq2 -> verifica se o arquivo 1 é mais antigo que o arq2

#	EXEMPLO

#verificar se o dir home existe e mostrar seu conteudo
if [ -d $HOME ];then
	echo "Conteudo do seu dir home:"
	cd $HOME
	ls -l
else
	echo "Diretorio não encontrado"
fi

#	EXEMPLO2

if [ -e /home/shell ];then
	echo "O objeto existe"
	if [ -f /home/shell/decisao.sh ];then
		if [ -r /home/shell/decisao.sh ];then
			tail -5 /home/shell/decisao.sh  # comando para exibir as 5 ultimas linhas do arquivo
		else
			echo "voce não pode ler esse arquivo"
		fi
	else
		echo "é um diretório"
	fi
else
	echo "não existe esse objeto"
fi


############### OPERADORES CONDICIONAIS  ############
# AND --> [ condição1 ] && [ condição2 ]
# OR ---> [ condição1 ] || [ condição2 ]

#	 EXEMPLO
if [ $USER = root ] && [ -w $HOME/.bashrc ];then
	echo "O usuario $USER pode escrever no arquivo"
else
	echo "O usuario não pode alterar o arquivo"
fi
