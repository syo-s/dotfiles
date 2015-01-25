echo off

set gitbin=git

cd %HOME%
mkdir .vimbackup
mkdir .vim
cd .vim
mkdir bundle

cd bundle
%gitbin% clone https://github.com/Shougo/neobundle.vim.git
cd ..

cd %HOME%
mkdir .vimbackup
echo on
