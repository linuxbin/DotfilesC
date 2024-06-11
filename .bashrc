# .bashrc

# Prompt setting (change blue to purple)
PS1='\[\033[01;35m\]\u@\h \[\033[00m\]\[\033[01;35m\]\w \$\[\033[00m\]'

# Other existing configurations...

# Example of other configurations that might be present
# Setting aliases
alias ll='ls -la'
alias grep='grep --color=auto'

# Exporting environment variables
export PATH=$PATH:/usr/local/bin

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

