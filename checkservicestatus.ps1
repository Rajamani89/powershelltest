$proc = Get-Service
$stoppedservice = 0
$runningservice = 0
"This service is stopped"
foreach ( $i in $proc)
{
if ($i.Status -eq  "Stopped")
{
$i.Name
" "
$i.DisplayName
$stoppedservice = $stoppedservice + 1
}
}
"
This service is Running
"
foreach ( $i in $proc)
{
if ($i.Status -eq  "Running")
{
$i.Name
" "
$i.DisplayName
$runningservice = $runningservice + 1
}
}
"Total running service are $runningservice"
"Total stopped service are $stoppedservice"
