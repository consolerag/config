

HISTFILE=/home/blake/.hist
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify correctall
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/blake/.zshrc'

autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
autoload -U colors && colors


source ~/.antigen/antigen.zsh
antigen-use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle olivierverdier/zsh-git-prompt

antigen apply
# End of lines added by compinstall
# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

x=$HOSTNAME
#x=$
echo "   "
export PATH=$PATH:$HOME/.rvm/bin
export PS1="
       " 
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/bin/skype
export PATH=$PATH:/home/blake/.gem/ruby/2.3.0/bin
alias cpc='xclip -sel clip <'
alias disk='df -h | grep -e /dev/sda6 -e Filesystem'
alias ek='emacs -nw'
alias ls='ls --color=auto'
alias h5bp='git clone https://github.com/leemunroe/motherplate.git'
alias fullcalendar='bower install fullcalendar'
#export PATH=$PATH:/usr/local/bin
#export PATH=$PATH:/usr/local/bin
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $(tty) == /dev/tty1 ]]; then
    exec startx
fi
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.


echo -e '\033[?17;0;127c'
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
[[ -s /home/blake/.rvm/scripts/rvm ]] && source /home/blake/.rvm/scripts/rvm

cd ~/Desktop


