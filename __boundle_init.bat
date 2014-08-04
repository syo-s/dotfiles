echo off

set gitbin=git

d:
cd %HOME%
mkdir .vim
cd .vim
mkdir bundle

cd bundle
%gitbin% clone https://github.com/Shougo/neobundle.vim.git
cd ..

cd %HOME%
mkdir .vimbackup
echo on
