{
"############################"
"welcome to process and service checker"
"#############################"
$filtername =  Read-Host -Prompt "Enter the name of the filter you want to check"
$proc = Get-Process
$serv = Get-Service
$proccount = 0
$servcount = 0
"######################################"
"######################################"
"##### process searching ##############"
"######################################"
foreach ( $i in $proc)
{
if ($i.ProcessName -match $filtername)
{

"process name : " + $i.ProcessName
"process id :   " + $i.Id
" "
$proccount = $proccount + 1
}
}
"total process we found are $proccount "
"######################################"
"######################################"
"##### service searching ##############"
"######################################"
foreach ( $i in $serv)
{
if ($i.DisplayName -match $filtername)
{

"service name : " + $i.Name
"description  : " + $i.DisplayName
"status       : " + $i.Status
" "
$servcount = $servcount + 1
}
}
"total service we found are $servcount "
Read-Host -Prompt "Press any key to exit .. :) "
}

systemsearch
