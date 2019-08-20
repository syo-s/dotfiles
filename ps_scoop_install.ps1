#----------------------------------------------------------------------
# scoop setting
#----------------------------------------------------------------------
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
$scoop_install_dir = 'C:\Scoop'
[environment]::setEnvironmentVariable('SCOOP',$scoop_install_dir,'User')
$env:SCOOP=$scoop_install_dir

#----------------------------------------------------------------------
# proxy set ie download
#----------------------------------------------------------------------
[net.webrequest]::defaultwebproxy = new-object net.webproxy "http://yksproxy.shi.co.jp:8080"
[net.webrequest]::defaultwebproxy.credentials = [net.credentialcache]::defaultcredentials
[net.webrequest]::defaultwebproxy.credentials = new-object net.networkcredential 'Nbr_Shimada@shi.co.jp', '05j151'

#----------------------------------------------------------------------
# scoop download
#----------------------------------------------------------------------
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

#----------------------------------------------------------------------
# proxy set scoop
#----------------------------------------------------------------------
scoop config proxy 'Nbr_Shimada%40shi.co.jp:05j151@yksproxy.shi.co.jp:8080'

#----------------------------------------------------------------------
# bucket
#----------------------------------------------------------------------
scoop bucket add extras
scoop bucket add scoop-for-jp https://github.com/rkbk60/scoop-for-jp
scoop bucket add scoop-iyokan-jp https://github.com/tetradice/scoop-iyokan-jp

