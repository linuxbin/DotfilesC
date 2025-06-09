# .bashrc

# Prompt setting with inline welcome message and purple color
PS1='\[\033[1;32m\]🕋 Welcome to your Islamic Linux environment 🕌 \[\033[01;35m\]\u@\h:\w \$\[\033[00m\] '

# Aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# Extend PATH
export PATH=$PATH:/usr/local/bin

# Source global bashrc if it exists
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Set purple for directories
eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
export LS_COLORS="$LS_COLORS:di=1;35"

