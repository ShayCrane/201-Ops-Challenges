#!/bin/bash
# Script: Ops_Challenge_03_Functions_Login_History
# Author: Shay Crane
# Date of latest revisions 07/27/2022
# Purpose: Print login history of lab PC using functions and/or variables

function=print_login_history
$=User Login History

print_login_history () {
    echo $
    last user
    last
}

# invocation:
print_login_history