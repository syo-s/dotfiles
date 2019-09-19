$myhome = [System.Environment]::GetEnvironmentVariable("HOME", "User")
$myhome
$current=(Get-Location).Path
$current

New-Item -ItemType Directory  $myhome/_vim/pack/minpac/opt
Set-Location -path $myhome/_vim/pack/minpac/opt
cmd /c git clone https://github.com/k-takata/minpac.git
Set-Location -path $current
