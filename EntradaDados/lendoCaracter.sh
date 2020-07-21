#!bin/bash
# -n1 -> passado como parametro para o read, fazendo ler apenas um parametro
echo continuar[s/n]?
read -n1 res
case $res in
	S|s|y) echo
		echo continuar;;
	N|n) echo
		echo sair;;
	*) echo
		echo opção não cadastrada;;
esac
