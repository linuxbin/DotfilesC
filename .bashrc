# ~/.bashrc

# Show Islamic welcome message (only once per interactive shell)
if [ "$PS1" ]; then
  echo -e "\n\e[1;32m🕋 Welcome to your Islamic Linux environment 🕌\e[0m"
fi

# Prompt on a new line with purple color and consistent layout
PS1='┌──(\[\033[01;35m\]\u@\h\[\033[00m\])-[\[\033[01;32m\]\w\[\033[00m\]]\n└─\$ '

# Aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# PATH
export PATH=$PATH:/usr/local/bin

# Source global settings if they exist
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# LS_COLORS directory in purple
eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
export LS_COLORS="$LS_COLORS:di=1;35"
