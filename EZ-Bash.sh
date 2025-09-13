#!/usr/bin/env bash
#Shebang above. DO NOT REMOVE. DO NOT EDIT. DO NOT LOOK AT. DO NOT THROW TACO AT. Do however, have a nice long chat about chess with it. DO NOT PLAY CHESS WITH IT. Thou has been warned...

: <<'END_COMMENT'
##################################################
EZ-BASH!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
##################################################
DESCRIPTION
EZ-Bash is a simple bash script to make the 
command line less daunting for beginner bash
shell users. It works on Arch, Ubuntu, Debian, Mint
est. While the script is long, the commands are
short. If you understand bash and want to help
out, please dont hestate to commit to EZ-Bash.
-RHBollinger1s at github
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
echo -e "Your are using is $USER account"
echo -e "You are starting at the $(pwd) file"
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
: <<'END_COMMENT'
function copyDir() {
	
}
function removeDir() {
	
}
END_COMMENT
: <<'END_COMMENT'
function makeDir() {
	
}
END_COMMENT

#----------LIST OF COMMANDS IN A ARRAY----------
#alphabetical order
declare -a listOfCommands
listOfCommands[0]="copy \"Copys a file from one location to another.\"\"\ne.g. \"\""
listOfCommands[1]="goto \"Moves you from one file to another.\""
listOfCommands[2]="list \"Prints a list of basic commands and usage.\"\"\ne.g. \"\""
listOfCommands[3]="make file \"Makes an empty file.\"make file myListOfFavMovies"
listOfCommands[4]="make folder \"Makes an empty folder.\"make folder scriptsAndJunk"
listOfCommands[5]="move \"Moves a file or folder to another location.\"\"\ne.g. move ~/documents/document.txt ~/desktop\"\""
listOfCommands[6]="update \"Updates you system to the newest packages.\"\ne.g. update\"\""

#----------MAIN LOOP----------
#case in alphabetical order
while true; do
	#Intro Promptup
	read -p "prompt: " userPrompt
	case $userPrompt in
 		copy)
			echo -e "copy command not yet implemented"
			;;
   		goto)
			echo -e "goto command not yet implemented"
			;;
 		list)
   			echo -e "Basic Commands Include\n"
   			;;
		make)
			if [[ $userPrompt == "make file"* ]]; then
				touch 
			fi
			;;
		update)
			updateSystem
			;;
   		move)
			echo -e "move command not yet implemented"
			;;
		exitTo)
		  break
		  ;;
		*)
   			echo -e "Error, command was not recognised.\nCheck spelling, or use command \"list\" to display commands."
	  		;;
	esac
done
