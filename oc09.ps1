<# Script: Ops Challenge - Log Retrieval via Powershell #>
<# Author: Shay Crane> #>
<# Date of latest revision: 08/04/2022 #>
<# Purpose: Retrieves System Logs #>


<#Objectives
Create a Powershell script that fetches useful System event logs.

Resources
Microsoft.PowerShell.Management documentation
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1


Tasks:

1. Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.#>

Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\Crane\Desktop\last_24.txt



<#2. Output all “error” type events from the System event log to a file on your desktop named errors.txt.#>

Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\Crane\Desktop\errors.txt



<#3. Print to the screen all events with ID of 16 from the System event log.#>

Get-EventLog -System | Where-Object {$_.EventID -eq 16}



<#4. Print to the screen the most recent 20 entries from the System event log.#>

Get-EventLog -LogName System -Newest 20



<#5. Print to the screen all sources of the 500 most recent entries in the System 
event log. Ensure that the full lines are displayed (get rid of the 
… and show the entire text).#>

Get-EventLog -LogName System -Newest 500 | Format-Table -Autosize

<#The following is a script a classmate wrote that I kept on hand as a reference for No. 5, 
but I found a different way to achieve the result parameters laid out in the assignment: 

$Events = Get-EventLog -LogName System -Newest 500 
$Events | Groups-Object -Property Source | Format-Table -Wrap -AutoSize#>
