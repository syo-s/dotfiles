#----------------------------------------------------------------------
# proxy set
#----------------------------------------------------------------------
[net.webrequest]::defaultwebproxy = new-object net.webproxy "http://yksproxy.shi.co.jp:8080"
[net.webrequest]::defaultwebproxy.credentials = [net.credentialcache]::defaultcredentials
[net.webrequest]::defaultwebproxy.credentials = new-object net.networkcredential 'Nbr_Shimada@shi.co.jp', '05j151'


$scoop_install_dir = 'C:\Scoop'
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

#----------------------------------------------------------------------
# scoop body
#----------------------------------------------------------------------
[environment]::setEnvironmentVariable('SCOOP',$scoop_install_dir,'User')
$env:SCOOP=$scoop_install_dir
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

#----------------------------------------------------------------------
# bucket
#----------------------------------------------------------------------
scoop bucket add extras
scoop bucket add scoop-for-jp https://github.com/rkbk60/scoop-for-jp
scoop bucket add scoop-iyokan-jp https://github.com/tetradice/scoop-iyokan-jp

