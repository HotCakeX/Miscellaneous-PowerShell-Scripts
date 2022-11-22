# Uses Netstat to show you a nice and live real-time view of connections in Windows
# Doesn't need admin privileges
$headers = @()
netstat -f | Select-Object -skip 3 | ForEach-Object {
   
    $columns = $_.Trim() -split '\s{2,}'
   
    if( -not $headers ) {
        $headers = $columns
    }
    else { 
        $objectProperties = [ordered] @{}
        $i = 0
        foreach( $key in $headers ) {
            $objectProperties[ $key ] = $columns[ $i++ ]
        }
        [PSCustomObject] $objectProperties
    }
} | Out-GridView
