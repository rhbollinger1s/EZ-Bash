#!/usr/bin/env bash

date=$(date +%Y/%m/%d/_%H/%M/%S)
EZBash= "EZ-Bash v1.0.0"

#clear the screen
clear

#intro text
echo "The date is: $date"
echo "Your are using is $USER account"
echo "you are starting at the $(pwd) file"

#Intro Prompt
echo "WECOME TO EZ-BASH, PLEASE ENTER COMMAND"
read -p "prompt: " prompt

if [[ $prompt = "hello" ]]; then
	echo "hello there, I am $EZBash. If you need help, enter the help command."
else [[ $prompt = "help" ]]
	echo -e "This is ez bash, a bash script to help you use the bash command line ez-ly.\nWe have the following commands:\nhello\nhelp."
fi
