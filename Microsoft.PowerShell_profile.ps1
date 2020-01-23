# 设置vim的配置文件件
# 1.pshell下`Set-ExecutionPolicy RemoteSigned`-->Y
# 2.生成配置文件件-->`new-item -path $profile -itemtype file -force`
#set-alias vim "C:\Program Files (x86)\Vim\vim80\vim.exe" # 此处为vim的安装路径
#Function Edit-Profile
#{
 #   vim $profile
#}
#Function Edit-Vimrc
#{
 #   vim $HOME\_vimrc
#}
# 设置terminal的git和oh-my-posh
Import-Module posh-git
Import-Module oh-my-posh
# 禁用原来的Ctrl +r
 Remove-PSReadlineKeyHandler 'Ctrl+r'

# PSFzf
Import-Module PSFzf

# 设置主题
Set-Theme tehrob

# tab自动补全
 Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# 设置ls
function lsa {
	Param ([int]$c = 5)
	ls | Format-Wide -Column $c -Property Name
}


Set-PSReadlineOption -EditMode Vi
# Set-PSReadlineOption -ViModeIndicator Cursor
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete