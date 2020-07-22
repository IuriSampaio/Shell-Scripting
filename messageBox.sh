
## criando TUI (text user interface)

###################### whiptail ###########################

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

########################### dialog ###########################
dialog --title "eae" --msgbox "oi" 10 25

if dialog --title "eae" --yesno "escolha sim ou não" 10 30
then
	nome=$(dialog --inputbox "escreva su nombre" 10 30 --stdout)
	if [ $? -eq 0 ];then ## digitou alguma coisa (ok)

		sistema=$(dialog --menu "escolha um sistema:" 20 30 10\
		 1 "Linux"\
		 2 "Windows"\
		 3 "Android"\
		 4 "Solaris"\
		 5 "BSD" --stdout )

		case $sistema in
			1)
				dialog --title "salve $nome" --msgbox "então o $nome prefere Linux" 10 25;;
			2)
				dialog --title "salve $nome" --msgbox "então o $nome prefere Windows" 10 25;;
			3)
				dialog --title "salve $nome" --msgbox "então o $nome prefere Android" 10 25;;
			4)
				dialog --title "salve $nome" --msgbox "então o $nome prefere Solaris" 10 25;;
			5)
				dialog --title "salve $nome" --msgbox "então o $nome prefere BSD" 10 25;;
			*)
				dialog --title "salve $nome" --msgbox "QUE PORRA VC FEZ $nome" 10 25;;
		esac

		niver=$(dialog --calendar "selecione seu niver" 0 0 --stdout)
		dialog --title "$nome e nasceu $niver" --infobox "feliz aniversario $nome, quando chegar dia $niver" 15 30; sleep 4; clear

	else ## significa que não quis escrever o nome (cancelar)
		checkBoxItem=$(dialog --radiolist "Escolha uma cor: " 15 30 4\
		"Verde" "" OFF\
		"Azul" "" OFF\
		"Preto" "" ON\
		"Roxo" "" OFF --stdout)

		dialog --title "tão vai se fude" --infobox "se fude $checkBoxItem" 10 20; sleep 4; clear
	fi
else
	dialog --textbox /etc/group 20 20 # caixa de texto que mostra todos os grupos do sistema
fi
