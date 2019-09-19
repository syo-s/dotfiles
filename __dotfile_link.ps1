$env_home=[System.Environment]::GetEnvironmentVariable("HOME", "USER")
echo $env_home
cmd /c mklink $env_home\.profile $env_home\dotfiles\.profile
cmd /c mklink $env_home\.inputrc $env_home\dotfiles\.inputrc
cmd /c mklink $env_home\.bashrc $env_home\dotfiles\.bashrc
cmd /c mklink $env_home\.bash_profile $env_home\dotfiles\.bash_profile
cmd /c mklink $env_home\.ptignore $env_home\dotfiles\.ptignore
cmd /c mklink $env_home\.gitconfig $env_home\dotfiles\.gitconfig

cmd /c mklink $env_home\.vimrc $env_home\dotfiles\.vimrc
cmd /c mklink $env_home\.gvimrc $env_home\dotfiles\.gvimrc
cmd /c mklink $env_home\.vimrc_minpac $env_home\dotfiles\.vimrc_minpac

#cmd /c mklink $env_home\.vimrc_neobundle $env_home\dotfiles\.vimrc_neobundle
#cmd /c mklink $env_home\.vimrc_dein $env_home\dotfiles\.vimrc_dein
#cmd /c mklink $env_home\.vimrc_vim_plug $env_home\dotfiles\.vimrc_vim_plug
#cmd /c mklink $env_home\dein.toml $env_home\dotfiles\dein.toml
#cmd /c mklink $env_home\dein_lazy.toml $env_home\dotfiles\dein_lazy.toml

#pause

