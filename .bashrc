# ~/.bashrc

# Show Islamic welcome message (only once per interactive shell)
if [ "$PS1" ]; then
    echo -e "\n\033[1;32m🕋 Welcome to your Islamic Linux environment 🕌\033[0m"
fi

# Define clean prompt on a new line
PS1='┌──(\[\033[1;35m\]\u@\h\[\033[00m\])-[\w]\n└─\$ '

# Aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# Extend PATH
export PATH=$PATH:/usr/local/bin

# Source global settings if exist
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# LS_COLORS directory in purple
eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
export LS_COLORS="$LS_COLORS:di=1;35"
