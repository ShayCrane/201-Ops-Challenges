#!/bin/bash

# Tasks
# Today’s script is a form of automation.

# 1. Review the process for creating a new directory.

# 2. Create four directories using the script.

# 3. Load each directory path into an array.

# 4. create a new .txt file within each directory 
#    by referencing the directory with array indices, 
#    not the literal directory path.

# 5. Test & validate.

# Objectives
# Script must:
#   create four directories: dir1, dir2, dir3, dir4
#   put the names of the above in an array
#   reference the array variable to create a new 
#   .txt file in each directory


# Script: Ops Challenge 04
# Author: Shay Crane
# Date of latest revision: 07/28/2022
# Purpose: a script that creates 4 directories using an array

# cd ~/201_Ops_Challenges/arrays/fourdirs_array_dirs_folder

cd /home/shannon/201_Ops_Challenges/arrays/

array1=(
    /home/shannon/201_Ops_Challenges/arrays/dir1/
    /home/shannon/201_Ops_Challenges/arrays/dir2/
    /home/shannon/201_Ops_Challenges/arrays/dir3/
    /home/shannon/201_Ops_Challenges/arrays/dir4/
)

> ${array1[0]}/one.txt
> ${array1[1]}/two.txt
> ${array1[2]}/three.txt
> ${array1[3]}/four.txt







