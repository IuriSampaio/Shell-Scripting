#usando a calculadora bc para realização de cauculos
	#na linha de comando :
		# bc --> vai entrar na calculadora
		# scale=numeroDeCasasDecimais -- DEFAULT = 0
		# quit --> sai do terminal bc
	#no script:
#pode ser mostrado logo ao realizar a conta
echo "scale=3;7/2" | bc

echo "digite um nmero para o calculo da raiz:"
read val
#ou pode ser usado sendo encapsulado numa variavel
variavel=`echo "scale=5;sqrt($val)" | bc`
echo "raiz de $val = $variavel"
#Operadores lógicos
echo "Digite um numero para a vizualização dos operadores lógicos:"
read n
qua=`echo "i=$n;i^=2;i" | bc` # equivalente a n=n^2
div=`echo "e=$n;e/=2;e" | bc` # equivalente a n=n/2
mod=`echo "j=$n;j%=2;j" | bc` # equivalente a n=n%2
vez=`echo "t=$n;t*=2;t" | bc` # equivalente a n=n*2
sum=`echo "ni=$n;ni+=2;ni" | bc` # equivalente a n=n+2
#isso é valido para qualquer informação
echo "$n^2 = $qua"
echo "$n/2 = $div"
echo "$n%2 = $mod"
echo "$n*2 = $vez"
echo "$n+2 = $sum"
#funçoes existentes
# s(x) --> mostra o seno de x
# c(x) --> mostra o cosseno de x
# a(x) --> mmmostra a arcotangente de x
# l(x) --> mostra o logaritimo de x
# e(x) --> função exponencial de x
# sqrt(x) --> raiz de x
# j(n,x) --> função de Bessel (uma eq diferencial fudida do caralho) de n em x

# length(x) --> retorna o numero de digitos de x
# read() --> le o input
# last --> devolve o ultimo valor printado

############################ CONDICIONAL ################################
# && -> and
# || -> or
# !  -> not

echo 'y=6;x=7; if(x>y){ print "x é maior \n"} else{ print "y é maior \n"} ' | bc -l

############################ LOOP ###########################

echo "for(i=1;i<=10;i++){ for(j=1;j<=10;j++){ i*j; }} " | bc

echo "i=1;while(i<=5){i; i+=1}" | bc

############################ FUNÇÕES ######################################

echo "define quadrado (x){ x^=2; return x }" | bc
echo quadrado(4) | bc
