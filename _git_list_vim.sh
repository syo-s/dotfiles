#!/bin/sh

git_clone_cmd='git clone'

list[0]='Shougo/neocomplete.vim'
list[1]='Shougo/unite.vim'
list[2]='Shougo/dein.vim' 
list[3]='Shougo/vimproc.vim' 
list[4]='Shougo/neocomplete.vim'
list[5]='Shougo/unite.vim'
list[6]='h1mesuke/unite-outline'
list[7]='Shougo/neomru.vim'
list[8]='kana/vim-textobj-function' 
list[9]='rhysd/vim-operator-surround'
list[10]='fuenor/JpFormat.vim'
list[11]='terryma/vim-multiple-cursors'
list[12]='tyru/open-browser.vim'
list[13]='kana/vim-textobj-user'  
list[14]='kana/vim-operator-user' 
list[15]='tyru/operator-camelize.vim'
list[16]='cocopon/vaffle.vim'
list[17]='vim-scripts/taglist.vim' 
list[18]='w0ng/vim-hybrid'
list[19]='vim-scripts/louver.vim'
list[20]='itchyny/lightline.vim'
list[21]='jremmen/vim-ripgrep'
list[22]='LeafCage/foldCC.vim'
list[23]='osyo-manga/vim-over'
list[24]='Shougo/denite.nvim'
list[25]='LeafCage/yankround.vim'
list[26]='tyru/caw.vim'
list[27]='Yggdroot/indentLine'
list[28]='joshdick/onedark.vim'
list[29]='Shougo/vimshell'
list[30]='Shougo/unite-build'
list[31]='Shougo/vinarise.vim'
list[32]='deris/vim-rengbang'
list[33]='itchyny/calendar.vim'
list[34]='mattn/benchvimrc-vim'
list[35]='kannokanno/previm'
list[36]='thinca/vim-qfreplace'
list[37]='thinca/vim-quickrun'
list[38]='godlygeek/tabular'
list[39]='dhruvasagar/vim-table-mode'
list[40]='Lokaltog/vim-easymotion'
list[41]='junegunn/vim-easy-align'
list[42]='shinespark/vim-list2tree' 
list[43]='kmnk/vim-unite-giti'
list[44]='tpope/vim-fugitive'
list[45]='gregsexton/gitv'
list[46]='vim-ruby/vim-ruby'
list[47]='moqada/autoit.vim--Breland'
list[48]='tpope/vim-cucumber'
list[49]='PProvost/vim-ps1'
list[50]='aohta/blockdiag.vim'
list[51]='aklt/plantuml-syntax'
list[52]='elzr/vim-json'
list[53]='cespare/vim-toml'
list[54]='rhysd/vim-clang-format.git'

dir='dein/'

for var in ${list[@]}
do
    $git_clone_cmd https://github.com/$var $dir$var
done






