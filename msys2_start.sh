#!/bin/sh
machine=$(uname -m)

echo ${machine}

pacman -S --needed \
    base-devel \
    msys2-devel \
    VCS \
    development 

pacman -S --needed \
    ruby \
    tmux 

pacman -S --needed \
    mingw-w64-${machine}-toolchain \
    mingw-w64-${machine}-clang \
    mingw-w64-${machine}-clang-analyzer \
    mingw-w64-${machine}-clang-tools-extra \
    mingw-w64-${machine}-ruby \
    mingw-w64-${machine}-universal-ctags-git \
    mingw-w64-${machine}-gnuplot \
    mingw-w64-${machine}-graphviz 


