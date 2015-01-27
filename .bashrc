# ~/.bash_rc

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

#export PATH=/local/bin:/bin:/c/MinGW-new/bin::/c/MinGW-new/crosstool/bin:/c/ruby/ruby187/bin/:$PATH
bash_ver=$BASH_VERSION
if [ "${bash_ver:0:1}" = "3" ]; then
    MSYS=MSYS1
else
    MSYS=MSYS2
    export PATH=$(ruby -rubygems -e "puts Gem.user_dir")/bin:~/.gem/ruby:$PATH
fi

system_name=$(uname -o)
#if [ "$system_name" = "Msys" ]; then
##	alias git='/c/git/bin/git.exe'
#	alias cd_git='cd /D/USER/Download/GNU/git_folder'
##	export LANG=ja_JP.SJIS
#else
#	alias cd_git='cd /cygdrive/D/USER/Download/GNU/git_folder'
##	export LANG=ja_JP.UTF-8
#fi

if [ ! -z "${CHERE_INVOKING}" ]; then
  unset CHERE_INVOKING
  if [ -n "${CONEMUWORKDIR}" ]; then
      echo ${CONEMUWORKDIR}
      cd ${CONEMUWORKDIR}
  fi
else
  cd "${HOME}" || echo "WARNING: Failed attempt to cd into ${HOME}!"
fi

app_root="/c/home/app"
vim_root="$app_root/vim74-kaoriya-win32"

alias vim="$vim_root/vim.exe"
alias gvim="$vim_root/gvim.exe"

#alias wget='wget -c -T 2'
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -i'
alias ll='ls -alF --color=auto --show-control-chars'
alias ls='ls -F --color=auto --show-control-chars -N'
#alias ll='ls -alF --show-control-chars'
#alias ls='ls -F --show-control-chars'
alias work='cd /d/User/prog/Job'
alias rxvt='rxvt -sl 1000 -fg White -bg Black -sr'
alias cygget1='wget -N -r -l 1 --no-remove-listing -k -np -c -e robots=off -A.ini,.bz2 http://ftp.iij.ad.jp/pub/cygwin'
alias cygget2='wget -m -k -np -c -e robots=off -A.bz2 -R "*src.tar*" http://ftp.iij.ad.jp/pub/cygwin/release'
alias cygget='cygget1;cygget2'

#alias ctags='ctags -R --c-kinds=+p --fields=+S'
alias tag='ctags -R;'
alias tag2='ctags -R --langmap=c:+.dat; gtags'
alias hist='history | less'
alias lless='dir -alF | less'
alias muenc1="find -iname '*.mu' -print -maxdepth 1 -exec muencrypt -d {} ./xx/{} \;"
alias muenc2="find -iname '*.mu' -print -maxdepth 1 -exec muencrypt ./xx/{} {} \;"

alias clr1="find . -type d -iname '[Rr]ealase -exec find {} '*.src' -print \; | xargs echo"
alias clr2="find . -type f -size 0 -iname '[0-9]*' -print"


#----------------------------------------------------------------------
# ��t�H���_�� empty�t�@�C���쐬
#alias cre_gitig=" find . -type d -empty -not -path './.git*' -exec touch {}\/.gitignore \;"
#alias cre_empty=" find . -type d -empty -print -exec touch {}\/empty \;"
alias cre_keep1="find . -type d -print -empty -exec touch {}\/.gitkeep \;"
alias cre_keep2="find . -type d -name .git -prune -p -type d -empty -print -exec touch {}/.gitkeep \;"

#----------------------------------------------------------------------
# �G�f�B�^�ꎞ�t�@�C���N���A
EF_LIST[ 0]="@ '*~'" 
EF_LIST[ 1]="@ '*.~*'" 
EF_LIST[ 2]="@ '#*#'" 
EF_LIST[ 3]="@ '\$*'" 
EF_LIST[ 4]="@ '*.swp'" 
#EF_LIST[ 5]="@ '*.bak'" 
EF_LIST[ 6]="@ 'ErrLog'" 
EF_LIST[ 7]="@ '.*.sw[a-z]'"
EF_LIST[ 8]="@ '*.un'"
EF_LIST[ 9]="@ 'Session.vim'"
EF_LIST[10]="@ '*.UN~'" 

