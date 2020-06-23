#status de saida e significados
## 0 --> Comando comppletado com sescesso
## 1 --> Erro geral desconhecido
## 126 --> Comando não pode executado(permições)
## 127 --> Comando não encontrado
## 130 --> Comando finalizado com Ctrl+C

# Para ver o status de um comando digite --> echo $?
# logo apos o termino da execução
echo $?
################Comando exit#########################
var=10
var2=20
var3=$[$var*$var2]
echo $var3
exit 6 # retorna o codigo de saida 6
# tambem pode-se usar variaveis como parametro do exit
exit $var3
