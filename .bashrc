# ~/.bashrc

# Show welcome message once at shell start
if [ "$PS1" ]; then
    echo -e "\e[1;32m🕋 Welcome to your Islamic Linux environment 🕌\e[0m"
fi

# Prompt: separate line, consistent styling
PS1='┌──(\[\033[1;35m\]\u@\h\[\033[00m\])- [\w]\n└─\$ '

# Aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# Extend PATH
export PATH=$PATH:/usr/local/bin

# Global bashrc
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Directory color tweak
eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
export LS_COLORS="$LS_COLORS:di=1;35"
