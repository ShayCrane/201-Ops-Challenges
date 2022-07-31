#!/bin/bash
# Script: Ops Chllg 05
# Author: Shay Crane
# Date of latest revisions: 07/29/2022
# PUrpsoe: display running processes, prompts user to terminate process that 
# matches PID entered by user at prompt. 
#
# write a script that displays running processes, asks the user for a PID,
# then kills the process with that PID. 
# 
# 	initialize a process that wont harm the OSs
#	 functionality upon termination.  dont kill esst'l processes required 
#	for OS to work: kernel, drivers...

# Use a loop in the script. 
# 	This loop will facilitate the menu system of your script, so that it can
#	prompt the user to choose an option. 
# 
# Submit github link to your script file on public repo. 
# 
# use cmd tasklist 

# Figured out how to make this script using a combination of
# this oracle document online: https://docs.oracle.com/cd/E19253-01/817-0403/eoizf/index.html
# and at this url: https://itsfoss.com/how-to-find-the-process-id-of-a-program-and-kill-it-quick-tip/


ps -fu shannon

VAR1=(YES NO)
    echo Terminate process using PID? 
    echo YES to continue, Enter NO to quit termination process
    read ANSWER
while [ANSWER = ${VAR1[1]}]
do
    echo enter PID to terminate
    read VAR3
    sudo kill -9 $VAR3
    echo $VAR3 has been terminated. 
done




# ps -aux | less
# above script found at https://www.cyberciti.biz/faq/show-all-running-processes-in-linux/

# echo "enter PID of process to terminate"
# while true

# do

# read -p 

# echo $REPLY
# while $REPLY=