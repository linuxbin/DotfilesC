# .bashrc

# Prompt setting (change blue to purple)
PS1='\[\033[01;35m\]\u@\h \[\033[00m\]\[\033[01;35m\]\w \$\[\033[00m\] '

# Example aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# Exporting custom PATH additions
export PATH=$PATH:/usr/local/bin

# Source global definitions if available
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Set directory color to bold purple (di=1;35)
eval "$(dircolors -b)"
export LS_COLORS="$LS_COLORS:di=1;35"
