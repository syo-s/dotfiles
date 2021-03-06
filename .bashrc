# ~/.bash_rc

eval "$(starship init bash)"
#----------------------------------------------------------------------
#PS1='bash:$PWD >'
#export PS1="\u@\h \w\n\$ "
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$"
#----------------------------------------------------------------------

#----------------------------------------------------------------------
echo 
echo  !-- Now bash version $BASH_VERSION start --!
echo 
uname -a 
echo MSYSTEM = $MSYSTEM
echo
#----------------------------------------------------------------------

#export LESSCHARSET=sjis
#bash_ver=$BASH_VERSION
#if [ "${bash_ver:0:1}" = "3" ]; then
#    MSYS=MSYS1
#else
#    MSYS=MSYS2
#    export PATH=$(ruby -r rubygems -e "puts Gem.user_dir")/bin:~/.gem/ruby:$PATH
#fi

export PATH=$PATH:~/dotfiles/:~/../app/graphviz/bin:~/../app/MinGit-2.14.1-64-bit/cmd
export PATH=$(ruby -r rubygems -e "puts Gem.user_dir")/bin:~/.gem/ruby:$PATH
export LANG=ja_JP.UTF-8

#system_name=$(uname -o)
#if [ "$system_name" = "Msys" ]; then
##	alias git='/c/git/bin/git.exe'
#	alias cd_git='cd /D/USER/Download/GNU/git_folder'
##	export LANG=ja_JP.SJIS
#else
#	alias cd_git='cd /cygdrive/D/USER/Download/GNU/git_folder'
##	export LANG=ja_JP.UTF-8
#fi

# if [ ! -z "${CHERE_INVOKING}" ]; then
#   unset CHERE_INVOKING
#   if [ -n "${CONEMUWORKDIR}" ]; then
#       echo ${CONEMUWORKDIR}
#       cd ${CONEMUWORKDIR}
#   fi
# else
#   cd "${HOME}" || echo "WARNING: Failed attempt to cd into ${HOME}!"
# fi

# app_root="/c/home/app"
# #FIND_OPT="-type d -name .git -prune "
# FIND_OPT="-type f"

#export proxy_setting="http://Nbr_Shimada%40shi.co.jp:05j151@yksproxy.shi.co.jp:8080"
#export http_proxy=$proxy_setting
#export https_proxy=$proxy_setting
#export ftp_proxy=$proxy_setting

#----------------------------------------------------------------------
# alias setting

# vim_root="$app_root/vim74-kaoriya-win32"
# alias vim="$vim_root/vim.exe"
# alias gvim="$vim_root/gvim.exe"

#alias wget='wget -c -T 2'
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -i'
alias ll='ls -alF --color=auto --show-control-chars'
alias ls='ls -F --color=auto --show-control-chars -N'
alias git-t='git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'
#alias ctags='ctags --output-encoding=cp932'
alias ctags='ctags --output-encoding=cp932 --input-encoding=cp932'

