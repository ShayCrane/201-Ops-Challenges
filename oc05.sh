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
# 	for this part of the lab, initialize a process that wont harm the OSs
#	 functionality upon termination.  dont kill esst'l processes required 
#	for OS to work: kernel, drivers...

# Use a loop in the script. 
# 	This loop will facilitate the menu system of your script, so that it can
#	prompt the user to choose an option. 
# 
# Submit github link to your script file on public repo. 
# 
# use cmd tasklist 

ps -aux | less
# above script found at https://www.cyberciti.biz/faq/show-all-running-processes-in-linux/

echo "enter PID of process to terminate"
while true

do

read -p 

echo $REPLY
while $REPLY=



