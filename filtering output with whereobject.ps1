"running service"
Get-Service | Where-Object{$_.Status -eq "Running"}
"stopped service"
Get-Service | Where-Object{$_.Status -eq "Stopped"}
"Microsoft service"
Get-Service | Where-Object{$_.DisplayName -match "Microsoft"}
"
#####################
Microsoft service stopped
#####################
"
Get-Service | Where-Object{($_.DisplayName -match "Microsoft") -and ($_.Status -eq "Stopped") }
