# ����vim�������ļ���
# 1.pshell��`Set-ExecutionPolicy RemoteSigned`-->Y
# 2.���������ļ���-->`new-item -path $profile -itemtype file -force`
#set-alias vim "C:\Program Files (x86)\Vim\vim80\vim.exe" # �˴�Ϊvim�İ�װ·��
#Function Edit-Profile
#{
 #   vim $profile
#}
#Function Edit-Vimrc
#{
 #   vim $HOME\_vimrc
#}
# ����terminal��git��oh-my-posh
Import-Module posh-git
Import-Module oh-my-posh
# ����ԭ����Ctrl +r
 Remove-PSReadlineKeyHandler 'Ctrl+r'

# PSFzf
Import-Module PSFzf

# ��������
Set-Theme tehrob

# tab�Զ���ȫ
 Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# ����ls
function lsa {
	Param ([int]$c = 5)
	ls | Format-Wide -Column $c -Property Name
}


Set-PSReadlineOption -EditMode Vi
# Set-PSReadlineOption -ViModeIndicator Cursor
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete