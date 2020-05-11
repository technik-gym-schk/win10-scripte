$users = Get-LocalUser -Name s*
foreach($user in $users){
    $folders = Get-ChildItem -Path "C:\Users\$($user.name)"
    foreach($folder in $folders){
        Remove-Item "C:\Users\$($user.name)\$($folder.name)\*" -Force -Recurse
    }
}