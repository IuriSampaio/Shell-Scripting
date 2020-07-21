## criando TUI (text user interface)

#caixa de mensagem, só tem como apertar ok
whiptail --title "carai" --msgbox "caixa de mesagem" --fb 10 50

#caixa de pergunta com resposta sim ou não
if whiptail --title "teste y/n" --yesno "Deseja ver a caixa com os botões personalix=zados" --fb 10 100
then
	#caixa de informação
	whiptail --title "info" --infobox "voce selecionou sim, status de saida é $?" --fb 10 30

	if whiptail --title "btn perzonalizado" --yes-button "ficou chave" --no-button "ta uma bosta" --yesno "escolhe oque tu quer mane gle gle gle" --fb 10 50
	then
		nome=$(whiptail --title "INPUT BOX" --inputbox "Digite seu nome" --fb 10 69  3>&1 1>&2 2>&3)
		if [ $? = 0 ];then
			whiptail --title "só informação" --infobox "valeu $nome" --fb 10 30
		else
			whiptail --title "desiste memo oatario" --infobox "iaa ganhar um psp" --fb 20 30
		fi
	else
		whiptail --title "vai se fude" --infobox "eu sei quem tu é nessa porra ?" --fb 10 30
	fi
else
	whiptail --title "saindo" --infobox "voce selecionou não, status de saida $?" --fb 10 50
fi
########## checkbox ###############
nome=$(whiptail --title "lista de pessoas" --checklist --fb "quem vc quer conhecer"\
 30 40 5 "iuri" ""\
 ON "iolanda" " "\
 OFF "clara" " "\
 OFF "ze ngm" " "\
 OFF "pri" " "\
 OFF 3>&1 1>&2 2>&3)

if [ $? = 0 ]
then
	whiptail --title "escolheu" --infobox "vc esolheu $nome" --fb 10 40
else
	echo "cancelou"
fi
