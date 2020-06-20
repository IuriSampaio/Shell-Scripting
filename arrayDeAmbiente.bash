# CRIANDO UM ARRAY
array=(iuri igor clara priscila)

#MOSTRANDO OS ELEMENTOS DO ARRAY

echo $array #mostra só o 0 elemento

echo ${array[*]} #mostra todos os elementos

echo ${array[2]} # mostra o 2 elemento do array

#TROCANDO OS ELEMENTOS DO ARRAY
array[1]=iolanda #basta especificar a posição e colocar o elemento que entrará no seu lugar
echo ${array[*]}

#ADICIONANDO ELEMENTOS AO ARRAY EXISTENTE
array[4]=igor
echo ${array[*]}

#DELETANDO O ARRAY E SEUS ELEMENTOS
unset array[3] # deleta um elemento especifico do array
echo ${array[*]} #mostra o array sem o 3 elemento

unset array[*] # deleta todos os elementos do array
echo ${array[*]}
