source ~/.aliases

# does this do anything without oh my zsh?
DISABLE_AUTO_TITLE="true"
AUTO_TITLE="false"

#plugins=(git virtualenv django python brew fabric heroku tmux thefuck)

#export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/homebrew/bin:/Users/bfriedland/bin:/Users/bfriedland/Library/Python/3.6/bin"

export EDITOR='vim'


# whats this for?
# export LC_ALL="en_US.UTF-8"

# go!
# export GOPATH="$HOME/Projects/go"
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:/usr/local/opt/go/libexec/bin

# virtualenvwrapper
#jexport WORKON_HOME=~/virtualenvs
#jmkdir -p $WORKON_HOME
#jsource /usr/local/bin/virtualenvwrapper.sh

# fzf!
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf should respect .gitignore
#export FZF_DEFAULT_COMMAND='ag -g ""'

# any additional machine-specific zshrc
#source ~/.zshrc-local




# Source file, if it exists
# function try-source() {
#   if [ -f $1 ]; then
#     source $1;
#   fi
# }
# 
source ~/antigen.zsh



# HISTFILE=~/.histfile
# HISTSIZE=100000
# SAVEHIST=10000
# 
#jsetopt appendhistory autocd beep extendedglob nomatch
#jbindkey -v
#jzstyle :compinstall filename '~/.zshrc'
#jautoload -Uz compinit
#jcompinit

# Detect OS
#jUNAME=`uname`
#jCURRENT_OS='Linux'
#jDISTRO=''

#jif [[ $UNAME == 'Darwin' ]]; then
#j    CURRENT_OS='OS X'
#jelse
#j    # Must be Linux, determine distro
#j    # Work in progress, so far CentOS is the only Linux distro I have needed to
#j    # determine
#j    if [[ -f /etc/redhat-release ]]; then
#j        # CentOS or Redhat?
#j        if grep -q "CentOS" /etc/redhat-release; then
#j            DISTRO='CentOS'
#j        else
#j            DISTRO='RHEL'
#j        fi
#j    fi
#jfi

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle thefuck

antigen theme robbyrussell
antigen apply


# plugins=(fasd)
# 
# # for fasd
# #
# 
# alias a='fasd -a'        # any
# alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
# alias sd='fasd -sid'     # interactive directory selection
# alias sf='fasd -sif'     # interactive file selection
# alias z='fasd_cd -d'     # cd, same functionality as j in autojump
# alias zz='fasd_cd -d -i' # cd with interactive selection


# Use ag instead of the default find command for listing candidates.
# - The first argument to the function is the base path to start traversal
# - Note that ag only lists files not directories
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  ag -g "" "$1"
}

# activate theme
antigen theme https://gist.github.com/sethmcl/5567c8519760c8e7b5d2 agnoster

# vim key bindings
bindkey -v

# antigen apply
# export PATH="/usr/local/sbin:$PATH"

# vi mode is tits
set -o vi
