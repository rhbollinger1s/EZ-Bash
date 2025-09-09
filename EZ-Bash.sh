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

#clear the screen
clear

#intro text
echo -e "The date is: $date"
echo -e "Your are using is $USER account"
echo -e "you are starting at the $(pwd) file"

#Intro Prompt
echo -e "WECOME TO EZ-BASH, PLEASE ENTER COMMAND\nEnter Command list if you need a list of basic commands"
read -p "prompt: " prompt

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