# alias rxvt='rxvt -sl 1000 -fg White -bg Black -sr'
# alias vimproccp="mv ~/.cache/dein/repos/github.com/Shougo/vimproc.vim/lib/vimproc_win32.dll ~/.dein/lib/."
# #alias ctags='ctags -R --c-kinds=+p --fields=+S'
# alias tag='ctags -R;'
# alias hist='history | less'
# alias lless='dir -alF | less'
# alias muenc1="find . ${FIND_OPT} -o -iname '*.mu' -print -maxdepth 1 -exec muencrypt -d {} ./xx/{} \;"
# alias muenc2="find . ${FIND_OPT} -o -iname '*.mu' -print -maxdepth 1 -exec muencrypt ./xx/{} {} \;"
# 
# alias clr1="find . ${FIND_OPT} -o -type d -iname '[Rr]ealase -exec find {} '*.src' -print \; | xargs echo"
# alias clr2="find . ${FIND_OPT} -o -type f -size 0 -iname '[0-9]*' -print"
# alias tmux_clr='rm -rf /tmp/tmux* && tmux'
# alias wgetu='wget --user-agent="Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko"'
# # Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko
# 
# 
# #----------------------------------------------------------------------
# # 空フォルダに emptyファイル作成
# alias cre_keep1="find . ${FIND_OPT} -o -type d -print -empty -exec touch {}\/.gitkeep \;"
# alias cre_keep2="find . ${FIND_OPT} -o  -p -type d -empty -print -exec touch {}/.gitkeep \;"
# 
# #----------------------------------------------------------------------
# # エディタ一時ファイルクリア
# EF_LIST[ 0]="@ '*~'" 
# EF_LIST[ 1]="@ '*.~*'" 
# EF_LIST[ 2]="@ '#*#'" 
# EF_LIST[ 3]="@ '\$*'" 
# EF_LIST[ 4]="@ '*.swp'" 
# #EF_LIST[ 5]="@ '*.bak'" 
# EF_LIST[ 6]="@ 'ErrLog'" 
# EF_LIST[ 7]="@ '.*.sw[a-z]'"
# EF_LIST[ 8]="@ '*.un'"
# EF_LIST[ 9]="@ 'Session.vim'"
# EF_LIST[10]="@ '*.UN~'" 
# 
# EF_LIST_L1=${EF_LIST[0]}
# EF_LIST_L2=${EF_LIST[@]:1}
# EF_LIST_L3=${EF_LIST_L1/@/-iname }
# EF_LIST_L4=${EF_LIST_L2//@/-o -iname }
# EF_LIST_A="${EF_LIST_L3} ${EF_LIST_L4}"
# 
# alias clrve="find . ${FIND_OPT} -o  \( ${EF_LIST_A} \) -print"
# alias clree="find . ${FIND_OPT} -o  \( ${EF_LIST_A} \) -print -exec rm {} \;"
# 
# #----------------------------------------------------------------------
# # TAGSファイル 一時ファイルクリア
# TF_LIST[ 0]="@ 'tags'" 
# TF_LIST[ 1]="@ 'GPATH'" 
# TF_LIST[ 2]="@ 'GRTAGS'" 
# TF_LIST[ 3]="@ 'GSYMS'" 
# TF_LIST[ 4]="@ 'GTAGS'" 
# 
# TF_LIST_L1=${TF_LIST[0]}
# TF_LIST_L2=${TF_LIST[@]:1}
# TF_LIST_L3=${TF_LIST_L1/@/-iname }
# TF_LIST_L4=${TF_LIST_L2//@/-o -iname }
# 
# TF_LIST_A="${TF_LIST_L3} ${TF_LIST_L4}"
# 
# alias clrvt="find . ${FIND_OPT} -o \( ${TF_LIST_A} \)  -print"
# alias clret="find . ${FIND_OPT} -o \( ${TF_LIST_A} \)  -print -exec rm {} \;"
# 
# #----------------------------------------------------------------------
# # PATCH ファイルクリア
# PF_LIST[ 0]="@ '*.rej'" 
# PF_LIST[ 1]="@ '*.orig'" 
# PF_LIST[ 2]="@ '*.*.LOCAL.*'" 
# PF_LIST[ 2]="@ '*.*.REMOTE.*'" 
# PF_LIST[ 2]="@ '*.*.BASE.*'" 
# 
# PF_LIST_L1=${PF_LIST[0]}
# PF_LIST_L2=${PF_LIST[@]:1}
# PF_LIST_L3=${PF_LIST_L1/@/-iname }
# PF_LIST_L4=${PF_LIST_L2//@/-o -iname }
# PF_LIST_A="${PF_LIST_L3} ${PF_LIST_L4}"
# 
# alias clrvp="find . ${FIND_OPT} -o \( ${PF_LIST_A} \) -print"
# alias clrep="find . ${FIND_OPT} -o \( ${PF_LIST_A} \) -print -exec rm {} \;"
# 
# #----------------------------------------------------------------------
# # SHC 一時ファイルクリア
# SF_LIST[ 0]="@ '*.[wp][0-9][0-9]'" 
# #SF_LIST[ 1]="@ '*.obj'" 
# #SF_LIST[ 2]="@ '*.dwi'" 
# #SF_LIST[ 3]="@ '*.sh?'" 
# #SF_LIST[ 4]="@ '*.lst'" 
# #SF_LIST[ 5]="@ '*.o'" 
# SF_LIST[ 6]="@ 'old_*.hws'" 
# SF_LIST[ 7]="@ 'old_*.hsf'" 
# SF_LIST[ 8]="@ 'old_*.hwp'" 
# SF_LIST[ 9]="@ 'old_*.tws'" 
# SF_LIST[10]="@ '*.hlk'" 
# SF_LIST[11]="@ '*.hdp'" 
# SF_LIST[12]="@ '*.lbk'" 
# SF_LIST[13]="@ '*.lis'" 
# SF_LIST[14]="@ '*.depa'" 
# #SF_LIST[15]="@ '*.abs'" 
# SF_LIST[16]="@ '*~.nib'"
# #SF_LIST[17]="@ '*.lib'" 
# 
# SF_LIST_L1=${SF_LIST[0]}
# SF_LIST_L2=${SF_LIST[@]:1}
# SF_LIST_L3=${SF_LIST_L1/@/-iname }
# SF_LIST_L4=${SF_LIST_L2//@/-o -iname }
# SF_LIST_A="${SF_LIST_L3} ${SF_LIST_L4}"
# 
# alias clrvs="find . ${FIND_OPT} -o \( ${SF_LIST_A} \) -print "
# alias clres="find . ${FIND_OPT} -o \( ${SF_LIST_A} \) -print -exec rm -f {} \;"
# 
# #----------------------------------------------------------------------
# # 調整ツール 一時ファイルクリア
# C_LIST[ 0]="@ '*.obj*'" 
# C_LIST[ 1]="@ '*.ddp*'" 
# C_LIST[ 2]="@ '*.dfm*'" 
# C_LIST[ 3]="@ '*.h*'" 
# C_LIST[ 4]="@ '*.cpp*'" 
# C_LIST[ 5]="@ '*.tds*'" 
# C_LIST[ 6]="@ '*~'" 
# C_LIST[ 7]="@ '*.~*'" 
# 
# C_LIST_L1=${C_LIST[0]}
# C_LIST_L2=${C_LIST[@]:1}
# C_LIST_L3=${C_LIST_L1/@/-iname }
# C_LIST_L4=${C_LIST_L2//@/-o -iname }
# C_LIST_A="${C_LIST_L3} ${C_LIST_L4}"
# 
# alias clrvc="find . ${FIND_OPT} -o \( ${C_LIST_A} \) -print "
# alias clrec="find . ${FIND_OPT} -o \( ${C_LIST_A} \) -print -exec rm -f {} \;"
# 
# 
# #----------------------------------------------------------------------
# # ファイルクリア
# alias clrva="find . ${FIND_OPT} -o \( ${EF_LIST_A} -o ${TF_LIST_A} -o ${PF_LIST_A} -o ${SF_LIST_A} \) -print "
# alias clrea="find . ${FIND_OPT} -o \( ${EF_LIST_A} -o ${TF_LIST_A} -o ${PF_LIST_A} -o ${SF_LIST_A} \) -print -exec rm -f {} \;"
# 
# 
# #----------------------------------------------------------------------
# #diff関係
# # DF_LIST[0]="-x \"#*#\""
# # DF_LIST[1]="-x \"*.*~\"" 
# # DF_LIST[2]="-x \"*.~*\"" 
# # DF_LIST[3]="-x \"*.???\""
# # DF_LIST[4]="-x \"*.[Hh][lL]*\"" 
# # DF_LIST[5]="-x \"*.[^cChH]*\"" 
# # DF_LIST[6]="-x \"*.[cChH]?\"" 
# # DF_LIST[7]="-x \"*.[cChH]??\"" 
# # DF_LIST[8]="-x \"*.[hH][wW]*\"" 
# # DF_LIST[9]="-x \"*.[pw][0-9][0-9]\"" 
# # DF_LIST[10]="-x \"*.h[sl][fk]\"" 
# # DF_LIST[11]="-x \"*.hw?\"" 
# # DF_LIST[12]="-x \"Debug\"" 
# # DF_LIST[13]="-x \"Release\"" 
# # DF_LIST[14]="-x \"TAGS\"" 
# # DF_LIST[15]="-x \"tags\"" 
# # DF_LIST[16]="-x \"\$*\"" 
# # 
# # alias diffm="diff -ur ${DF_LIST[@]}"
# 
# #function find() {
# #    /bin/find ${*} | /bin/cat -
# #}
# 
# #function wget() {
# #    /bin/wget ${*} | /bin/cat -
# #}
# 
# #-------------------------------------------------------------------------------- 
# # hsenvが設定されているディレクトリへ入った時、
# # また出た時に自動でactivate/deactivateが動くようにする関数
# precmd() {
#   local search_dir=$PWD
#   while [ $search_dir != "/" ]; do
#     local hsenv_found=false
#     for dir in `cd $search_dir && find . -maxdepth 1 -type d -name ".hsenv*"`; do
#       if $hsenv_found; then
#         echo multiple environments in $search_dir , manual activaton required
#         return        
#       elif [ -n "$dir" ] && [ -e $search_dir/$dir/bin/activate ]; then
#         hsenv_found=true
#       fi
#     done
#     if ! $hsenv_found; then
#       search_dir=`cd $search_dir/.. && pwd`
#       continue
#     fi
#     if [ -n "$HSENV" ] && [ "$HSENV" != "$search_dir" ]; then
#       deactivate_hsenv
#     fi
#     if [ -z "$HSENV" ]; then
#       pwd_backup=$PWD
#       cd $search_dir
#       source .hsenv*/bin/activate
#       cd $pwd_backup
#     fi
#     return
#   done
#   if [ -n "$HSENV" ]; then
#     deactivate_hsenv
#   fi
# }
# export PROMPT_COMMAND=precmd
# 
# function peco-cd {
#     local dir="$( find . -maxdepth 1 -type d | sed -e 's;\./;;' | peco )"
#     if [ ! -z "$dir" ] ; then
#         cd "$dir"
#     fi
# }
# 
# 
# end of ~/.bashrc
#---------------------------------ここまで-----------------------------
