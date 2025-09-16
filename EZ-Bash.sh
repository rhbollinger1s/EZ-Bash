#!/usr/bin/env bash
#Shebang above.

: <<'END_COMMENT'
##################################################
#                  EZ-BASH                       #
##################################################
# DESCRIPTION                                    #
# EZ-Bash is a beginner-friendly Bash script      #
# designed to simplify common command-line tasks. #
# Supported distros: Arch, Ubuntu, Debian, Mint.  #
# Commands are easy to use and understand.        #
# Contributions are welcome!                      #
#                                                 #
# Author: RHBollinger1s (GitHub)                  #
##################################################
END_COMMENT

#----------DECLARE VARS----------
date=$(date +%Y/%m/%d/_%H/%M/%S)
EZBash="EZ-Bash v1.0.0"
ErrorCommandNotFound="This is ez bash, a bash script to help you use the bash command line ez-ly.\nEnter command list to list basic commands"
distro="distroNameNotYetSet"

#----------HELPERS AND UTILITIES----------
#clear the screen
clear

#Check Distro
if [ -f /etc/os-release ]; then
	. /etc/os-release
	distro=$ID
else
	echo "Error: Can't find system information or name. Your distro may not be supported."
	echo "Please check if /etc/os-release exists, or manually set the 'distro' variable in this script."
	exit 1
fi

#Check if root
if [[ $EUID -ne 0 ]]; then
	echo -e "Error:EZ-Bash needs to be run as root for commands to work.\nPlease also note that sudo can be dangerous. Trust any script before runing it as root\nReverting to bash shell."
 	exit
fi

#intro text
echo -e "The date is: $date"
echo -e "Your signed in as $USER"
echo -e "You are working in the $(pwd) file"
echo -e "Your distro is: $distro"
echo -e "WECOME TO EZ-BASH, PLEASE ENTER COMMAND\nEnter Command list if you need a list of basic commands"

#----------FUNCTIONS----------
#Well, installPackage and updateSystem does check if root. This is unnessary, becase it checks if root in the start of the script, we keep it just in case somebody bypasses it...
function updateSystem() {
  if [[ $EUID -ne 0 ]]; then
    echo "This command must be run as root"
    return 1
  fi
  echo -e "Updating system, please wait..."
  if [[ "$distro" == "mint" || "$distro" == "ubuntu" || "$distro" == "debian" ]]; then
    sudo apt update && sudo apt upgrade -y
  elif [[ "$distro" == "arch" ]]; then
    echo -e "Arch updates can break things, as it is a rolling release distro.\nWe recommend updating only once a week."
    read -r -p "Do you want to update now? (Y/N) " answer
    if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
      sudo pacman -Syu
    else
      return 0
    fi
  else
    echo "Unsupported distro: $distro"
  fi
}

function installPackage() {
  if [[ $EUID -ne 0 ]]; then
    echo "This command must be run as root"
    return 1
  fi
  if [[ -z "$1" ]]; then
    echo "Usage: install <package-name>"
    return 1
  fi
  echo -e "installing package... please wait."
  if [[ "$distro" == "mint" || "$distro" == "ubuntu" || "$distro" == "debian" ]]; then
    echo -e "Remember, when installing packages, you should update your system.\nThe EZ-Bash command update will update your system"
    sudo apt update && sudo apt install -y "$1"
  elif [[ "$distro" == "arch" ]]; then
    echo -e "Remember, when installing arch packages, you should have a fairly up to date system."
    sudo pacman -S --noconfirm "$1"
  else
    echo "Unsupported distro: $distro"
  fi
}

: <<'END_COMMENT'
function changeDir() {
	
}
END_COMMENT

function copyDir() {
	if [[ -z "$1" || -z "$2" ]]; then
		echo "Usage: copy <source> <destination>"
		return 1
	else
		cp $1 $2
	fi
}

: <<'END_COMMENT'
function removeDir() {
	rm -rf $1
}
END_COMMENT

