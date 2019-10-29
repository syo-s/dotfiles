#!/bin/sh

machine=$(uname -m)

echo ${machine}

pacman -S --needed \
    VCS \
    libraries \
    development \
    base-devel 


pacman -S --needed \
    msys2-runtime-devel \
    pkg-config \
    zlib-devel \
    libffi-devel \
    gmp-devel \
    libcrypt-devel

pacman -S --needed \
    ruby \
    gcc \
    msys2-runtime-devel \
    pkg-config \
    zlib-devel \
    libffi-devel \
    gmp-devel \
    libcrypt-devel \
    fish \
    tmux 

pacman -S --needed \
    mingw-w64-${machine}-gcc \
    mingw-w64-${machine}-clang \
    mingw-w64-${machine}-clang-analyzer \
    mingw-w64-${machine}-clang-tools-extra \
    mingw-w64-${machine}-ruby \
    mingw-w64-${machine}-universal-ctags-git \
    mingw-w64-${machine}-gnuplot \
    mingw-w64-${machine}-graphviz 



