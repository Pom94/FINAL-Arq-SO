clear
echo "Buenos día, $USER!"

opcion=-1


while [ "$opcion" -ne "3" ];
do
	#Opciones
	echo "-------------------------------------------------------"
	echo " "
	echo "¿Cómo desea continuar?"
	echo "1. Ver la hora"
	echo "2. Mostrar el clima de hoy para Bahia Blanca"
	echo "3. Salir"
	echo " "
	echo "-------------------------------------------------------"
	
	
	######
	read opcion
	clear
	
	#Run
	case $opcion in
		"1")
			hora=`date +%H`
			if [ $hora -lt "12" ]; 
				then
				formato="A.M."
			else 
				formato="P.M."
			fi
			echo "====================="
			echo "Son las "$(date +"%I:%M %p") "$formato"
			echo "====================="
		;;
		
		"2")
			echo "================================="
			curl wttr.in/-38.7182364,-62.266245?0
			echo "El clima de hoy para Bahia Blanca."
			echo "================================="
		;;
		
		"3")
			echo "Adios"
			exit
		;;
		
		*) 
			echo "Opción incorrecta. Ingrese opciòn 1 u opciòn 2"
		;;
	esac
done

echo "Adiós"
