clear
echo "Welcome to the adivinator, ahre"
num_aleatorio=$(( $RANDOM % 50 + 1 ))

#Declaracion de variables
numero=-1
cant_intentos=0

#Comienzo del juego
echo "Tengo un nñumero en mente, a ver si adivinas"
while [ "$numero" -ne "$num_aleatorio" ];
do
	echo "Ingresa el número y apreta enter."
	read numero
	clear
	if [ "$numero" -gt "0" ] && [ "$numero" -le "50" ];
		then
		cant_intentos=$((cant_intentos+1))
		if [ "$numero" -eq "$num_aleatorio" ];
				then if [ "$cant_intentos" -le "5" ];
					then
					echo "Congratulations, has adivinado, un kpo"
			     	elif [ "$cant_intentos" -gt "5" ] && [ "$cant_intentos" -le "10" ];
					then 
					echo "Adivinaste. Aunque flojo"
			     	else 
			     		echo "Adivinaste, pero deberías replantearte tu vida (me dijo el profe que te diga)"
			fi
		else 
			if [ "$num_aleatorio" -gt "$numero" ];
				then 
				echo "El número es más grande"
			else
				echo "El número es más chico"
			fi
		fi
	else 
		echo "El numero es entre 1 y 50"
	fi
done
