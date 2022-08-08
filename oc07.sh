#!/bin/bash

# Script: Ops Challenge 07 - lshw | grep used to 
#         view information about system components
# Author: Shay Crane
# Date of latest revision: 08/02/2022
# Purpose: to print out specified system info w/out irrelevant info. 



lshw -class CPU | grep 'product\|vendor\|physical\|bus\|width'
    lshw -class RAM | grep 'description\|physical\|size'
        lshw -class DISPLAY | grep 'description\|product\|vendor\|physical\|bus\|width\|clock\|capabilities\|configuration\|resources'
            lshw -class NETWORK | grep 'description\|product\|vendor\|physical\|bus\|logical\|version\|serial\|size\|size\|capacity\|width\|clock\|capabilities\|configuration\|resources'


# Ops Challenge - System Information
#
# Objectives:
# Create a script that…

# Uses <lshw> to display system information to the screen about the following components:
#       - CPU
#       - RAM
#       - Display adapter
#       - Network adapter
#
# uses grep to remove irrelevant information from the lshw output;
# adds text to the output clearly indicating which component (such as CPU, RAM, etc.) 
#   the script is returning information about; and
# runs as Root; you may execute the shell script with sudo or as Root.


# SCRIPT DRAFT FROM PREVIOUS SUBMISSION
# lshw | grep "cpu"
# lshw | grep "memory"
# lshw | grep "display"
# lshw | grep "network" 

# lshw -short -disable PCI

# DETAILS OF INFO TO GREP FROM LSHW: 
#
# CPU:
#
# Product
# Vendor
# Physical ID
# Bus info
# Width
#
# RAM:
#
# Description
# Product
# Vendor
# Physical ID
# Bus info
# Width
# Clock
# Capabilities
# Configuration
# Resources
# 
# Network adapter
#
# Description
# Product
# Vendor
# Physical ID
# Bus info
# Logical name
# Version
# Serial
# Size
# Capacity
# Width
# Clock
# Capabilities
# Configuration
# Resources
#
# Uses grep to remove irrelevant information from the lshw output3
# Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about
# Runs as Root; you may execute the shell script with or as Root
# lshw -class CPU | grep -r ""Description Product Vendor Physical Bus Width Clock Capabilities Configuration Resources"" CPU/ 
# lshw -class CPU | grep ""Product Vendor Physical Bus Width""
#     lshw -class RAM | grep ""Description Product Vendor Physical Bus Width Clock Capabilities Configuration Resources""
#        lshw -class Display | grep ""Description Product Vendor Physical Bus Width Clock Capabilities Configuration Resources"" 
#            lshw -class Network | grep ""Description Product Vendor Physical Bus Logical Version Serial Size Capacity Width Clock Capabilities Configuration Resources""
            
# lshw -short -santitize | grep "CPU"          

# lshw -short - prints device tree w/hardware paths

# lshw -businfo - prints SCSI, USB, IDE, PCI device info
# ( -numeric = if you want to also print numeric ID's for PCI, USB)
 
# lshw -html = print in html format
# lshw -xml = print in xml format
# lshw -json = display device tree as JSON object
#
# lshw = do not print sensitive info
#
#
# grep (Global Srch for Reg. Expression and Print Out)
# checks for pattern matches (ex. text, anything)
# Ex,: grep "eggs" muffin_recipe.tx
#   search query must be surrounded in:
#        single quotes - single word
#        double quotes - more than one word
#   returns list of all the lines in a file which match the query
#        the above script example will return "2 medium eggs"
#            instead of just "eggs"

# *****USING GREP TO FILTER CMD OUTPUT*****
# Ex.  ls | grep "Do"
#    returns a list of all files, folders starting with "Do"
#       ls first lists all files in the folder, then grep filters it

# ***RECURSIVE SEARCH USING GREP***
# search mult. files for particular query
# Ex.: grep -r "egg" recipies/
#       will search for "egg" in folder, "recipes"
#           and all files that include "egg", 
#                and all text that appears on the line that matches "egg" (or the term)

# lshw grep 
# add text to output clearly indicating components (CPU, RAM, etc)
# run as Root; execute shell script with or Root



