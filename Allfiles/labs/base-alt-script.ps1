$selectedSub = $args[0]
$inits = $args[1]
$user = $args[2]

Select-AzSubscription -SubscriptionId $selectedSub
$suffix = "sep" + $inits

$sqlUser = $env:sqlUser
$sqlPassword = $env:sqlPassword

$synapseWorkspace = $env:synapseWorkspace
$dataLakeAccountName = $env:dataLakeAccountName
$sparkPool = $env:sparkPool
$sqlDatabaseName = $env:sqlDatabaseName
$files = $env:files
$resourceGroupName = $env:resourceGroupName

$params = @{
    "inits" = $inits
    "user" = $user
}

$token = (Get-AzAccessToken -ResourceUrl https://database.windows.net).Token 