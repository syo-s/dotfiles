# PowerShellでのProxy設定
#  ダイアログが表示されるので入力する
#  ダイアログを使用しない方法をいくつか検索して試したが、うまく動作しなかった。
#
$cre = Get-Credential
# popup画面が開くのでプロキシの認証情報を入力する。
[System.Net.WebRequest]::DefaultWebProxy.Credentials = $cre
# PowerShellプロセスのDefaultWebProxyの認証情報として設定する。

