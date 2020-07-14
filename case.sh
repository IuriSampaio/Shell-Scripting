# switch-case no shell
echo "digita seu nome"
read nome
case $nome in
	iuei | ioli)
		echo "opa bro";;
	caco)
		echo "ola";;
	iuri)
		echo "finalmente $nome";;
	*)
		echo "sei não mano";;
esac
