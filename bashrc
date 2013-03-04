# .bashrc

# User specific aliases and functions
command_exists () 
{
  command -v $1 &> /dev/null;
}

export JAVA_HOME=/usr/lib/jvm/java-6-sun
export PATH=$PATH:/scratch/duncang/tools/bin:/scratch/duncang/tools/go/bin
export GIT_TEMPLATE_DIR=~/.git_template/
export ANT_HOME=/scratch/duncang/tools/apache-ant-1.8.4/
export IDEA_PROPERTIES=/scratch/duncang/tools/idea-IU-117.798/bin/idea.properties
export GOROOT=/scratch/duncang/tools/go/
export GOOS=linux
export GOARCH=386

alias grep='grep --color=auto'
alias ls='ls --color'
alias tomcat='cd /scratch/duncang/tools/tomcat'
alias jgrep='grep -ir --include=*.{java,js,css,xml,as,jsp,jspf}'
alias ggrep='grep -ir --exclude-dir=.svn,.git'
alias js="java -cp /scratch/duncang/tools/rhino/js.jar:/scratch/duncang/tools/rhino/jline.jar jline.ConsoleRunner org.mozilla.javascript.tools.shell.Main -opt -1"
alias u="git pull upstream develop"
alias s="git status"
alias bp='mplayer ~/Downloads/beep-6.wav >/dev/null 2>&1'
alias fb='fbcli --user duncang@we7.com --url we7.fogbugz.com --password M4ng1£Wurz1e'
alias rt='restartTomcat; restartTomcat6'
alias rtd='restartTomcatDebug; restartTomcat6Debug'
alias rebuildTestDatabase='ant rebuild-databases -Dconfig=test'
alias diff='meld'
alias ack='ack-grep'
alias vi='vim'
if command_exists vim.gnome; then
  alias vim='vim.gnome'
fi
alias blatUpstream='git remote set-url --push upstream "pushing to this repo disabled"'

# directory shortcuts
alias ws='cd /scratch/duncang/tools/WorkSpace'
alias tools='cd /scratch/duncang/tools'
alias logs='cd /scratch2/duncang/logs'

export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

export EDITOR=/usr/bin/vim.gnome

export ANT_OPTS=-XX:MaxPermSize=256m

ulimit -n 10000

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

. /etc/bash_completion
