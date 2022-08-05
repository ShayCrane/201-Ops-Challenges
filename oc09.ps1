<# Script: Ops Challenge - Log Retrieval via Powershell #>
<# Author: Shay Crane> #>
<# Date of latest revision: 08/04/2022 #>
<# Purpose: Retrieves System Logs #>




<#1.#>
Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\Crane\Desktop\last_24.txt

<#2.#>
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\Crane\Desktop\errors.txt

<#5.#>
$Events = Get-EventLog -LogName System -Newest 500 
$Events | Groups-Object -Property Source | Format-Table -Wrap -AutoSize


<#Objectives

Create a Powershell script that fetches useful System event logs.


Resources

Microsoft.PowerShell.Management documentation


Tasks

1. Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

2. Output all “error” type events from the System event log to a file on your desktop named errors.txt.

3. Print to the screen all events with ID of 16 from the System event log.

4. Print to the screen the most recent 20 entries from the System event log.’

5. Print to the screen all sources of the 500 most recent entries in the System 
event log. Ensure that the full lines are displayed (get rid of the 
… and show the entire text).#>