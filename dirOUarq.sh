for item in /home/*  # para todos os itens no dir /home
	do
	echo "======== $item ========="
		if [ -d "$item"  ] # se for um diretorio
		then
			echo "$item é um diretório"
		elif [ -f "$item" ] # se for um arquivo(file)
		then
			echo "$item é um arquivo"
		fi
	done
