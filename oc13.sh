#!/bin/bash

# Script: Ops Callenge 1 - Domain Analyzer
# Author: Shay Crane 
# Date of latest revisions: 08/10/2022
# PUrpose: a script that asks a user to type a domain, then displays document about
# typed domain. To include commands: whois, dig, host, nslookup
# 
# https://www.howtogeek.com/680086/how-to-use-the-whois-command-on-linux/


echo Enter Domain
    read domain_name

function domain_document {
    nslookup $domain_name >> domain_information.txt
    whois $domain_name >> domain_information.txt
    dig $domain_name >> domain_information.txt
    host $domain_name >> domain_information.txt
}

domain_document 
nano domain_information.txt