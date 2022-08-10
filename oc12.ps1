<# Script: Ops Callenge 12: PowerShell IP Analysis #>
<# Author: Shay Crane 
<# Date of latest revisions: 08/09/2022
PUrpose: a PowerShell script that returns the IPv4 address of the computer
         using cmdlet Select-String to only return the IPv4 and no other info 
         and at least one function. 
        
I wrote the following script using a combination of scripts demonstrated during
today's lecture, and Example 4 in the document available by following this link: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-7.1 #>



function Search-IPAddress
{
    $Generate_Network_Report = ipconfig /all > "network_report.txt"
    Select-String -Path "network_report.txt" -Pattern "Ipv4 Address"
    Remove-Item -Path "network_report.txt"
}




