<# Script: Ops Challenge 10 - Feature Tasks and Requirements
Author: Shay Crane>
Date of latest revision: 08/07/2022
Purpose: Retrieves System Logs #> 

<# Objective
Create a Powershell script that performs these operations on separate lines. The overall script is not designed to operate holistically, but rather act as a reference for how to execute various interesting operations with the process family of Powershell commandlets. Clearly indicate with comments each component below.


-----------------------
Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.#>

Get-Process | Sort-Object -Property CPU -Descending



<#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.#>

Get-Process | Sort-Object -Property PID -Descending



<# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top. #>

Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5



<# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/. 
Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
Close all Internet Explorer windows. #>

for ($i- 1; $i -le 10; $i++) { Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/ }



<# Kill a process by its Process Identification Number. 
Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge. #>

Get-Process -Name msedge <#<--- this line is to demonstrate the program the PID refers to (msedge)#>
Stop-Process -ID 2524 <# <--- this line kills the prgram by it's PID#>


