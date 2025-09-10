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
HOW THE CODE WORKS
While EZ-Bash doesnt have the best comments, it
is a easy script to learn. The user enters a
command, and we call that a prompt. Then, we run
alot of ifs, 27, one for all english letters. If a
command matches a command we support, it runs the
code inside of the corresponding if statement. If
not, it will echo the ErrorCommandNotFound var.
The code is nicely cut up into chunks, all chunks
have a header telling you what this one does.
We do this so we dont have a billon bash scripts,
everything is in one script. While you don't 
want that most of the time, this script is one
in a millon as we dont want are install to
be hard to do. Why make bash EZ if you need to
be a expert just to install the script. 
Also, one other rule, unlike the linux kernel,
we will have no cuss words in our code. If
somebody just learned bash, and wanted to help
open source, this is the place to do it.
##################################################
END_COMMENT

#Declare Vars
date=$(date +%Y/%m/%d/_%H/%M/%S)
EZBash= "EZ-Bash v1.0.0"
ErrorCommandNotFound="This is ez bash, a bash script to help you use the bash command line ez-ly.\nEnter command list to list basic commands"
distro="distroNameHere"

#clear the screen
clear

#Check if root
if [[ $EUID -ne 0 ]]; then
	echo -e "Warning, EZ-Bash needs to be run as root for commands to work.\nReverting to bash shell."
 	exit
fi
 
#intro text
echo -e "The date is: $date"
echo -e "Your are using is $USER account"
echo -e "You are starting at the $(pwd) file"
echo -e "Your distro is: $distro"

#Intro Prompt
echo -e "WECOME TO EZ-BASH, PLEASE ENTER COMMAND\nEnter Command list if you need a list of basic commands"
read -p "prompt: " prompt "

#functions
#Well, installPackage and updateSystem does check if root. This is unnessary, becase it checks if root in the start of the script, we keep it just in case somebody bypasses it...
function updateSystem() {
	if [[ $EUID -ne 0 ]]; then
		echo "This command must be run as root"
	else
		echo -e "Updating system, please wait..."
  		if [[ $distro == mint || $distro ==  ubuntu || $distro ==  debian || $distro == || ]]; then
			sudo apt update && sudo apt upgrade -y
   		elif [[ $distro == arch ]]; then
	 		echo -e "Arch updates can break things, as it is a rolling release distro.\nWe recommend updating only once a week."
	 		read -p "Do you want to update now? (Y/N)" answer
				if [[ answer == Y ]]; then
					sudo pacman -Syu
	 			else
	 				return
	 	else
	fi
 }
function installPackage() {
	if [[ $EUID -ne 0 ]]; then
		echo "This command must be run as root"
	else
		echo -e "installing package... please wait."
  		if [[ $distro == mint || $distro ==  ubuntu || $distro ==  debian || $distro == || ]]; then
			echo -e "Remember, when installing packages, you should update your system.\nThe EZ-Bash command update will update your system"
			sudo apt update && sudo apt install $1
   		elif [[ $distro == arch ]]; then
	 		echo -e "Remember, when installing arch packages, you should have a fairly up to date system."
	 		sudo pacman -S $1
	 	else
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

#Check what command the user entered
: <<'END_COMMENT'
# A Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# B Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# C Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# D Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# E Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# F Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# G Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

# H Commands
if [[ $prompt = "hello" ]]; then
	echo -e "hello there, I am $EZBash. If you need help, enter the help command."
elif [[ $prompt = "help" ]]; then
	echo -e "$ErrorCommandNotFound"
else
	echo -e "The command you entered was not understood.\nIf you need help, enter the help command."
fi

: <<'END_COMMENT'
# I Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# J Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# K Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# L Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# M Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# N Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# O Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# P Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# Q Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# R Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# S Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# T Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# U Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# V Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# W Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# X Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# Y Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT

: <<'END_COMMENT'
# Z Commands
if [[ $prompt = "" ]]; then
	echo -e ""
elif [[ $prompt = "" ]]; then
	echo -e ""
else
	echo -e "$ErrorCommandNotFound"
fi
END_COMMENT
