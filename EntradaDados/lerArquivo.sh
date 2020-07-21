cont=1
# vai ler cada linha do arquivo texto e retona-la
cat nomeUsuario.txt | while read linha
do
	echo Usuario $cont º : $linha
	cont=$[$cont+1]
done
echo "#########################################"
cont=1
cat senhas.txt | while read senha
do
	echo Senha para usuario $cont : $senha
	cont=$[$cont+1]
done