EF_LIST_L1=${EF_LIST[0]}
EF_LIST_L2=${EF_LIST[@]:1}
EF_LIST_L3=${EF_LIST_L1/@/-iname }
EF_LIST_L4=${EF_LIST_L2//@/-o -iname }
EF_LIST_A="${EF_LIST_L3} ${EF_LIST_L4}"

alias clrve="find . \( ${EF_LIST_A} \) -print"
alias clree="find . \( ${EF_LIST_A} \) -print -exec rm {} \;"

#----------------------------------------------------------------------
# TAGS�t�@�C�� �ꎞ�t�@�C���N���A
TF_LIST[ 0]="@ 'tags'" 
TF_LIST[ 1]="@ 'GPATH'" 
TF_LIST[ 2]="@ 'GRTAGS'" 
TF_LIST[ 3]="@ 'GSYMS'" 
TF_LIST[ 4]="@ 'GTAGS'" 

TF_LIST_L1=${TF_LIST[0]}
TF_LIST_L2=${TF_LIST[@]:1}
TF_LIST_L3=${TF_LIST_L1/@/-iname }
TF_LIST_L4=${TF_LIST_L2//@/-o -iname }

TF_LIST_A="${TF_LIST_L3} ${TF_LIST_L4}"

alias clrvt="find . \( ${TF_LIST_A} \) -print"
alias clret="find . \( ${TF_LIST_A} \) -print -exec rm {} \;"

#----------------------------------------------------------------------
# PATCH �t�@�C���N���A
PF_LIST[ 0]="@ '*.rej'" 
PF_LIST[ 1]="@ '*.orig'" 

PF_LIST_L1=${PF_LIST[0]}
PF_LIST_L2=${PF_LIST[@]:1}
PF_LIST_L3=${PF_LIST_L1/@/-iname }
PF_LIST_L4=${PF_LIST_L2//@/-o -iname }
PF_LIST_A="${PF_LIST_L3} ${PF_LIST_L4}"

alias clrvp="find . \( ${PF_LIST_A} \) -print"
alias clrep="find . \( ${PF_LIST_A} \) -print -exec rm {} \;"

#----------------------------------------------------------------------
# SHC �ꎞ�t�@�C���N���A
SF_LIST[ 0]="@ '*.obj'" 
SF_LIST[ 1]="@ '*.dwi'" 
SF_LIST[ 2]="@ '*.sh?'" 
SF_LIST[ 3]="@ '*.lst'" 
SF_LIST[ 4]="@ '*.[wp][0-9][0-9]'" 
SF_LIST[ 5]="@ '*.o'" 
SF_LIST[ 6]="@ 'old_*.hws'" 
SF_LIST[ 7]="@ 'old_*.hsf'" 
SF_LIST[ 8]="@ 'old_*.hwp'" 
SF_LIST[ 9]="@ 'old_*.tws'" 
SF_LIST[10]="@ '*.hlk'" 
SF_LIST[11]="@ '*.hdp'" 
SF_LIST[12]="@ '*.lbk'" 
SF_LIST[13]="@ '*.lis'" 
SF_LIST[14]="@ '*.depa'" 
SF_LIST[15]="@ '*.abs'" 
SF_LIST[16]="@ '*~.nib'"
#SF_LIST[17]="@ '*.lib'" 

SF_LIST_L1=${SF_LIST[0]}
SF_LIST_L2=${SF_LIST[@]:1}
SF_LIST_L3=${SF_LIST_L1/@/-iname }
SF_LIST_L4=${SF_LIST_L2//@/-o -iname }
SF_LIST_A="${SF_LIST_L3} ${SF_LIST_L4}"

alias clrvs="find . \( ${SF_LIST_A} \) -print "
alias clres="find . \( ${SF_LIST_A} \) -print -exec rm -f {} \;"

#----------------------------------------------------------------------
# �����c�[�� �ꎞ�t�@�C���N���A
C_LIST[ 0]="@ '*.obj*'" 
C_LIST[ 1]="@ '*.ddp*'" 
C_LIST[ 2]="@ '*.dfm*'" 
C_LIST[ 3]="@ '*.h*'" 
C_LIST[ 4]="@ '*.cpp*'" 
C_LIST[ 5]="@ '*.tds*'" 
C_LIST[ 6]="@ '*~'" 
C_LIST[ 7]="@ '*.~*'" 

C_LIST_L1=${C_LIST[0]}
C_LIST_L2=${C_LIST[@]:1}
C_LIST_L3=${C_LIST_L1/@/-iname }
C_LIST_L4=${C_LIST_L2//@/-o -iname }
C_LIST_A="${C_LIST_L3} ${C_LIST_L4}"

alias clrvc="find . \( ${C_LIST_A} \) -print "
alias clrec="find . \( ${C_LIST_A} \) -print -exec rm -f {} \;"


#----------------------------------------------------------------------
# �t�@�C���N���A
alias clrva="find . \( ${EF_LIST_A} -o ${TF_LIST_A} -o ${PF_LIST_A} -o ${SF_LIST_A} \) -print "
alias clrea="find . \( ${EF_LIST_A} -o ${TF_LIST_A} -o ${PF_LIST_A} -o ${SF_LIST_A} \) -print -exec rm -f {} \;"


#----------------------------------------------------------------------
#diff�֌W
DF_LIST[0]="-x \"#*#\"" 
DF_LIST[1]="-x \"*.*~\"" 
DF_LIST[2]="-x \"*.~*\"" 
DF_LIST[3]="-x \"*.???\""
DF_LIST[4]="-x \"*.[Hh][lL]*\"" 
DF_LIST[5]="-x \"*.[^cChH]*\"" 
DF_LIST[6]="-x \"*.[cChH]?\"" 
DF_LIST[7]="-x \"*.[cChH]??\"" 
DF_LIST[8]="-x \"*.[hH][wW]*\"" 
DF_LIST[9]="-x \"*.[pw][0-9][0-9]\"" 
DF_LIST[10]="-x \"*.h[sl][fk]\"" 
DF_LIST[11]="-x \"*.hw?\"" 
DF_LIST[12]="-x \"Debug\"" 
DF_LIST[13]="-x \"Release\"" 
DF_LIST[14]="-x \"TAGS\"" 
DF_LIST[15]="-x \"tags\"" 
DF_LIST[16]="-x \"\$*\"" 

alias diffm="diff -ur ${DF_LIST[@]}"

#function find() {
#    /bin/find ${*} | /bin/cat -
#}

#function wget() {
#    /bin/wget ${*} | /bin/cat -
#}

# end of ~/.bashrc
#---------------------------------�����܂�-----------------------------
