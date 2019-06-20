$proxy_str='http://Nbr_Shimada%40shi.co.jp:05j151@yksproxy.shi.co.jp:8080'
$home_dir='C:\home\Nbr_S'
$musec_dir='C:\Sumitomo Heavy Industries\MuSec Ver.3.2\bin'
$temp_dir='C:\temp'
$add_path=';c:\work'

Set-ExecutionPolicy RemoteSigned -scope CurrentUser

#----------------------------------------------------
# ユーザー環境変数
#----------------------------------------------------

[System.Environment]::SetEnvironmentVariable("HOME",                  $home_dir,             "User")
[System.Environment]::SetEnvironmentVariable("http_proxy",            $proxy_str,            "User")
[System.Environment]::SetEnvironmentVariable("https_proxy",           $proxy_str,            "User")
[System.Environment]::SetEnvironmentVariable("ftp_proxy",             $proxy_str,            "User")
[System.Environment]::SetEnvironmentVariable("rsync_proxy",           $proxy_str,            "User")
[System.Environment]::SetEnvironmentVariable("no_proxy",              "localhost,127.0.0.1", "User")
[System.Environment]::SetEnvironmentVariable("MSYS2_PATH_TYPE",       "inherit",             "User")
[System.Environment]::SetEnvironmentVariable("_XD_XTPC_NO_CONSOLE__", "1",                   "User")
[System.Environment]::SetEnvironmentVariable("MUSEC_DEBUG_OUTPUT",    "1",                   "User")
[System.Environment]::SetEnvironmentVariable("MUSEC_EDIT_PATH",       $musec_dir,            "User")
[System.Environment]::SetEnvironmentVariable("TEMP",                  $temp_dir,             "User")
[System.Environment]::SetEnvironmentVariable("TMP",                   $temp_dir,             "User")
$oldSystemPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
$oldSystemPath += $add_path
echo $oldSystemPath
#[System.Environment]::SetEnvironmentVariable("Path", $oldSystemPath, "User")




#----------------------------------------------------
#システム環境変数のPathに値を追加する
#----------------------------------------------------
#$oldSystemPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
#$oldSystemPath += ";c:\work"
#[System.Environment]::SetEnvironmentVariable("Path", $oldSystemPath, "Machine")

