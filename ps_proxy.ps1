# PowerShell�ł�Proxy�ݒ�
#  �_�C�A���O���\�������̂œ��͂���
#  �_�C�A���O���g�p���Ȃ����@���������������Ď��������A���܂����삵�Ȃ������B
#
$cre = Get-Credential
# popup��ʂ��J���̂Ńv���L�V�̔F�؏�����͂���B
[System.Net.WebRequest]::DefaultWebProxy.Credentials = $cre
# PowerShell�v���Z�X��DefaultWebProxy�̔F�؏��Ƃ��Đݒ肷��B

