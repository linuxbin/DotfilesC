# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# 🕌 Islamic welcome message
echo -e "\n\033[1;32m🕋 Welcome to your Islamic Linux environment 🕌\033[0m"

# Custom Prompt with 🕋 Kaaba icon and newline structure
PS1='\[\033[0;32m\]┌──(\[\033[01;31m\]🕋 \u@\h\[\033[0;32m\])-[\[\033[01;32m\]\w\[\033[0;32m\]]\n└─\$\[\033[00m\] '

# LS colors: purple for directories
eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
export LS_COLORS="$LS_COLORS:di=1;35"

# Default PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin

# History settings
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

# Chroot name
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias em='emacs -nw'
alias dd='dd status=progress'
alias _='sudo'

# Bash aliases file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
