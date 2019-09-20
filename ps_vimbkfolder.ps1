$myhome = [System.Environment]::GetEnvironmentVariable("HOME", "User")
$myhome

New-Item -ItemType Directory $myhome\_vim
New-Item -ItemType Directory $myhome\_vim\backup
New-Item -ItemType Directory $myhome\_vim\etc
