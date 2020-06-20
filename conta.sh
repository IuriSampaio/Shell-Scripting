# atribuindo resultado de um calculo a uma variavel
res=$[2+8]
echo $res
# realizando calculos com uma variavel
res2=$[$res*2]
echo $res2
#realizando a varificação do módulo
res3=$[($res2+1)/8]
#o bash só realiza operações com numeros inteiros
echo $res3 #o resultado vai ser aproximado de um inteiro


