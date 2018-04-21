#!/bin/bash

# Create a bash menu to perform
# routine system admin task

# while loop to keep the menu open.
while true
do

	# Clear the screen to create
	# a fresh menu
	clear
	
	echo "###################################"
	echo "######### Log MENU #################"
	echo "###################################"
	echo ""
	echo "1) Search Apache Log file
	echo “”
	echo “2) Run Geolocaltion of Log file
	echo “”
	echo "w) Go back to Main menu"
	echo “”
	echo "e) Exit the menu"

	# Read in the value from the user
	read -p "Please enter a value[1-3]: " choice
	echo ""
	# case statement
	case ${choice} in
		2)

			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			/home/ec2-user/BashMenu/geoip.bash
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey
		;;

		 1)

                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        /home/ec2-user/BashMenu/search-a.bash
                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        read -p "Please press [Enter] to continue" readEnterKey
                ;;









		e)
			exit 0
		
		;;

		w)
			/home/ec2-user/BashMenu/MainMenu.bash

		;;	
		*)
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			echo "Invalid value provided! You'll be taken"
			echo "back to the main menu momentarily"
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			sleep 3

		;;
		
	# end case statement
	esac

# end while loop
done
