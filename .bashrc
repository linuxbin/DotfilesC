# .bashrc

# Islamic terminal prompt with purple color
PS1='\[\033[01;35m\]🕋 \u@\h:\w \$\[\033[00m\] '

# Welcome message (only for interactive shells)
if [ "$PS1" ]; then
  echo -e "\e[1;32m🕋 Welcome to your Islamic Linux environment 🕌\e[0m"
fi

# Useful aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# Extend PATH
export PATH=$PATH:/usr/local/bin

# Source global bashrc if it exists
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Set directory colors (purple directories)
eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
LS_COLORS="$LS_COLORS:di=1;35"
export LS_COLORS


