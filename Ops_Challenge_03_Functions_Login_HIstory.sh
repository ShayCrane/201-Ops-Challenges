#!/bin/bash
# Script: Ops_Challenge_03_Functions_Login_History
# Author: Shay Crane
# Date of latest revisions 07/27/2022
# Purpose: Print login history of lab PC using functions and/or variables
function print_login_history {
    last user
    last
    var="the above is a printout of the login history of the ubuntu server" 
    echo $var
}
    
# invocation:
print_login_history