# ~/.bashrc

# Show Islamic welcome message (only for interactive shells)
if [[ $- == *i* ]]; then
  echo -e "\n\033[1;32m🕋 Welcome to your Islamic Linux environment 🕌\033[0m"
fi

# Prompt: clean two-line prompt with icons and purple theme
PS1='┌──(\[\033[01;35m\]\u@\h\[\033[00m\])-[\[\033[01;32m\]\w\[\033[00m\]]\n└─\$ '

# Aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# PATH
export PATH="$PATH:/usr/local/bin"

# Source global bashrc if it exists
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# LS_COLORS directory in purple
eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
export LS_COLORS="$LS_COLORS:di=1;35"
