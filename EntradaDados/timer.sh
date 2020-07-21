echo "Digite seu sonho: "
# se demorar mais de 4 segundos para dar enter na variavel sonho:
if read -t 4 sonho
then
	echo você vai alcançar $sonho, tmj
else
	echo demorou mt carai
fi
