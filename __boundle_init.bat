echo off

set gitbin=git

cd %HOME%
mkdir .vim
cd .vim
mkdir bundle
mkdir backup
mkdir etc

cd bundle
%gitbin% --version
%gitbin% clone https://github.com/Shougo/neobundle.vim.git
cd ..

echo on
