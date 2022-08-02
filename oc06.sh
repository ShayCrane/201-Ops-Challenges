#!/bin/bash

# Ops Challenge 06 - Conditionals
# 
# What is the purpose of a conditional?
# Conditionals allow your script to test whether a situation is true and then proceed accordingly.
#
# Objectives
#
# 1. Create a script that detects if a file or directory exists, then creates it if it does not exist.
#       Your script must use at least one array, one loop, and one conditional.
# 
# 2. Submit a link to your script file on your public GitHub repo.
# ------------
# 
# 
# Script: Ops Chllg 06
# Author: Shay Crane
# Date of latest revisions: 08/01/2022
# Purpose: detect if a file exists, then create it if it does not exist.
# 
# Knowledge bases consulted:
# 1. Tutorials linked in the assignment;
# 2. https://linuxhint.com/check-if-a-file-exists-in-bash/
# 3. Once I had worked on and troubleshooted my script enough to be sure I was truly stuck 
#   (while trying to add an array), I sought Ethan's help with syntax and placement to make   
#   the script operational.  Once that script was complete, Ethan showed me a way to clean up   
#   the script by creating a function out of the meat of the script and referencing the function 
#   within the existing loop.  It is now much more concise and flexible! 



does_file_exist () {
    if [ -f "$1" ]; then
        echo "$1" exists in this directory! woo hoo!
        nano "$1"
    else 
        echo we looked everywhere but did not locate your chosen file.
        echo creating new file named "$1".
    fi 
}

filenames=()
ANSWER="y"  
while [ "$ANSWER" == "y" ] 
do
    cd ~/201_Ops_Challenges/conditionals_output_file/
    echo enter the text file name, including its extension, that you wish to locate or create: 
    read soughtfile
    filenames+=($soughtfile)
    does_file_exist $soughtfile 
    echo enter y to repeat, n to quit.
    read ANSWER
done
echo ${filenames[*]}


# code that doesn't work that i spent hours on. 
# ANSWER=( 1 2 )
#    echo PRESS 1 to open "$soughtfile", 
#    echo PRESS 2 to open a blank text document. 
#    read userchoice
# while [ $ANSWER[0] == 1 in "$userchoice" ]
# do 
#     nano "$soughtfile"
# done 
# while [ $ANSWER[1] == 2 in "$userchoice" ]
# do 
#     nano "blankfile.txt"
# done 

# # while { $ANSWER[@]=1 in "$userchoice" }
<<<<<<< HEAD
# # while [ {$ANSWER[@]} == 1 in "$userchoice" ]
=======
# # while [ {$ANSWER[@]} == 1 in "$userchoice" ]
 

>>>>>>> refs/remotes/origin/main
