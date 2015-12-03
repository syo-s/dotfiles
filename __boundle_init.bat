echo off

set gitbin=git

cd %HOME%
mkdir _vim
cd _vim
mkdir bundle
mkdir backup
mkdir etc

cd bundle
%gitbin% --version
%gitbin% clone https://github.com/Shougo/neobundle.vim.git
cd ..

pause
echo on

