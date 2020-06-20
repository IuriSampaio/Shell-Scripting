#DECLARANDO
nomeDaVariavel='conteudo da variavel'
# é obrigatorio que se escreva tudo junto, pois como isso se executa na linha de comando não pode ser confundido com um

#MOSTRANDO O CONTEUDO DA VARIAVEL
echo $nomeDaVariavel
# o $ mostra que é uma varivel

# esta é uma variavel local, para exporta-la para se transformar numa variavel global basta:

#EXPORTANDO A VARIAVEL -- TRANFORMANDO EM VARIAVEL GLOBAL
export nomeDaVariavel

#DELETANDO VARIAVEL
unset nomeDaVariavel
