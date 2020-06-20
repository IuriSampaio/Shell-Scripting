echo "digite o seu nome:"
#ler oque foi digitado e guardar em uma variavel de nome user
read user
# mostrar o conteudo da variavel user no arquivo nomeUsuario.txt
echo $user >> nomeUsuario.txt

#   '>'  --->  isso significa que o conteudo do arquivo será apagado sempre que houver uma nova entrada de dados 
#   '>>' --->  isso significa que sempre que houver a digitação de um novo valor para a variavel ele será guardado no final do arquivo


echo "digite sua senha:"
read -ers senha

# '-ers' ---> Significa que não serão mostrados os dados digitados

echo $senha >> senhas.txt
