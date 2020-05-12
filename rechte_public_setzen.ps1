$NewAcl = Get-Acl "C:\Users\Default"
Set-Acl -Path "C:\Users\Public" -AclObject $NewAcl
Get-ChildItem -Path "C:\Users\Public" -Recurse -Force | Set-Acl -AclObject $NewAcl