# ~/.bash_profile: executed by bash for login shells.



# ~/.bashrc
# hack against bash-3.*

#export HOMEPATH=$HOME
#export SHELL=/bin/bash
#export TERMCAP=/etc/termcap
#export http_proxy="localhost:8080"
#export TERM=vt100
#export LANG=ja_JP.SJIS
#export LESSCHARSET=japanese-sjis

#----------------------------------------------------------------------
# PATH
#

export HISTFILESIZE=50

#export PATH=/local/bin:/bin:/c/MinGW-new/bin::/c/MinGW-new/crosstool/bin:/c/ruby/ruby187/bin/:$PATH
#export PATH=$(ruby -rubygems -e "puts Gem.user_dir")/bin:~/.gem/ruby:$PATH

export CPATH=/usr/local/include:/usr/local/include/boost-1_55
#export CPATH=/usr/local/include
export C_INCLUDE_PATH=$CPATH
export CPLUS_INCLUDE_PATH=$CPATH
export LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH=$LIBRARY_PATH
#export BOOST_ROOT=/usr/local
#export BOOST_LIBRARYDIR=$LIBRARY_PATH

if [ -e ~/.bashrc ] ; then
    source ~/.bashrc
fi
# Tell gcc about our other library/header locations
# export CFLAGS='-O2' CXXFLAGS='-O2'

