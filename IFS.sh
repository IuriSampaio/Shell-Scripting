arquivo=/home/shell/ler.txt

IFSOLD=$IFS
IFS=$'\n' # essa variavel deve receber oque for separar as variaveis do arquivo

echo "======NOMES vindo de outro arquivo======="

for nome in `cat $arquivo`
do
	echo "NOME: $nome"
done
IFS=$IFSOLD