function makeDir() {
	if [[ -z "$1" ]]; then
		echo "Usage: make folder <folder-name>"
		return 1
	elif [ -d "$1" ]; then
		echo "Error: Folder $1 already exists."
		return 1
	else
		echo -e "Making folder $1"
		mkdir $1
	fi
}

function makeFile() {
	if [[ -z "$1" ]]; then
		echo "Usage: make file <file-name>"
		return 1
	elif [ -f "$1" ]; then
		echo "Error: File $1 already exists."
		return 1
	else
		echo -e "Making file $1"
		touch $1
	fi
}

#----------LIST OF COMMANDS IN A ARRAY----------
#alphabetical order
declare -a listOfCommands
listOfCommands+=("clear \"Clears the screen.\"")
listOfCommands+=("copy \"Copys a file from one location to another.\"")
listOfCommands+=("goto \"Moves you from one file to another.\"")
listOfCommands+=("info \"Shows system information using the fastfetch app\"")
listOfCommands+=("install \"Installs a package. Usage: install <package-name>\"")
listOfCommands+=("ip \"checks your ip information. Usage: ip\"")
listOfCommands+=("list \"Prints a list of basic commands and usage.\"")
listOfCommands+=("make file \"Makes an empty file. Usage: make file myListOfFavMovies\"")
listOfCommands+=("make folder \"Makes an empty folder. Usage: make folder scriptsAndJunk\"")
listOfCommands+=("move \"Moves a file or folder to another location. Usage: cd ~\"")
listOfCommands+=("print \"Prints the contents of a file to $EZBash. Usage: show fileName\"")
listOfCommands+=("update \"Updates your system to the newest packages.\"")

#----------MAIN LOOP----------
while true; do
	# Prompt user for input
	echo -n -e "Username \: $USER at $(pwd) \: "
	# Read user input
	IFS=' '  # Set space as delimiter
	read -r -a userInput
	command="${userInput[0]}"
 	#args stands for arguments
	args=("${userInput[@]:1}")
	case "$command" in
		clear | wash)
			clear
			;;
		copy)
			copyDir "${args[@]}"
			;;
		goto | changedir)
			if [[ -n "${args[0]}" ]]; then
				cd "${args[0]}" && echo "Moved to $(pwd)"
			else
				echo "Usage: goto <directory>"
			fi
			;;
   		info)
	 		if command -v "$APP_COMMAND" &> /dev/null; then
	 			fastfetch
	 		else
				echo "Installing fastfetch to show system info"
				installPackage "fastfetch"
			fi
	 		;;
		install | download | getApp | get)
			if [[ -n "${args[0]}" ]]; then
				installPackage "${args[@]}"
			else
				echo "Usage: install <package-name> [more-package-names]"
			fi
			;;
   		ip)
	 		# Needs work, not user friendly...
	 		ip
			;;
		list)
			echo -e "Basic Commands Include:\n"
			for cmd in "${listOfCommands[@]}"; do
				echo "$cmd"
			done
			;;
		make)
			if [[ "${args[0]}" == "file" && -n "${args[1]}" ]]; then
				makeFile "${args[1]}"
			elif [[ "${args[0]}" == "folder" && -n "${args[1]}" ]]; then
				makeDir "${args[1]}"
			else
				echo "Usage: make file <file-name> OR make folder <folder-name>"
			fi
			;;
   		move)
			if [[ -n "${args[0]}" && -n "${args[1]}" ]]; then
				mv "${args[0]}" "${args[1]}"
			else
   				echo "Sorry, command was not understood..."
				echo "Usage: move <source> <destination>"
			fi
			;;
   		print | show)
	 		cat "${args[0]}"
			;;
		update)
			updateSystem
			;;
		exitTo | exit | quit)
			echo -e "Exiting EZ-Bash, returning to bash shell.\nHave a nice day!"
			break
			;;
		*)
			echo -e "Error, command was not recognised.\nCheck spelling, or use command \"list\" to display commands."
			;;
	esac
done
