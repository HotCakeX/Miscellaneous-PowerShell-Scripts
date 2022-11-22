# Run it as Admin, Firewall logging must be already enabled in order for this to work.

function Get-WindowsFirewallLog {
    param(
        [parameter(Position=0,Mandatory=$false)]
        [ValidateScript({Test-Path $_})]
        [string]$LogFilePath = "$env:SystemRoot\System32\LogFiles\Firewall\pfirewall.log"
    )

    # CSV header fields, to be used later when converting each line of the tailed log from CSV
    $headerFields = @("date","time","action","protocol","src-ip","dst-ip","src-port","dst-port","size","tcpflags","tcpsyn","tcpack","tcpwin","icmptype","icmpcode","info","path")
 
    # Read in the firewall log
    $firewallLogs = Get-Content $LogFilePath | ConvertFrom-Csv -Header $headerFields -Delimiter ' '

    # Output logs into a gridview
    $firewallLogs | Out-GridView
}

Get-WindowsFirewallLog
