echo "digite seu nome:"
read nome
# para usar uma variavel digitada pelo usuario basta colocar '$' antes do nome da variavel
echo "eae $nome!"

###### OUTRA FORMA DE USAR #######
read -p "Digite sua idade: "
# chamando variavel que foi lida e não deu nome usa-se $REPLY
echo "sua idade é $REPLY"
